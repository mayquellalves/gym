declare namespace xf = "http://www.netservicos.com.br/netarchitecture/transformation/TransformJsonToXmlXQuery/";
declare namespace jxc = "http://www.netservicos.com.br/netarchitecture/xpath-functions/JsonXmlConverterV1";

declare function xf:json2xml($jsonString as xs:string)
    as element(*) {
       fn-bea:inlinedXML(substring-before(substring-after(jxc:json2xml($jsonString),'<JSON>'),'</JSON>'))
};

declare variable $jsonString as xs:string external;

xf:json2xml($jsonString)
