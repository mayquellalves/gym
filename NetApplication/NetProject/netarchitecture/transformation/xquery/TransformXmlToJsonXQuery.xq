declare namespace xf = "http://www.netservicos.com.br/netarchitecture/transformation/TransformXmlToJsonXQuery/";
declare namespace jxc = "http://www.netservicos.com.br/netarchitecture/xpath-functions/JsonXmlConverterV1";

declare function xf:xml2json($xmlString as xs:string)
    as xs:string {
        jxc:xml2json(concat('<JSON>', $xmlString,'</JSON>'))
};

declare variable $xmlString as xs:string external;

xf:xml2json($xmlString)
