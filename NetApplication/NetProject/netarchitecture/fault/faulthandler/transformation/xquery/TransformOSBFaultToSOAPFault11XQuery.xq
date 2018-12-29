(:: pragma bea:global-element-parameter parameter="$errorInfo" element="errorinfo:ErrorInfo" location="../../../../../canonicalmodel/nid/v1/netarchitecture/fault/ErrorInfo.xsd" ::)
(:: pragma  type="anyType" ::)

declare namespace xf = "http://www.netservicos.com.br/netarchitecture/fault/transformation/TransformarESBFaultEmSOAPFault11XQuery/";
declare namespace errorinfo = "http://www.netservicos.com.br/canonicalmodel/nid/v1/netarchitecture/fault/ErrorInfo";
declare namespace soap-env-11 = "http://schemas.xmlsoap.org/soap/envelope/";
declare namespace con = "http://www.bea.com/wli/sb/context";

declare function TransformarESBFaultEmSOAPFault11XQuery(
	$fault as element(*))
    as element(*) {
        <soap-env-11:Fault>
            <faultcode>{ data($fault/con:errorCode) }</faultcode>
            <faultstring>{ data($fault/con:reason) }</faultstring>
            <faultactor>{ data(($fault//errorinfo:AccessResourceName)[1]) }</faultactor>
	         <detail>
	         { $fault/con:details/@* , $fault/con:details/node() }
			</detail>
        </soap-env-11:Fault>        
};

declare variable $fault as element(*) external;

TransformarESBFaultEmSOAPFault11XQuery($fault)