declare namespace xf = "http://www.netservicos.com.br/netarchitecture/transformation/TransformXmlToJsonXQuery/";
declare namespace jxc = "http://www.netservicos.com.br/netarchitecture/xpath-functions/JsonXmlConverterV1";

declare function xf:xml2jsonp($xmlString as xs:string, $functionName as xs:string)
    as xs:string {
        concat($functionName,'(',jxc:xml2json(concat('<JSON>',$xmlString,'</JSON>')),')')
};

declare variable $xmlString as xs:string external;
declare variable $functionName as xs:string external;

xf:xml2jsonp($xmlString, $functionName)