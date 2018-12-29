declare namespace xf = "http://www.netservicos.com.br/netarchitecture/transformation/TransformJsonToXmlXQuery/";
declare namespace jxc = "http://www.netservicos.com.br/netarchitecture/xpath-functions/JsonXmlConverterV1";

declare function xf:jsonp2xml($jsonpString as xs:string)
    as element(*) {
       fn-bea:inlinedXML(substring-before(substring-after(jxc:json2xml(substring-after(substring-before($jsonpString,')'),'(')),'<JSON>'),'</JSON>'))
};

declare variable $jsonpString as xs:string external;

xf:jsonp2xml($jsonpString)
