xquery version "1.0" encoding "Cp1252";
(:: pragma  parameter="$fault" type="xs:anyType" ::)
(:: pragma  type="xs:anyType" ::)

declare namespace xf = "http://tempuri.org/netarchitecture/common/transformation/xquery/TransformOSBFaultToSOAPFault11AmdocsXQuery/";
declare namespace errorinfo = "http://www.netservicos.com.br/canonicalmodel/nid/v1/netarchitecture/fault/ErrorInfo";
declare namespace soap-env-11 = "http://schemas.xmlsoap.org/soap/envelope/";
declare namespace con = "http://www.bea.com/wli/sb/context";
declare namespace res = "http://www.netservicos.com.br/canonicalmodel/nid/v1/netarchitecture/fault/RuntimeFault";

declare function xf:TransformOSBFaultToSOAPFault11AmdocsXQuery($fault as element(*))
	as element(*) {
        <soap-env-11:Fault>
            <faultcode>{ data($fault/con:errorCode) }</faultcode>
            <faultstring>{ data($fault/con:reason) }</faultstring>
            <faultactor>{ data(($fault//errorinfo:AccessResourceName)[1]) }</faultactor>
	         <detail>
	         <res:RuntimeFault>
		   		{ ($fault//errorinfo:ErrorInfo)[1] }
 		   	 </res:RuntimeFault>
			</detail>
        </soap-env-11:Fault>   
};

declare variable $fault as element(*) external;

xf:TransformOSBFaultToSOAPFault11AmdocsXQuery($fault)
