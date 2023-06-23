import module namespace m='http://www.tei-c.org/pm/models/prohd/fo' at '/db/apps/ProHD/transform/prohd-fo.xql';

declare variable $xml external;

declare variable $parameters external;

let $options := map {
    "styles": ["transform/prohd.css"],
    "collection": "/db/apps/ProHD/transform",
    "parameters": if (exists($parameters)) then $parameters else map {}
}
return m:transform($options, $xml)