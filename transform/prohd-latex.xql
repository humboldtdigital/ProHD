(:~

    Transformation module generated from TEI ODD extensions for processing models.
    ODD: /db/apps/ProHD/resources/odd/prohd.odd
 :)
xquery version "3.1";

module namespace model="http://www.tei-c.org/pm/models/prohd/latex";

declare default element namespace "http://www.tei-c.org/ns/1.0";

declare namespace xhtml='http://www.w3.org/1999/xhtml';

declare namespace xi='http://www.w3.org/2001/XInclude';

declare namespace pb='http://teipublisher.com/1.0';

import module namespace css="http://www.tei-c.org/tei-simple/xquery/css";

import module namespace latex="http://www.tei-c.org/tei-simple/xquery/functions/latex";

(: generated template function for element spec: teiHeader :)
declare %private function model:template-teiHeader($config as map(*), $node as node()*, $params as map(*)) {
    ``[\def\volume{`{string-join($config?apply-children($config, $node, $params?content))}`}]``
};
(: generated template function for element spec: teiHeader :)
declare %private function model:template-teiHeader4($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><div>
  <div>{$config?apply-children($config, $node, $params?profileDesc)}</div>
  <div>{$config?apply-children($config, $node, $params?titleStmt)}{$config?apply-children($config, $node, $params?editionStmt)}{$config?apply-children($config, $node, $params?publicationStmt)}</div>
  <div>{$config?apply-children($config, $node, $params?sourceDesc)}</div>
</div></t>/*
};
(: generated template function for element spec: pb :)
declare %private function model:template-pb($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><pb-facs-link facs="{$config?apply-children($config, $node, $params?url)}" emit="transcription"/></t>/*
};
(: generated template function for element spec: hi :)
declare %private function model:template-hi2($config as map(*), $node as node()*, $params as map(*)) {
    ``[`{string-join($config?apply-children($config, $node, $params?editor))}`]``
};
(: generated template function for element spec: seg :)
declare %private function model:template-seg($config as map(*), $node as node()*, $params as map(*)) {
    ``[`{string-join($config?apply-children($config, $node, $params?orig))}`]``
};
(: generated template function for element spec: seg :)
declare %private function model:template-seg2($config as map(*), $node as node()*, $params as map(*)) {
    ``[`{string-join($config?apply-children($config, $node, $params?editor))}``{string-join($config?apply-children($config, $node, $params?note))}`]``
};
(: generated template function for element spec: profileDesc :)
declare %private function model:template-profileDesc2($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><div>
  <h3><pb-i18n key="document.creation"/></h3>
    <p><pb-i18n key="document.author"/> {$config?apply-children($config, $node, $params?author1)}</p>
  	<p><pb-i18n key="document.author"/> {$config?apply-children($config, $node, $params?author2)}</p>
    <p><pb-i18n key="document.place"/> {$config?apply-children($config, $node, $params?place)}</p>
    <p><pb-i18n key="document.date"/> {$config?apply-children($config, $node, $params?date)}</p>
</div></t>/*
};
(: generated template function for element spec: profileDesc :)
declare %private function model:template-profileDesc3($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><div>
  <h3><pb-i18n key="document.creation"/></h3>
    <p><pb-i18n key="document.author"/> {$config?apply-children($config, $node, $params?author1)}</p>
    <p><pb-i18n key="document.place"/> {$config?apply-children($config, $node, $params?place)}</p>
    <p><pb-i18n key="document.date"/> {$config?apply-children($config, $node, $params?date)}</p>
</div></t>/*
};
(: generated template function for element spec: profileDesc :)
declare %private function model:template-profileDesc4($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><div>
  <h3><pb-i18n key="document.creation"/></h3>
    <p><pb-i18n key="document.sender"/> {$config?apply-children($config, $node, $params?sender)}</p>
    <p><pb-i18n key="document.place"/> {$config?apply-children($config, $node, $params?placeSent)}</p>
    <p><pb-i18n key="document.date"/> {$config?apply-children($config, $node, $params?dateSent)}</p>
   	<p><pb-i18n key="document.receiver"/> {$config?apply-children($config, $node, $params?receiver)}</p>
</div></t>/*
};
(: generated template function for element spec: profileDesc :)
declare %private function model:template-profileDesc5($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><div>
  <h3><pb-i18n key="document.creation"/></h3>
    <p><pb-i18n key="document.author"/> {$config?apply-children($config, $node, $params?author1)}</p>
  	<p><pb-i18n key="document.author"/> {$config?apply-children($config, $node, $params?author2)}</p>
    <p><pb-i18n key="document.place"/> {$config?apply-children($config, $node, $params?place)}</p>
    <p><pb-i18n key="document.date"/> {$config?apply-children($config, $node, $params?date)}</p>
</div></t>/*
};
(: generated template function for element spec: profileDesc :)
declare %private function model:template-profileDesc6($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><div>
  <h3><pb-i18n key="document.creation"/></h3>
    <p><pb-i18n key="document.author"/> {$config?apply-children($config, $node, $params?author1)}</p>
    <p><pb-i18n key="document.place"/> {$config?apply-children($config, $node, $params?place)}</p>
    <p><pb-i18n key="document.date"/> {$config?apply-children($config, $node, $params?date)}</p>
</div></t>/*
};
(: generated template function for element spec: publicationStmt :)
declare %private function model:template-publicationStmt($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><p>{$config?apply-children($config, $node, $params?licence)}</p></t>/*
};
(: generated template function for element spec: bibl :)
declare %private function model:template-bibl2($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><li>{$config?apply-children($config, $node, $params?content)}</li></t>/*
};
(: generated template function for element spec: date :)
declare %private function model:template-date($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><pb-i18n key="document.unknown"/></t>/*
};
(: generated template function for element spec: titleStmt :)
declare %private function model:template-titleStmt4($config as map(*), $node as node()*, $params as map(*)) {
    ``[`{string-join($config?apply-children($config, $node, $params?creator))}``{string-join($config?apply-children($config, $node, $params?separator))}``{string-join($config?apply-children($config, $node, $params?sender))}`]``
};
(: generated template function for element spec: titleStmt :)
declare %private function model:template-titleStmt8($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><div>
  <h3><pb-i18n key="document.edition"/></h3>
  <p><pb-i18n key="document.editor"/>{$config?apply-children($config, $node, $params?forename1)}{$config?apply-children($config, $node, $params?content)}{$config?apply-children($config, $node, $params?surname1)}{$config?apply-children($config, $node, $params?content)}<pb-i18n key="document.and"/>{$config?apply-children($config, $node, $params?content)}{$config?apply-children($config, $node, $params?forename2)}{$config?apply-children($config, $node, $params?content)}{$config?apply-children($config, $node, $params?surname2)}</p>
</div></t>/*
};
(: generated template function for element spec: titleStmt :)
declare %private function model:template-titleStmt9($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><div>
  <h3><pb-i18n key="document.edition"/></h3>
  <p><pb-i18n key="document.editor"/>{$config?apply-children($config, $node, $params?forename1)}{$config?apply-children($config, $node, $params?content)}{$config?apply-children($config, $node, $params?surname1)}</p>
</div></t>/*
};
(: generated template function for element spec: persName :)
declare %private function model:template-persName($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><pb-i18n key="document.unknown"/></t>/*
};
(: generated template function for element spec: app :)
declare %private function model:template-app($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><pb-popover persistent="{$config?apply-children($config, $node, $params?persistent)}">{$config?apply-children($config, $node, $params?content)}<span slot="alternate">{$config?apply-children($config, $node, $params?alternate)}</span></pb-popover></t>/*
};
(: generated template function for element spec: sourceDesc :)
declare %private function model:template-sourceDesc($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><div>
  <h3><pb-i18n key="document.source"/></h3>
  <p>{$config?apply-children($config, $node, $params?institution)}</p>
  <p>{$config?apply-children($config, $node, $params?repository)}</p>
  <p>{$config?apply-children($config, $node, $params?collection)}</p>
  <p>{$config?apply-children($config, $node, $params?shelfmark)}</p>
  <p>{$config?apply-children($config, $node, $params?uri)}</p>
  <p>{$config?apply-children($config, $node, $params?msName)}</p>
  <p>{$config?apply-children($config, $node, $params?physDesc)}</p>
</div></t>/*
};
(: generated template function for element spec: msDesc :)
declare %private function model:template-msDesc($config as map(*), $node as node()*, $params as map(*)) {
    ``[`{string-join($config?apply-children($config, $node, $params?institution))}`
`{string-join($config?apply-children($config, $node, $params?repository))}`
`{string-join($config?apply-children($config, $node, $params?collection))}`
`{string-join($config?apply-children($config, $node, $params?shelfmark))}`
`{string-join($config?apply-children($config, $node, $params?uri))}`
`{string-join($config?apply-children($config, $node, $params?images))}`
`{string-join($config?apply-children($config, $node, $params?catalogue))}`
`{string-join($config?apply-children($config, $node, $params?msName))}`
`{string-join($config?apply-children($config, $node, $params?desc))}`]``
};
(: generated template function for element spec: person :)
declare %private function model:template-person2($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><li>{$config?apply-children($config, $node, $params?content)}</li></t>/*
};
(: generated template function for element spec: place :)
declare %private function model:template-place($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><li>{$config?apply-children($config, $node, $params?content)}</li></t>/*
};
(: generated template function for element spec: placeName :)
declare %private function model:template-placeName($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><pb-i18n key="document.unknown"/></t>/*
};
(: generated template function for element spec: editionStmt :)
declare %private function model:template-editionStmt($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><p>{$config?apply-children($config, $node, $params?editionStmt)}</p></t>/*
};
(:~

    Main entry point for the transformation.
    
 :)
declare function model:transform($options as map(*), $input as node()*) {
        
    let $config :=
        map:merge(($options,
            map {
                "output": ["latex"],
                "odd": "/db/apps/ProHD/resources/odd/prohd.odd",
                "apply": model:apply#2,
                "apply-children": model:apply-children#3
            }
        ))
    let $config := latex:init($config, $input)
    
    return (
        
        let $output := model:apply($config, $input)
        return
            latex:finish($config, $output)
    )
};

declare function model:apply($config as map(*), $input as node()*) {
        let $parameters := 
        if (exists($config?parameters)) then $config?parameters else map {}
        let $mode := 
        if (exists($config?mode)) then $config?mode else ()
        let $trackIds := 
        $parameters?track-ids
        let $get := 
        model:source($parameters, ?)
    return
    $input !         (
            let $node := 
                .
            return
                            typeswitch(.)
                    case element(castItem) return
                        (: Insert item, rendered as described in parent list rendition. :)
                        latex:listItem($config, ., ("tei-castItem", css:map-rend-to-class(.)), ., ())
                    case element(item) return
                        latex:listItem($config, ., ("tei-item", css:map-rend-to-class(.)), ., ())
                    case element(figure) return
                        if (head or @rendition='simple:display') then
                            latex:block($config, ., ("tei-figure1", css:map-rend-to-class(.)), .)
                        else
                            latex:inline($config, ., ("tei-figure2", css:map-rend-to-class(.)), .)
                    case element(teiHeader) return
                        let $params := 
                            map {
                                "content": (fileDesc/titleStmt/title[not(@type)], profileDesc/correspDesc)
                            }

                                                let $content := 
                            model:template-teiHeader($config, ., $params)
                        return
                                                latex:block(map:merge(($config, map:entry("template", true()))), ., ("tei-teiHeader1", css:map-rend-to-class(.)), $content)
                    case element(supplied) return
                        if (parent::choice) then
                            latex:inline($config, ., ("tei-supplied1", css:map-rend-to-class(.)), .)
                        else
                            if (@reason='damage') then
                                latex:inline($config, ., ("tei-supplied2", css:map-rend-to-class(.)), .)
                            else
                                if (@reason='illegible' or not(@reason)) then
                                    latex:inline($config, ., ("tei-supplied3", css:map-rend-to-class(.)), .)
                                else
                                    if (@reason='omitted') then
                                        latex:inline($config, ., ("tei-supplied4", css:map-rend-to-class(.)), .)
                                    else
                                        latex:inline($config, ., ("tei-supplied5", css:map-rend-to-class(.)), .)
                    case element(milestone) return
                        latex:inline($config, ., ("tei-milestone", css:map-rend-to-class(.)), .)
                    case element(ptr) return
                        if (parent::notatedMusic) then
                            (: No function found for behavior: webcomponent :)
                            $config?apply($config, ./node())
                        else
                            $config?apply($config, ./node())
                    case element(label) return
                        latex:inline($config, ., ("tei-label", css:map-rend-to-class(.)), .)
                    case element(signed) return
                        if (parent::closer and @rend="align(right)") then
                            latex:block($config, ., ("tei-signed1", css:map-rend-to-class(.)), .)
                        else
                            latex:inline($config, ., ("tei-signed2", css:map-rend-to-class(.)), .)
                    case element(pb) return
                        if (@facs) then
                            let $params := 
                                map {
                                    "url": @facs,
                                    "content": .
                                }

                                                        let $content := 
                                model:template-pb($config, ., $params)
                            return
                                                        latex:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-pb1", css:map-rend-to-class(.)), $content)
                        else
                            if (@facs) then
                                (: No function found for behavior: webcomponent :)
                                $config?apply($config, ./node())
                            else
                                if (@n) then
                                    latex:inline($config, ., ("tei-pb4", css:map-rend-to-class(.)), @n)
                                else
                                    $config?apply($config, ./node())
                    case element(pc) return
                        latex:inline($config, ., ("tei-pc", css:map-rend-to-class(.)), .)
                    case element(anchor) return
                        latex:anchor($config, ., ("tei-anchor", css:map-rend-to-class(.)), ., @xml:id)
                    case element(TEI) return
                        latex:document($config, ., ("tei-TEI", css:map-rend-to-class(.)), .)
                    case element(formula) return
                        if (@rendition='simple:display') then
                            latex:block($config, ., ("tei-formula1", css:map-rend-to-class(.)), .)
                        else
                            latex:inline($config, ., ("tei-formula2", css:map-rend-to-class(.)), .)
                    case element(choice) return
                        if ($parameters?mode='norm' and sic and corr) then
                            latex:alternate($config, ., ("tei-choice4", "choice", css:map-rend-to-class(.)), ., corr[1], sic[1])
                        else
                            if (sic and corr) then
                                (
                                    latex:alternate($config, ., ("tei-choice5", "choice", css:map-rend-to-class(.)), ., sic[1], corr[1]),
                                    latex:alternate($config, ., ("tei-choice6", "choice-alternate", css:map-rend-to-class(.)), ., (), corr[1])
                                )

                            else
                                if ($parameters?mode='norm' and abbr and expan) then
                                    latex:alternate($config, ., ("tei-choice7", "choice", css:map-rend-to-class(.)), ., expan[1], abbr[1])
                                else
                                    if (abbr and expan) then
                                        (
                                            latex:alternate($config, ., ("tei-choice8", "choice", css:map-rend-to-class(.)), ., abbr[1], expan[1]),
                                            latex:alternate($config, ., ("tei-choice9", "choice-alternate", css:map-rend-to-class(.)), ., (), abbr[1])
                                        )

                                    else
                                        if ($parameters?mode='norm' and orig and reg) then
                                            latex:alternate($config, ., ("tei-choice10", "choice", css:map-rend-to-class(.)), ., reg[1], orig[1])
                                        else
                                            if (orig and reg) then
                                                (
                                                    latex:alternate($config, ., ("tei-choice11", "choice", css:map-rend-to-class(.)), ., orig[1], reg[1]),
                                                    latex:alternate($config, ., ("tei-choice12", "choice-alternate", css:map-rend-to-class(.)), ., (), orig[1])
                                                )

                                            else
                                                $config?apply($config, ./node())
                    case element(hi) return
                        if (@rendition="#u" and @hand="#unknown") then
                            (
                                latex:inline($config, ., ("tei-hi1", css:map-rend-to-class(.)), .),
                                let $params := 
                                    map {
                                        "editor": "Nota editorial: mano desconocida.",
                                        "content": .
                                    }

                                                                let $content := 
                                    model:template-hi2($config, ., $params)
                                return
                                                                latex:note(map:merge(($config, map:entry("template", true()))), ., ("tei-hi2", css:map-rend-to-class(.)), $content, (), ())
                            )

                        else
                            if (@rendition="#mMM") then
                                latex:inline($config, ., ("tei-hi3", css:map-rend-to-class(.)), .)
                            else
                                if (@rendition="#i") then
                                    latex:inline($config, ., ("tei-hi4", css:map-rend-to-class(.)), .)
                                else
                                    if (@rendition="#b") then
                                        latex:inline($config, ., ("tei-hi5", css:map-rend-to-class(.)), .)
                                    else
                                        if (@rendition="#uu") then
                                            latex:inline($config, ., css:get-rendition(., ("tei-hi6", css:map-rend-to-class(.))), .)
                                        else
                                            if (@rendition="#sup") then
                                                latex:inline($config, ., css:get-rendition(., ("tei-hi7", css:map-rend-to-class(.))), .)
                                            else
                                                if (@rendition="#u") then
                                                    latex:inline($config, ., css:get-rendition(., ("tei-hi8", css:map-rend-to-class(.))), .)
                                                else
                                                    if (not(@rendition or @rend)) then
                                                        latex:inline($config, ., ("tei-hi9", css:map-rend-to-class(.)), .)
                                                    else
                                                        $config?apply($config, ./node())
                    case element(code) return
                        latex:inline($config, ., ("tei-code", css:map-rend-to-class(.)), .)
                    case element(note) return
                        if (@type="editorial") then
                            latex:omit($config, ., ("tei-note1", css:map-rend-to-class(.)), .)
                        else
                            if (parent::org) then
                                latex:block($config, ., ("tei-note2", css:map-rend-to-class(.)), .)
                            else
                                if (parent::person or parent::place) then
                                    latex:inline($config, ., ("tei-note3", css:map-rend-to-class(.)), .)
                                else
                                    if (@place) then
                                        latex:note($config, ., ("tei-note4", css:map-rend-to-class(.)), ., @place, @n)
                                    else
                                        if (parent::div and not(@place)) then
                                            latex:block($config, ., ("tei-note5", css:map-rend-to-class(.)), .)
                                        else
                                            if (not(@place)) then
                                                latex:inline($config, ., ("tei-note6", css:map-rend-to-class(.)), .)
                                            else
                                                $config?apply($config, ./node())
                    case element(dateline) return
                        if (@rend="align(right)") then
                            latex:block($config, ., ("tei-dateline1", css:map-rend-to-class(.)), .)
                        else
                            if (not(@rend)) then
                                latex:block($config, ., ("tei-dateline2", css:map-rend-to-class(.)), .)
                            else
                                $config?apply($config, ./node())
                    case element(back) return
                        latex:block($config, ., ("tei-back", css:map-rend-to-class(.)), .)
                    case element(del) return
                        latex:inline($config, ., ("tei-del", css:map-rend-to-class(.)), .)
                    case element(trailer) return
                        latex:block($config, ., ("tei-trailer", css:map-rend-to-class(.)), .)
                    case element(titlePart) return
                        latex:block($config, ., css:get-rendition(., ("tei-titlePart", css:map-rend-to-class(.))), .)
                    case element(ab) return
                        latex:paragraph($config, ., ("tei-ab", css:map-rend-to-class(.)), .)
                    case element(revisionDesc) return
                        latex:omit($config, ., ("tei-revisionDesc", css:map-rend-to-class(.)), .)
                    case element(am) return
                        latex:inline($config, ., ("tei-am", css:map-rend-to-class(.)), .)
                    case element(subst) return
                        if ($parameters?mode='norm' and del and add) then
                            latex:alternate($config, ., ("tei-subst", "choice", css:map-rend-to-class(.)), ., add[1], del[1])
                        else
                            $config?apply($config, ./node())
                    case element(roleDesc) return
                        latex:block($config, ., ("tei-roleDesc", css:map-rend-to-class(.)), .)
                    case element(orig) return
                        latex:inline($config, ., ("tei-orig", css:map-rend-to-class(.)), .)
                    case element(opener) return
                        latex:block($config, ., ("tei-opener", css:map-rend-to-class(.)), .)
                    case element(speaker) return
                        latex:block($config, ., ("tei-speaker", css:map-rend-to-class(.)), .)
                    case element(imprimatur) return
                        latex:block($config, ., ("tei-imprimatur", css:map-rend-to-class(.)), .)
                    case element(publisher) return
                        if (ancestor::teiHeader) then
                            latex:inline($config, ., ("tei-publisher", css:map-rend-to-class(.)), .)
                        else
                            $config?apply($config, ./node())
                    case element(figDesc) return
                        latex:inline($config, ., ("tei-figDesc", css:map-rend-to-class(.)), .)
                    case element(rs) return
                        latex:alternate($config, ., ("tei-rs", css:map-rend-to-class(.)), ., ., id(substring-after(@ref, '#'), root($parameters?root))/node())
                    case element(foreign) return
                        latex:inline($config, ., ("tei-foreign", css:map-rend-to-class(.)), .)
                    case element(fileDesc) return
                        if ($parameters?mode='commentary') then
                            latex:block($config, ., ("tei-fileDesc1", css:map-rend-to-class(.)), .)
                        else
                            if ($parameters?header='short') then
                                (
                                    latex:link($config, ., ("tei-fileDesc2", "header-short", css:map-rend-to-class(.)), titleStmt, $parameters?doc, map {})
                                )

                            else
                                latex:title($config, ., ("tei-fileDesc3", css:map-rend-to-class(.)), titleStmt)
                    case element(notatedMusic) return
                        latex:figure($config, ., ("tei-notatedMusic", css:map-rend-to-class(.)), ptr, label)
                    case element(seg) return
                        if (@type="comment") then
                            (
                                let $params := 
                                    map {
                                        "orig": orig,
                                        "content": .
                                    }

                                                                let $content := 
                                    model:template-seg($config, ., $params)
                                return
                                                                latex:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-seg1", css:map-rend-to-class(.)), $content),
                                let $params := 
                                    map {
                                        "editor": "Nota editorial: ",
                                        "note": note,
                                        "content": .
                                    }

                                                                let $content := 
                                    model:template-seg2($config, ., $params)
                                return
                                                                latex:note(map:merge(($config, map:entry("template", true()))), ., ("tei-seg2", css:map-rend-to-class(.)), $content, (), ())
                            )

                        else
                            $config?apply($config, ./node())
                    case element(profileDesc) return
                        if ($parameters?header='short') then
                            (
                                latex:block($config, ., ("tei-profileDesc1", "header-short", css:map-rend-to-class(.)), abstract[@xml:lang="es"])
                            )

                        else
                            if ($parameters?mode='commentary' and creation[count(orgName)=2]) then
                                let $params := 
                                    map {
                                        "author1": creation/orgName[1],
                                        "place": creation/placeName,
                                        "receiver": correspDesc/correspAction[@type="received"]/orgName,
                                        "date": creation/date,
                                        "dateSent": correspDesc/correspAction[@type="sent"]/date,
                                        "placeSent": correspDesc/correspAction[@type="sent"]/placeName,
                                        "content": ', ',
                                        "author2": creation/orgName[2],
                                        "sender": correspDesc/correspAction[@type="sent"]/orgName
                                    }

                                                                let $content := 
                                    model:template-profileDesc2($config, ., $params)
                                return
                                                                latex:block(map:merge(($config, map:entry("template", true()))), ., ("tei-profileDesc2", css:map-rend-to-class(.)), $content)
                            else
                                if ($parameters?mode='commentary' and creation[count(orgName)=1]) then
                                    let $params := 
                                        map {
                                            "author1": creation/orgName[1],
                                            "place": creation/placeName,
                                            "date": creation/date,
                                            "content": .
                                        }

                                                                        let $content := 
                                        model:template-profileDesc3($config, ., $params)
                                    return
                                                                        latex:block(map:merge(($config, map:entry("template", true()))), ., ("tei-profileDesc3", css:map-rend-to-class(.)), $content)
                                else
                                    if ($parameters?mode='commentary' and correspDesc) then
                                        let $params := 
                                            map {
                                                "receiver": correspDesc/correspAction[@type="received"]/persName,
                                                "dateSent": correspDesc/correspAction[@type="sent"]/date,
                                                "placeSent": correspDesc/correspAction[@type="sent"]/placeName,
                                                "sender": correspDesc/correspAction[@type="sent"]/persName,
                                                "content": .
                                            }

                                                                                let $content := 
                                            model:template-profileDesc4($config, ., $params)
                                        return
                                                                                latex:block(map:merge(($config, map:entry("template", true()))), ., ("tei-profileDesc4", css:map-rend-to-class(.)), $content)
                                    else
                                        if ($parameters?mode='commentary' and creation[count(persName)=2]) then
                                            let $params := 
                                                map {
                                                    "author1": creation/persName[1],
                                                    "place": creation/placeName,
                                                    "receiver": correspDesc/correspAction[@type="received"]/persName,
                                                    "date": creation/date,
                                                    "dateSent": correspDesc/correspAction[@type="sent"]/date,
                                                    "placeSent": correspDesc/correspAction[@type="sent"]/placeName,
                                                    "content": ', ',
                                                    "author2": creation/persName[2],
                                                    "sender": correspDesc/correspAction[@type="sent"]/persName
                                                }

                                                                                        let $content := 
                                                model:template-profileDesc5($config, ., $params)
                                            return
                                                                                        latex:block(map:merge(($config, map:entry("template", true()))), ., ("tei-profileDesc5", css:map-rend-to-class(.)), $content)
                                        else
                                            if ($parameters?mode='commentary' and creation[count(persName)=1]) then
                                                let $params := 
                                                    map {
                                                        "author1": creation/persName[1],
                                                        "place": creation/placeName,
                                                        "date": creation/date,
                                                        "content": .
                                                    }

                                                                                                let $content := 
                                                    model:template-profileDesc6($config, ., $params)
                                                return
                                                                                                latex:block(map:merge(($config, map:entry("template", true()))), ., ("tei-profileDesc6", css:map-rend-to-class(.)), $content)
                                            else
                                                latex:omit($config, ., ("tei-profileDesc7", css:map-rend-to-class(.)), .)
                    case element(email) return
                        latex:inline($config, ., ("tei-email", css:map-rend-to-class(.)), .)
                    case element(text) return
                        latex:body($config, ., ("tei-text", css:map-rend-to-class(.)), .)
                    case element(floatingText) return
                        latex:block($config, ., ("tei-floatingText", css:map-rend-to-class(.)), .)
                    case element(sp) return
                        latex:block($config, ., ("tei-sp", css:map-rend-to-class(.)), .)
                    case element(abbr) return
                        latex:inline($config, ., ("tei-abbr", css:map-rend-to-class(.)), .)
                    case element(table) return
                        latex:table($config, ., ("tei-table", css:map-rend-to-class(.)), ., map {})
                    case element(cb) return
                        latex:break($config, ., ("tei-cb", css:map-rend-to-class(.)), ., 'column', @n)
                    case element(group) return
                        latex:block($config, ., ("tei-group", css:map-rend-to-class(.)), .)
                    case element(licence) return
                        latex:omit($config, ., ("tei-licence2", css:map-rend-to-class(.)), .)
                    case element(editor) return
                        latex:inline($config, ., ("tei-editor", css:map-rend-to-class(.)), .)
                    case element(c) return
                        latex:inline($config, ., ("tei-c", css:map-rend-to-class(.)), .)
                    case element(listBibl) return
                        if (bibl) then
                            latex:list($config, ., ("tei-listBibl1", css:map-rend-to-class(.)), bibl, ())
                        else
                            latex:block($config, ., ("tei-listBibl2", css:map-rend-to-class(.)), .)
                    case element(address) return
                        latex:block($config, ., ("tei-address", css:map-rend-to-class(.)), .)
                    case element(g) return
                        if ($parameters?mode='norm') then
                            latex:omit($config, ., ("tei-g1", css:map-rend-to-class(.)), .)
                        else
                            if (@ref) then
                                latex:inline($config, ., ("tei-g2", css:map-rend-to-class(.)), .)
                            else
                                if (not(text())) then
                                    latex:glyph($config, ., ("tei-g3", css:map-rend-to-class(.)), .)
                                else
                                    $config?apply($config, ./node())
                    case element(author) return
                        if (ancestor::teiHeader) then
                            latex:block($config, ., ("tei-author1", css:map-rend-to-class(.)), .)
                        else
                            latex:inline($config, ., ("tei-author2", css:map-rend-to-class(.)), .)
                    case element(castList) return
                        if (child::*) then
                            latex:list($config, ., css:get-rendition(., ("tei-castList", css:map-rend-to-class(.))), castItem, ())
                        else
                            $config?apply($config, ./node())
                    case element(l) return
                        latex:block($config, ., css:get-rendition(., ("tei-l", css:map-rend-to-class(.))), .)
                    case element(closer) return
                        latex:block($config, ., ("tei-closer", css:map-rend-to-class(.)), .)
                    case element(rhyme) return
                        latex:inline($config, ., ("tei-rhyme", css:map-rend-to-class(.)), .)
                    case element(list) return
                        if (@rendition) then
                            latex:list($config, ., css:get-rendition(., ("tei-list1", css:map-rend-to-class(.))), item, ())
                        else
                            if (not(@rendition)) then
                                latex:list($config, ., ("tei-list2", css:map-rend-to-class(.)), item, ())
                            else
                                $config?apply($config, ./node())
                    case element(p) return
                        if (parent::physDesc) then
                            latex:paragraph($config, ., ("tei-p1", css:map-rend-to-class(.)), .)
                        else
                            latex:paragraph($config, ., css:get-rendition(., ("tei-p2", css:map-rend-to-class(.))), .)
                    case element(measure) return
                        latex:inline($config, ., ("tei-measure", css:map-rend-to-class(.)), .)
                    case element(q) return
                        if (l) then
                            latex:block($config, ., css:get-rendition(., ("tei-q1", css:map-rend-to-class(.))), .)
                        else
                            if (ancestor::p or ancestor::cell) then
                                latex:inline($config, ., css:get-rendition(., ("tei-q2", css:map-rend-to-class(.))), .)
                            else
                                latex:block($config, ., css:get-rendition(., ("tei-q3", css:map-rend-to-class(.))), .)
                    case element(actor) return
                        latex:inline($config, ., ("tei-actor", css:map-rend-to-class(.)), .)
                    case element(epigraph) return
                        latex:block($config, ., ("tei-epigraph", css:map-rend-to-class(.)), .)
                    case element(s) return
                        latex:inline($config, ., ("tei-s", css:map-rend-to-class(.)), .)
                    case element(docTitle) return
                        latex:block($config, ., css:get-rendition(., ("tei-docTitle", css:map-rend-to-class(.))), .)
                    case element(lb) return
                        if ($parameters?mode='norm') then
                            latex:omit($config, ., ("tei-lb1", css:map-rend-to-class(.)), .)
                        else
                            latex:break($config, ., ("tei-lb2", "lb", css:map-rend-to-class(.)), ., 'line', @n)
                    case element(w) return
                        latex:inline($config, ., ("tei-w", css:map-rend-to-class(.)), .)
                    case element(stage) return
                        latex:block($config, ., ("tei-stage", css:map-rend-to-class(.)), .)
                    case element(titlePage) return
                        latex:block($config, ., css:get-rendition(., ("tei-titlePage", css:map-rend-to-class(.))), .)
                    case element(name) return
                        latex:alternate($config, ., ("tei-name", css:map-rend-to-class(.)), ., ., id(substring-after(@ref, '#'), root($parameters?root))/node())
                    case element(front) return
                        latex:block($config, ., ("tei-front", css:map-rend-to-class(.)), .)
                    case element(lg) return
                        latex:block($config, ., ("tei-lg", css:map-rend-to-class(.)), .)
                    case element(publicationStmt) return
                        if ($parameters?mode='commentary') then
                            let $params := 
                                map {
                                    "licence": availability/licence,
                                    "content": .
                                }

                                                        let $content := 
                                model:template-publicationStmt($config, ., $params)
                            return
                                                        latex:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-publicationStmt", css:map-rend-to-class(.)), $content)
                        else
                            $config?apply($config, ./node())
                    case element(biblScope) return
                        latex:inline($config, ., ("tei-biblScope", css:map-rend-to-class(.)), .)
                    case element(desc) return
                        latex:inline($config, ., ("tei-desc", css:map-rend-to-class(.)), .)
                    case element(role) return
                        latex:block($config, ., ("tei-role", css:map-rend-to-class(.)), .)
                    case element(docEdition) return
                        latex:inline($config, ., ("tei-docEdition", css:map-rend-to-class(.)), .)
                    case element(num) return
                        latex:inline($config, ., ("tei-num", css:map-rend-to-class(.)), .)
                    case element(docImprint) return
                        latex:inline($config, ., ("tei-docImprint", css:map-rend-to-class(.)), .)
                    case element(postscript) return
                        latex:block($config, ., ("tei-postscript", css:map-rend-to-class(.)), .)
                    case element(edition) return
                        if (ancestor::teiHeader) then
                            latex:block($config, ., ("tei-edition", css:map-rend-to-class(.)), .)
                        else
                            $config?apply($config, ./node())
                    case element(cell) return
                        (: Insert table cell. :)
                        latex:cell($config, ., ("tei-cell", css:map-rend-to-class(.)), ., ())
                    case element(relatedItem) return
                        latex:inline($config, ., ("tei-relatedItem", css:map-rend-to-class(.)), .)
                    case element(div) return
                        if (@type='title_page') then
                            latex:block($config, ., ("tei-div1", css:map-rend-to-class(.)), .)
                        else
                            if (parent::body or parent::front or parent::back) then
                                latex:section($config, ., ("tei-div2", css:map-rend-to-class(.)), .)
                            else
                                latex:block($config, ., ("tei-div3", css:map-rend-to-class(.)), .)
                    case element(graphic) return
                        latex:graphic($config, ., ("tei-graphic", css:map-rend-to-class(.)), ., @url, @width, @height, @scale, desc)
                    case element(reg) return
                        latex:inline($config, ., ("tei-reg", css:map-rend-to-class(.)), .)
                    case element(ref) return
                        if (@ana) then
                            latex:inline($config, ., ("tei-ref2", "itinerary", css:map-rend-to-class(.)), .)
                        else
                            if (not(@target)) then
                                latex:inline($config, ., ("tei-ref3", css:map-rend-to-class(.)), .)
                            else
                                if (not(node())) then
                                    latex:link($config, ., ("tei-ref4", css:map-rend-to-class(.)), @target, @target, map {})
                                else
                                    $config?apply($config, ./node())
                    case element(pubPlace) return
                        if (ancestor::teiHeader) then
                            (: Omit if located in teiHeader. :)
                            latex:omit($config, ., ("tei-pubPlace", css:map-rend-to-class(.)), .)
                        else
                            $config?apply($config, ./node())
                    case element(add) return
                        if (@place="superlinear") then
                            latex:inline($config, ., ("tei-add1", css:map-rend-to-class(.)), .)
                        else
                            if (@place="sublinear") then
                                latex:inline($config, ., ("tei-add2", css:map-rend-to-class(.)), .)
                            else
                                latex:inline($config, ., ("tei-add3", css:map-rend-to-class(.)), .)
                    case element(docDate) return
                        latex:inline($config, ., ("tei-docDate", css:map-rend-to-class(.)), .)
                    case element(head) return
                        if ($parameters?header='short') then
                            latex:inline($config, ., ("tei-head1", css:map-rend-to-class(.)), replace(string-join(.//text()[not(parent::ref)]), '^(.*?)[^\w]*$', '$1'))
                        else
                            if (parent::figure) then
                                latex:block($config, ., ("tei-head2", css:map-rend-to-class(.)), .)
                            else
                                if (parent::table) then
                                    latex:block($config, ., ("tei-head3", css:map-rend-to-class(.)), .)
                                else
                                    if (parent::lg) then
                                        latex:block($config, ., ("tei-head4", css:map-rend-to-class(.)), .)
                                    else
                                        if (parent::list) then
                                            latex:block($config, ., ("tei-head5", css:map-rend-to-class(.)), .)
                                        else
                                            if (parent::div) then
                                                latex:block($config, ., ("tei-head6", css:map-rend-to-class(.)), .)
                                            else
                                                latex:block($config, ., ("tei-head7", css:map-rend-to-class(.)), .)
                    case element(ex) return
                        latex:inline($config, ., ("tei-ex", css:map-rend-to-class(.)), .)
                    case element(castGroup) return
                        if (child::*) then
                            (: Insert list. :)
                            latex:list($config, ., ("tei-castGroup", css:map-rend-to-class(.)), castItem|castGroup, ())
                        else
                            $config?apply($config, ./node())
                    case element(time) return
                        latex:inline($config, ., ("tei-time", css:map-rend-to-class(.)), .)
                    case element(bibl) return
                        if ($parameters?mode='commentary' and not(parent::p)) then
                            let $params := 
                                map {
                                    "content": .
                                }

                                                        let $content := 
                                model:template-bibl2($config, ., $params)
                            return
                                                        latex:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-bibl2", css:map-rend-to-class(.)), $content)
                        else
                            if (parent::listBibl) then
                                latex:listItem($config, ., ("tei-bibl3", css:map-rend-to-class(.)), ., ())
                            else
                                $config?apply($config, ./node())
                    case element(salute) return
                        if (parent::closer) then
                            latex:inline($config, ., ("tei-salute1", css:map-rend-to-class(.)), .)
                        else
                            latex:block($config, ., ("tei-salute2", css:map-rend-to-class(.)), .)
                    case element(unclear) return
                        latex:inline($config, ., ("tei-unclear", css:map-rend-to-class(.)), .)
                    case element(argument) return
                        latex:block($config, ., ("tei-argument", css:map-rend-to-class(.)), .)
                    case element(date) return
                        if (ancestor::profileDesc and matches(., 'N/A')) then
                            let $params := 
                                map {
                                    "content": .
                                }

                                                        let $content := 
                                model:template-date($config, ., $params)
                            return
                                                        latex:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-date1", css:map-rend-to-class(.)), $content)
                        else
                            if (text()) then
                                latex:inline($config, ., ("tei-date5", css:map-rend-to-class(.)), .)
                            else
                                $config?apply($config, ./node())
                    case element(title) return
                        if (parent::titleStmt/parent::fileDesc) then
                            (
                                if (@type="main") then
                                    latex:heading($config, ., ("tei-title1", css:map-rend-to-class(.)), ., ())
                                else
                                    (),
                                if (preceding-sibling::title or @type="sub") then
                                    latex:heading($config, ., ("tei-title2", css:map-rend-to-class(.)), ., 3)
                                else
                                    ()
                            )

                        else
                            if (not(@level) and parent::bibl) then
                                latex:inline($config, ., ("tei-title3", css:map-rend-to-class(.)), .)
                            else
                                if (@level='m' or not(@level)) then
                                    (
                                        latex:inline($config, ., ("tei-title4", css:map-rend-to-class(.)), .),
                                        if (ancestor::biblFull) then
                                            latex:text($config, ., ("tei-title5", css:map-rend-to-class(.)), ', ')
                                        else
                                            ()
                                    )

                                else
                                    if (@level='s' or @level='j') then
                                        (
                                            latex:inline($config, ., ("tei-title6", css:map-rend-to-class(.)), .),
                                            if (following-sibling::* and     (  ancestor::biblFull)) then
                                                latex:text($config, ., ("tei-title7", css:map-rend-to-class(.)), ', ')
                                            else
                                                ()
                                        )

                                    else
                                        if (@level='u' or @level='a') then
                                            (
                                                latex:inline($config, ., ("tei-title8", css:map-rend-to-class(.)), .),
                                                if (following-sibling::* and     (    ancestor::biblFull)) then
                                                    latex:text($config, ., ("tei-title9", css:map-rend-to-class(.)), '. ')
                                                else
                                                    ()
                                            )

                                        else
                                            latex:inline($config, ., ("tei-title10", css:map-rend-to-class(.)), .)
                    case element(corr) return
                        if (parent::choice and count(parent::*/*) gt 1) then
                            (: simple inline, if in parent choice. :)
                            latex:inline($config, ., ("tei-corr1", css:map-rend-to-class(.)), .)
                        else
                            latex:inline($config, ., ("tei-corr2", css:map-rend-to-class(.)), .)
                    case element(cit) return
                        if (child::quote and child::bibl) then
                            (: Insert citation :)
                            latex:cit($config, ., ("tei-cit", css:map-rend-to-class(.)), ., ())
                        else
                            $config?apply($config, ./node())
                    case element(titleStmt) return
                        (: No function found for behavior: meta :)
                        $config?apply($config, ./node())
                    case element(sic) return
                        if (parent::choice and count(parent::*/*) gt 1) then
                            latex:inline($config, ., ("tei-sic1", css:map-rend-to-class(.)), .)
                        else
                            latex:inline($config, ., ("tei-sic2", css:map-rend-to-class(.)), .)
                    case element(expan) return
                        latex:inline($config, ., ("tei-expan", css:map-rend-to-class(.)), .)
                    case element(body) return
                        (
                            latex:index($config, ., ("tei-body1", css:map-rend-to-class(.)), ., 'toc'),
                            latex:block($config, ., ("tei-body2", css:map-rend-to-class(.)), .)
                        )

                    case element(spGrp) return
                        latex:block($config, ., ("tei-spGrp", css:map-rend-to-class(.)), .)
                    case element(fw) return
                        latex:omit($config, ., ("tei-fw5", css:map-rend-to-class(.)), .)
                    case element(encodingDesc) return
                        latex:omit($config, ., ("tei-encodingDesc", css:map-rend-to-class(.)), .)
                    case element(addrLine) return
                        latex:block($config, ., ("tei-addrLine", css:map-rend-to-class(.)), .)
                    case element(gap) return
                        if (desc) then
                            latex:inline($config, ., ("tei-gap1", css:map-rend-to-class(.)), .)
                        else
                            if (@quantity) then
                                latex:inline($config, ., ("tei-gap2", css:map-rend-to-class(.)), .)
                            else
                                latex:inline($config, ., ("tei-gap3", css:map-rend-to-class(.)), .)
                    case element(quote) return
                        if (ancestor::p) then
                            (: If it is inside a paragraph then it is inline, otherwise it is block level :)
                            latex:inline($config, ., css:get-rendition(., ("tei-quote1", css:map-rend-to-class(.))), .)
                        else
                            (: If it is inside a paragraph then it is inline, otherwise it is block level :)
                            latex:block($config, ., css:get-rendition(., ("tei-quote2", css:map-rend-to-class(.))), .)
                    case element(row) return
                        if (@role='label') then
                            latex:row($config, ., ("tei-row1", css:map-rend-to-class(.)), .)
                        else
                            (: Insert table row. :)
                            latex:row($config, ., ("tei-row2", css:map-rend-to-class(.)), .)
                    case element(docAuthor) return
                        latex:inline($config, ., ("tei-docAuthor", css:map-rend-to-class(.)), .)
                    case element(byline) return
                        latex:block($config, ., ("tei-byline", css:map-rend-to-class(.)), .)
                    case element(persName) return
                        if (ancestor::profileDesc and matches(., 'N/A')) then
                            let $params := 
                                map {
                                    "content": .
                                }

                                                        let $content := 
                                model:template-persName($config, ., $params)
                            return
                                                        latex:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-persName1", css:map-rend-to-class(.)), $content)
                        else
                            if (ancestor::teiHeader) then
                                latex:inline($config, ., ("tei-persName2", css:map-rend-to-class(.)), .)
                            else
                                if (parent::person) then
                                    latex:inline($config, ., ("tei-persName3", css:map-rend-to-class(.)), .)
                                else
                                    if (ancestor::text) then
                                        latex:inline($config, ., ("tei-persName4", css:map-rend-to-class(.)), .)
                                    else
                                        $config?apply($config, ./node())
                    case element(app) return
                        let $params := 
                            map {
                                "content": lem,
                                "alternate": rdg,
                                "persistent": true(),
                                "name": 'pb-popover'
                            }

                                                let $content := 
                            model:template-app($config, ., $params)
                        return
                                                latex:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-app", css:map-rend-to-class(.)), $content)
                    case element(sourceDesc) return
                        let $params := 
                            map {
                                "institution": msDesc/msIdentifier/institution,
                                "repository": msDesc/msIdentifier/repository,
                                "collection": msDesc/msIdentifier/collection,
                                "shelfmark": msDesc/msIdentifier/idno/idno[@type="shelfmark"],
                                "uri": msDesc/msIdentifier/idno/idno[@type="uri"],
                                "URLImages": msDesc/msIdentifier/idno/idno[@type="URLImages"],
                                "URLCatalogue": msDesc/msIdentifier/idno/idno[@type="URLCatalogue"],
                                "physDesc": msDesc/physDesc/p,
                                "msName": msDesc/msIdentifier/msName,
                                "content": .
                            }

                                                let $content := 
                            model:template-sourceDesc($config, ., $params)
                        return
                                                latex:block(map:merge(($config, map:entry("template", true()))), ., ("tei-sourceDesc", css:map-rend-to-class(.)), $content)
                    case element(msDesc) return
                        let $params := 
                            map {
                                "institution": msIdentifier/institution,
                                "shelfmark": msIdentifier/idno/idno[@type="shelfmark"],
                                "desc": physDesc/p,
                                "collection": msIdentifier/collection,
                                "repository": msIdentifier/repository,
                                "uri": msIdentifier/idno/idno[@type="uri"],
                                "images": msIdentifier/idno/idno[@type="URLImages"],
                                "catalogue": msIdentifier/idno/idno[@type="URLCatalogue"],
                                "msName": msIdentifier/msName,
                                "content": .
                            }

                                                let $content := 
                            model:template-msDesc($config, ., $params)
                        return
                                                latex:block(map:merge(($config, map:entry("template", true()))), ., ("tei-msDesc", css:map-rend-to-class(.)), $content)
                    case element(person) return
                        if (parent::listPerson) then
                            latex:block($config, ., ("tei-person1", css:map-rend-to-class(.)), .)
                        else
                            if ($parameters?mode='commentary') then
                                let $params := 
                                    map {
                                        "content": .
                                    }

                                                                let $content := 
                                    model:template-person2($config, ., $params)
                                return
                                                                latex:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-person2", "person-entry", css:map-rend-to-class(.)), $content)
                            else
                                latex:inline($config, ., ("tei-person3", css:map-rend-to-class(.)), .)
                    case element(place) return
                        if ($parameters?mode='commentary') then
                            let $params := 
                                map {
                                    "content": .
                                }

                                                        let $content := 
                                model:template-place($config, ., $params)
                            return
                                                        latex:block(map:merge(($config, map:entry("template", true()))), ., ("tei-place1", css:map-rend-to-class(.)), $content)
                        else
                            latex:inline($config, ., ("tei-place2", css:map-rend-to-class(.)), .)
                    case element(surname) return
                        latex:inline($config, ., ("tei-surname", css:map-rend-to-class(.)), .)
                    case element(institution) return
                        latex:block($config, ., ("tei-institution", css:map-rend-to-class(.)), .)
                    case element(collection) return
                        latex:block($config, ., ("tei-collection", css:map-rend-to-class(.)), .)
                    case element(repository) return
                        latex:block($config, ., ("tei-repository", css:map-rend-to-class(.)), .)
                    case element(idno) return
                        if (@type="shelfmark") then
                            latex:inline($config, ., ("tei-idno1", css:map-rend-to-class(.)), .)
                        else
                            $config?apply($config, ./node())
                    case element(placeName) return
                        if (ancestor::profileDesc and matches(., 'N/A')) then
                            let $params := 
                                map {
                                    "content": .
                                }

                                                        let $content := 
                                model:template-placeName($config, ., $params)
                            return
                                                        latex:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-placeName1", css:map-rend-to-class(.)), $content)
                        else
                            if (ancestor::teiHeader) then
                                latex:inline($config, ., ("tei-placeName2", css:map-rend-to-class(.)), .)
                            else
                                $config?apply($config, ./node())
                    case element(editionStmt) return
                        if ($parameters?mode='commentary') then
                            let $params := 
                                map {
                                    "editionStmt": p,
                                    "content": .
                                }

                                                        let $content := 
                                model:template-editionStmt($config, ., $params)
                            return
                                                        latex:block(map:merge(($config, map:entry("template", true()))), ., ("tei-editionStmt", css:map-rend-to-class(.)), $content)
                        else
                            $config?apply($config, ./node())
                    case element(space) return
                        if (@quantity) then
                            latex:inline($config, ., ("tei-space", css:map-rend-to-class(.)), @quantity)
                        else
                            $config?apply($config, ./node())
                    case element(metamark) return
                        latex:inline($config, ., ("tei-metamark", css:map-rend-to-class(.)), .)
                    case element(affiliation) return
                        if (parent::person) then
                            latex:block($config, ., ("tei-affiliation", css:map-rend-to-class(.)), .)
                        else
                            $config?apply($config, ./node())
                    case element(occupation) return
                        if (parent::person) then
                            latex:block($config, ., ("tei-occupation", css:map-rend-to-class(.)), .)
                        else
                            $config?apply($config, ./node())
                    case element(org) return
                        if (parent::listOrg) then
                            latex:block($config, ., ("tei-org", css:map-rend-to-class(.)), .)
                        else
                            $config?apply($config, ./node())
                    case element(orgName) return
                        if (parent::org) then
                            latex:block($config, ., ("tei-orgName", css:map-rend-to-class(.)), .)
                        else
                            $config?apply($config, ./node())
                    case element(msName) return
                        latex:inline($config, ., ("tei-msName", css:map-rend-to-class(.)), .)
                    case element() return
                        if (namespace-uri(.) = 'http://www.tei-c.org/ns/1.0') then
                            $config?apply($config, ./node())
                        else
                            .
                    case text() | xs:anyAtomicType return
                        latex:escapeChars(.)
                    default return 
                        $config?apply($config, ./node())

        )

};

declare function model:apply-children($config as map(*), $node as element(), $content as item()*) {
        
    if ($config?template) then
        $content
    else
        $content ! (
            typeswitch(.)
                case element() return
                    if (. is $node) then
                        $config?apply($config, ./node())
                    else
                        $config?apply($config, .)
                default return
                    latex:escapeChars(.)
        )
};

declare function model:source($parameters as map(*), $elem as element()) {
        
    let $id := $elem/@exist:id
    return
        if ($id and $parameters?root) then
            util:node-by-id($parameters?root, $id)
        else
            $elem
};

declare function model:process-annotation($html, $context as node()) {
        
    let $classRegex := analyze-string($html/@class, '\s?annotation-([^\s]+)\s?')
    return
        if ($classRegex//fn:match) then (
            if ($html/@data-type) then
                ()
            else
                attribute data-type { ($classRegex//fn:group)[1]/string() },
            if ($html/@data-annotation) then
                ()
            else
                attribute data-annotation {
                    map:merge($context/@* ! map:entry(node-name(.), ./string()))
                    => serialize(map { "method": "json" })
                }
        ) else
            ()
                    
};

declare function model:map($html, $context as node(), $trackIds as item()?) {
        
    if ($trackIds) then
        for $node in $html
        return
            typeswitch ($node)
                case document-node() | comment() | processing-instruction() return 
                    $node
                case element() return
                    if ($node/@class = ("footnote")) then
                        if (local-name($node) = 'pb-popover') then
                            ()
                        else
                            element { node-name($node) }{
                                $node/@*,
                                $node/*[@class="fn-number"],
                                model:map($node/*[@class="fn-content"], $context, $trackIds)
                            }
                    else
                        element { node-name($node) }{
                            attribute data-tei { util:node-id($context) },
                            $node/@*,
                            model:process-annotation($node, $context),
                            $node/node()
                        }
                default return
                    <pb-anchor data-tei="{ util:node-id($context) }">{$node}</pb-anchor>
    else
        $html
                    
};

