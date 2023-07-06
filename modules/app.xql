xquery version "3.1";

(:
 : Module for app-specific template functions
 :
 : Add your own templating functions here, e.g. if you want to extend the template used for showing
 : the browsing view.
 :)
module namespace app="teipublisher.com/app";

import module namespace templates="http://exist-db.org/xquery/html-templating";
import module namespace config="http://www.tei-c.org/tei-simple/config" at "config.xqm";
import module namespace pages="http://www.tei-c.org/tei-simple/pages" at "../pages.xql";
import module namespace errors = "http://e-editiones.org/roaster/errors";
import module namespace mapping="http://www.tei-c.org/tei-simple/components/map" at "map.xql";
import module namespace nav="http://www.tei-c.org/tei-simple/navigation" at "navigation.xql";
import module namespace pm-config="http://www.tei-c.org/tei-simple/pm-config" at "pm-config.xql";
import module namespace query="http://www.tei-c.org/tei-simple/query" at "../../query.xql";

declare namespace tei="http://www.tei-c.org/ns/1.0";

declare
    %templates:wrap
function app:foo($node as node(), $model as map(*)) {
    <p>Dummy templating function.</p>
};

declare function app:autocomplete($request as map(*)) {
    let $q := request:get-parameter("query", ())
    let $type := request:get-parameter("field", "text")
    let $doc := request:get-parameter("doc", ())
    let $items :=
        if ($q) then
            query:autocomplete($doc, $type, $q)
        else
            ()
    return
        switch ($type) 
            case "page" return 
                $items
            default return 
                array {
                    for $item in $items
                    group by $item
                    return
                        map {
                            "text": $item,
                            "value": $item
                        }
                }
};

declare function app:table-of-contents($request as map(*)) {
    let $doc := xmldb:decode-uri($request?parameters?id)

    let $language := request:get-parameter('language', 'de')


    let $view := head(($request?parameters?view, $config:default-view))
    let $xml := pages:load-xml($view, (), $doc)

    let $toc := if (exists($xml)) then
                app:toc-div(root($xml?data), $xml, $request?parameters?target, $request?parameters?icons, $language)
            else
                ()

    return
        if ($toc) then
            $toc
        else
            error($errors:NOT_FOUND, "Document " || $doc || " not found")
};

declare function app:toc-div($node, $model as map(*), $target as xs:string?,
    $icons as xs:boolean?, $language as xs:string?) {

    let $language := ($language, 'de')[1]

    let $view := $model?config?view
    let $divs := nav:get-subsections($model?config, $node)
    return
        <ul>
        {
            for $div in $divs
            let $heads := nav:get-section-heading($model?config, $div)

            let $headings := $heads/node()

            let $translated :=  mapping:prohd-document-translation($heads, map {"language": $language})

            let $html :=
                if ($translated) then
                    $translated/string()

                else if ($headings/*) then
                    $pm-config:web-transform($headings, map { "mode": "toc", "root": $div }, $model?config?odd)
                else
                    $headings/string()
            let $root := (
                if ($view = "page") then
                    ($div/*[1][self::tei:pb], $div/preceding::tei:pb[1])[1]
                else
                    (),
                $div
            )[1]
            let $parent := if ($view = 'page') then () else nav:is-filler($model?config, $div)
            let $hasDivs := exists(nav:get-subsections($model?config, $div))
            let $nodeId :=  if ($parent) then util:node-id($parent) else util:node-id($root)
            let $xmlId := if ($parent) then $parent/@xml:id else $root/@xml:id
            let $subsect := if ($parent) then attribute hash { util:node-id($root) } else ()
            return
                    <li>
                    {
                        if ($hasDivs) then
                            <pb-collapse>
                                {
                                    if (not($icons)) then
                                        attribute no-icons { "no-icons" }
                                    else
                                        ()
                                }
                                <span slot="collapse-trigger">
                                {
                                    if ($xmlId) then
                                        <pb-link xml-id="{$xmlId}" node-id="{$nodeId}" emit="{$target}" subscribe="{$target}">{$subsect, $html}</pb-link>
                                    else
                                        <pb-link node-id="{$nodeId}" emit="{$target}" subscribe="{$target}">{$subsect, $html}</pb-link>
                                }
                                </span>
                                <span slot="collapse-content">
                                { app:toc-div($div, $model, $target, $icons, $language) }
                                </span>
                            </pb-collapse>
                        else if ($xmlId) then
                            <pb-link xml-id="{$xmlId}" node-id="{$nodeId}" emit="{$target}" subscribe="{$target}">{$subsect, $html}</pb-link>
                        else
                            <pb-link node-id="{$nodeId}" emit="{$target}" subscribe="{$target}">{$subsect, $html}</pb-link>
                    }
                    </li>
        }
        </ul>
};
