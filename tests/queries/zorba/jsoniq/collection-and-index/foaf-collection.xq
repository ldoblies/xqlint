
import module namespace foaf = "http://www.w3.org/TestModules/foaf" at
                                   "foaf_module-no-index.xqlib";

import module namespace ddl = "http://www.zorba-xquery.com/modules/store/static/collections/ddl";
import module namespace dml = "http://www.zorba-xquery.com/modules/store/static/collections/dml";
import module namespace index_ddl = "http://www.zorba-xquery.com/modules/store/static/indexes/ddl";
import module namespace index_dml = "http://www.zorba-xquery.com/modules/store/static/indexes/dml";

declare namespace err = "http://www.w3.org/2005/xqt-errors";

foaf:create-db();

for $x in dml:collection($foaf:network)
return $x
