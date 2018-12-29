(:: pragma  type="anyType" ::)

declare namespace xf = "http://www.netservicos.com.br/netarchitecture/fault/transformation/TransformarESBFaultEmRuntimeFaultXQuery/";
declare namespace ctx = "http://www.bea.com/wli/sb/context";
declare namespace res = "http://www.netservicos.com.br/canonicalmodel/nid/v1/netarchitecture/fault/RuntimeFault";

declare function TransformarESBFaultEmRuntimeFaultXQuery(
	$fault as element(*))
    as element(*) {
		<ctx:fault>
		   <ctx:errorCode>{ data($fault/ctx:errorCode) }</ctx:errorCode>
		   <ctx:reason>{ data($fault/ctx:reason) }</ctx:reason>
		   <ctx:details>
		   <res:RuntimeFault>
		   	{ $fault/ctx:details/@* , $fault/ctx:details/node() }
 		   </res:RuntimeFault>
		   </ctx:details>
		   <ctx:location>
		      {$fault/ctx:location/@* , $fault/ctx:location/node() }
		   </ctx:location>
		</ctx:fault>
			  		
};

declare variable $fault as element(*) external;

TransformarESBFaultEmRuntimeFaultXQuery($fault)