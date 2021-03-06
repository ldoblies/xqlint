
declare namespace opt = "http://www.zorba-xquery.com/options/optimizer";

declare option opt:enable "for-serialization-only";


declare function local:dummy($x as node()) as node()
{
  $x
};


declare function local:parent($n as node()) as node()
{
  $n/..
};


declare function local:foo($n as node()) as node()
{
  for $child in $n/b
  return local:parent($child)
};


variable $d1 := <a><b><c/></b></a>;

variable $d2 := <a><b><c/></b></a>;

local:foo($d1),
local:foo($d2)
