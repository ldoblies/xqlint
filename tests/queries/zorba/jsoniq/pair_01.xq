import module namespace j = "http://www.jsoniq.org/functions";

let $j := j:parse-json('{ "foo": "bar" }')
return (empty(j:value($j, "bar")), j:value($j, "foo"))

