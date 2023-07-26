
xquery version "3.1";

module namespace pm-config="http://www.tei-c.org/tei-simple/pm-config";

import module namespace pm-prohd-web="http://www.tei-c.org/pm/models/prohd/web/module" at "../transform/prohd-web-module.xql";
import module namespace pm-prohd-print="http://www.tei-c.org/pm/models/prohd/print/module" at "../transform/prohd-print-module.xql";
import module namespace pm-prohd-latex="http://www.tei-c.org/pm/models/prohd/latex/module" at "../transform/prohd-latex-module.xql";
import module namespace pm-prohd-epub="http://www.tei-c.org/pm/models/prohd/epub/module" at "../transform/prohd-epub-module.xql";
import module namespace pm-prohd-fo="http://www.tei-c.org/pm/models/prohd/fo/module" at "../transform/prohd-fo-module.xql";
import module namespace pm-docbook-web="http://www.tei-c.org/pm/models/docbook/web/module" at "../transform/docbook-web-module.xql";
import module namespace pm-docbook-print="http://www.tei-c.org/pm/models/docbook/print/module" at "../transform/docbook-print-module.xql";
import module namespace pm-docbook-latex="http://www.tei-c.org/pm/models/docbook/latex/module" at "../transform/docbook-latex-module.xql";
import module namespace pm-docbook-epub="http://www.tei-c.org/pm/models/docbook/epub/module" at "../transform/docbook-epub-module.xql";
import module namespace pm-docbook-fo="http://www.tei-c.org/pm/models/docbook/fo/module" at "../transform/docbook-fo-module.xql";
import module namespace pm-docx-tei="http://www.tei-c.org/pm/models/docx/tei/module" at "../transform/docx-tei-module.xql";

declare variable $pm-config:web-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "prohd.odd" return pm-prohd-web:transform($xml, $parameters)
case "docbook.odd" return pm-docbook-web:transform($xml, $parameters)
    default return pm-prohd-web:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:print-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "prohd.odd" return pm-prohd-print:transform($xml, $parameters)
case "docbook.odd" return pm-docbook-print:transform($xml, $parameters)
    default return pm-prohd-print:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:latex-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "prohd.odd" return pm-prohd-latex:transform($xml, $parameters)
case "docbook.odd" return pm-docbook-latex:transform($xml, $parameters)
    default return pm-prohd-latex:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:epub-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "prohd.odd" return pm-prohd-epub:transform($xml, $parameters)
case "docbook.odd" return pm-docbook-epub:transform($xml, $parameters)
    default return pm-prohd-epub:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:fo-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "prohd.odd" return pm-prohd-fo:transform($xml, $parameters)
case "docbook.odd" return pm-docbook-fo:transform($xml, $parameters)
    default return pm-prohd-fo:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:tei-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "docx.odd" return pm-docx-tei:transform($xml, $parameters)
    default return error(QName("http://www.tei-c.org/tei-simple/pm-config", "error"), "No default ODD found for output mode tei")
            
    
};
            
    