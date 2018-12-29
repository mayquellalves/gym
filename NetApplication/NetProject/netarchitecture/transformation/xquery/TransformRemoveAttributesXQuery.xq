xquery version "1.0" encoding "Cp1252";
(:: pragma  type="xs:anyType" ::)

declare namespace xf = "http://www.netservicos.com.br/netarchitecture/transformation/TransformRemoveAttributes/";

(:: pragma remove os atributos de um node, recursivamente ::)
(:: pragma passar o node e nome do atributo a ser removido, usar '*' caso deseja remover
(:: pragma todos os os atributos ::)
(:: pragma fonte www.xqueryfunctions.com/ ::)
declare function xf:TransformRemoveAttributes 
  ( $nodes as node()* ,
    $names as xs:string* )  as node()* {
       
   for $node in $nodes
   return if ($node instance of element())
          then  element { fn:node-name($node)}
                { $node/@*[fn:not(xf:name-test(fn:name(),$names))],
                  xf:TransformRemoveAttributes ($node/node(), $names)}
          else if ($node instance of document-node())
          then xf:TransformRemoveAttributes ($node/node(), $names)
          else $node
};
  
declare function xf:name-test 
  ( $testname as xs:string? ,
    $names as xs:string* )  as xs:boolean {
       
	$testname = $names
	or
	$names = '*'
	or
	xf:substring-after-if-contains($testname,':') =
	   (for $name in $names
	   return substring-after($name,'*:'))
	or
	substring-before($testname,':') =
	   (for $name in $names[contains(.,':*')]
	   return substring-before($name,':*'))
};

declare function xf:substring-after-if-contains 
  ( $arg as xs:string? ,
    $delim as xs:string )  as xs:string? {
       
   if (contains($arg,$delim))
   then substring-after($arg,$delim)
   else $arg
}; 
 
declare variable $nodes as node()* external;
declare variable $names as xs:string* external;

xf:TransformRemoveAttributes($nodes,$names)


