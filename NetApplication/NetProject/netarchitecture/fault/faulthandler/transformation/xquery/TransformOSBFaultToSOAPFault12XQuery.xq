(:xquery version "1.0" encoding "Cp1252";:)
(:: pragma bea:global-element-parameter parameter="$errorInfo" element="errorinfo:ErrorInfo" location="../../../../../canonicalmodel/nid/v1/netarchitecture/fault/ErrorInfo.xsd" ::)
(:: pragma  type="anyType" ::)

declare namespace xf = "http://www.netservicos.com.br/netarchitecture/fault/transformation/TransformarESBFaultEmSOAPFault12XQuery/";
declare namespace errorinfo = "http://www.netservicos.com.br/canonicalmodel/nid/v1/netarchitecture/fault/ErrorInfo";
declare namespace soap-env-12 = "http://www.w3.org/2003/05/soap-envelope";
declare namespace con = "http://www.bea.com/wli/sb/context";
declare namespace xmlns = "http://www.w3.org/2000/xmlns/";
declare namespace param = "http://www.netservicos.com.br/netarchitecture/xpath-functions/SoapFaultFormatterV1";

declare function TransformarESBFaultEmSOAPFault12XQuery(
	$fault as element(*))
    as element(*) {
    
       <soap-env-12:Fault>
            <soap-env-12:Code>
                <soap-env-12:Value>{data('soap:Receiver')}</soap-env-12:Value>
                <soap-env-12:Subcode>
	               {
	               	param:formatSoapFaultSubCodeValue("<soap:Value xmlns:soap='http://www.w3.org/2003/05/soap-envelope'></soap:Value>", 
	               		string(namespace-uri-from-QName(node-name($fault/con:details/node()[. instance of element()]))),
	               		string(local-name($fault/con:details/node()[. instance of element()])))
	               }
	            </soap-env-12:Subcode>
            </soap-env-12:Code>
            <soap-env-12:Reason>
                <soap-env-12:Text xml:lang="pt">{ data($fault/con:reason) }</soap-env-12:Text>
            </soap-env-12:Reason>
            <soap-env-12:Node>
            	{ data(($fault//errorinfo:AccessResourceName)[1]) }
            </soap-env-12:Node>
	        <soap-env-12:Detail>
	        	{ $fault/con:details/@* , $fault/con:details/node() }
			</soap-env-12:Detail>
        </soap-env-12:Fault>    
        
};

declare variable $fault as element(*) external;

TransformarESBFaultEmSOAPFault12XQuery($fault)