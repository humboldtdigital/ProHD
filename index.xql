xquery version "3.1";

module namespace idx="http://teipublisher.com/index";

declare namespace tei="http://www.tei-c.org/ns/1.0";
declare namespace dbk="http://docbook.org/ns/docbook";

declare variable $idx:app-root :=
    let $rawPath := system:get-module-load-path()
    return
        (: strip the xmldb: part :)
        if (starts-with($rawPath, "xmldb:exist://")) then
            if (starts-with($rawPath, "xmldb:exist://embedded-eXist-server")) then
                substring($rawPath, 36)
            else
                substring($rawPath, 15)
        else
            $rawPath
    ;

(:~
 : Helper function called from collection.xconf to create index fields and facets.
 : This module needs to be loaded before collection.xconf starts indexing documents
 : and therefore should reside in the root of the app.
 :)
declare function idx:get-metadata($root as element(), $field as xs:string) {
    let $header := $root/tei:teiHeader
    return
        switch ($field)
            case "page" return           
                $root/descendant-or-self::tei:pb/@n/string()       
            case "title" return
                string-join((
                    $header//tei:msDesc/tei:head, $header//tei:titleStmt/tei:title[@type = 'main'],
                    $header//tei:titleStmt/tei:title,
                    $root/dbk:info/dbk:title
                ), " - ")
            case "author" return (
                $header//tei:correspDesc/tei:correspAction[@type= 'sent']/tei:persName,
                $header//tei:creation/tei:persName[position()=1],
                $header//tei:creation/tei:orgName,
                $root/dbk:info/dbk:author
            )
            case "institution" return (
                $header//tei:msIdentifier/tei:institution
            )
            case "language" return
                head((
                    $header//tei:langUsage/tei:language/@ident,
                    $root/@xml:lang,
                    $header/@xml:lang
                ))
            case "date" return
                let $d := head((
                $header//tei:profileDesc/tei:creation/tei:date/@when,
                $header//tei:profileDesc/tei:creation/tei:date/@notAfter,
                $header//tei:correspDesc/tei:correspAction[@type='sent']/tei:date/@when,
                $header//tei:correspDesc/tei:correspAction[@type='sent']/tei:date/@notAfter
            ))
                return tokenize($d, '-')
            case "genre" return
                for $i in $header//tei:textClass/tei:catRef[@scheme="#genre"]/@target return substring($i, 2)
            case "subject" return (
                for $i in $header//tei:textClass/tei:catRef[@scheme="#subject"]/@target return substring($i, 2)
            )
            default return
                ()
};

declare function idx:get-genre($header as element()?) {
    for $target in $header//tei:textClass/tei:catRef[@scheme="#genre"]/@target
    let $category := id(substring($target, 2), doc($idx:app-root || "/data/taxonomy.xml"))
    return
        $category/ancestor-or-self::tei:category[parent::tei:category]/tei:catDesc
};

declare function idx:get-subject($header as element()?) {
    for $target in $header//tei:textClass/tei:catRef[@scheme="#subject"]/@target
    let $category := id(substring($target, 2), doc($idx:app-root || "/data/taxonomy.xml"))
    return
        $category/ancestor-or-self::tei:category[parent::tei:category]/tei:catDesc
};
