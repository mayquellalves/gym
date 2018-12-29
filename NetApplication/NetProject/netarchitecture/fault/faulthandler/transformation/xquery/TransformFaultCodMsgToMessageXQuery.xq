(:: pragma  parameter="$fault" type="anyType" ::)
(:: pragma bea:schema-type-parameter parameter="$defaultMessage" type="ns0:MessageType" location="../../../../../canonicalmodel/nid/v1/netarchitecture/common/Message.xsd" ::)
(:: pragma bea:schema-type-return type="ns0:MessageType" location="../../../../../canonicalmodel/nid/v1/netarchitecture/common/Message.xsd" ::)

declare namespace xf = "http://www.netservicos.com.br/netarchitecture/fault/transformation/TransformarFaultCodMsgTratadaEmMessage/";
declare namespace ns0 = "http://www.netservicos.com.br/canonicalmodel/nid/v1/netarchitecture/common/Message";
declare namespace soap-env-11 = "http://schemas.xmlsoap.org/soap/envelope/";
declare namespace soap-env-12 = "http://www.w3.org/2003/05/soap-envelope";
declare namespace config = "http://www.bea.com/wli/sb/stages/transform/config";

declare function xf:TransformarFaultCodMsgTratadaEmMessage($fault as element(*),
    $defaultMessage as element())
    as element() {
        <ns0:Message>
            	{if ($fault//config:ReceivedFaultDetail/node()) then (
	     		   if (matches(data($fault//config:faultcode/node()),"^(OSB|SCA)-[A-Z]{3,20}-[0-9]{4,8}") ) then (
		                <ns0:ID_MSG>{data($fault//config:faultcode)}</ns0:ID_MSG> 
				   ) else if (($fault//config:faultstring/node()
								and matches(fn:data($fault//config:faultstring),"(\{)(OSB|SCA)-[A-Z]{3,20}-[0-9]{4,8}:") ) ) then (
					  	<ns0:ID_MSG>{substring-after(substring-before($fault//config:faultstring,":"),"{")}</ns0:ID_MSG> 
				    ) else if (($fault//config:faultstring/node()
								and matches(fn:data($fault//config:faultstring),"^(OSB|SCA)-[A-Z]{3,20}-[0-9]{4,8}:") ) ) then (
					  	<ns0:ID_MSG>{substring-before($fault//config:faultstring,":")}</ns0:ID_MSG> 					
  					) else (
		  	    		<ns0:ID_MSG>{ data($defaultMessage//ns0:ID_MSG) }</ns0:ID_MSG>  				
		  	    	)
  				) else if ($fault//soap-env-12:Fault/node()) then (
	     		   if ($fault//soap-env-12:Code/soap-env-12:Value/node()
	                     and matches(data($fault//soap-env-12:Code/soap-env-12:Value),"^(OSB|SCA)-[A-Z]{3,20}-[0-9]{4,8}") ) then (
		                <ns0:ID_MSG>{data($fault//soap-env-12:Code/soap-env-12:Value)}</ns0:ID_MSG> 
		           ) else if ($fault//soap-env-12:Code/soap-env-12:Subcode/soap-env-12:Value/node()
	                     		and matches(data($fault//soap-env-12:Code/soap-env-12:Subcode/soap-env-12:Value),"^(OSB|SCA)-[A-Z]{3,20}-[0-9]{4,8}") ) then (
		                <ns0:ID_MSG>{data($fault//soap-env-12:Code/soap-env-12:Subcode/soap-env-12:Value)}</ns0:ID_MSG> 	           
				   ) else if (($fault//soap-env-12:Reason/soap-env-12:Text/node()
								and matches(fn:data($fault//soap-env-12:Reason/soap-env-12:Text),"(\{)(OSB|SCA)-[A-Z]{3,20}-[0-9]{4,8}:") ) ) then (
					  	<ns0:ID_MSG>{substring-after(substring-before($fault//soap-env-12:Reason/soap-env-12:Text,":"),"{")}</ns0:ID_MSG> 
				    ) else if (($fault//soap-env-12:Reason/soap-env-12:Text/node()
								and matches(fn:data($fault//soap-env-12:Reason/soap-env-12:Text),"^(OSB|SCA)-[A-Z]{3,20}-[0-9]{4,8}:") ) ) then (
					  	<ns0:ID_MSG>{substring-before($fault//soap-env-12:Reason/soap-env-12:Text,":")}</ns0:ID_MSG> 					
  					) else (
		  	    		<ns0:ID_MSG>{ data($defaultMessage//ns0:ID_MSG) }</ns0:ID_MSG>  				
  					)
  				) else if ($fault//soap-env-11:Fault/node()) then (
	     		   if (matches(data($fault//faultcode/node()),"^(OSB|SCA)-[A-Z]{3,20}-[0-9]{4,8}") ) then (
		                <ns0:ID_MSG>{data($fault//faultcode)}</ns0:ID_MSG> 
				   ) else if (($fault//faultstring/node()
								and matches(fn:data($fault//faultstring),"(\{)(OSB|SCA)-[A-Z]{3,20}-[0-9]{4,8}:") ) ) then (
					  	<ns0:ID_MSG>{substring-after(substring-before($fault//faultstring,":"),"{")}</ns0:ID_MSG> 
				    ) else if (($fault//faultstring/node()
								and matches(fn:data($fault//faultstring),"^(OSB|SCA)-[A-Z]{3,20}-[0-9]{4,8}:") ) ) then (
					  	<ns0:ID_MSG>{substring-before($fault//faultstring,":")}</ns0:ID_MSG> 					
  					) else (
		  	    		<ns0:ID_MSG>{ data($defaultMessage//ns0:ID_MSG) }</ns0:ID_MSG>  				
		  	    	)
  				) else (
		  	    	<ns0:ID_MSG>{ data($defaultMessage//ns0:ID_MSG) }</ns0:ID_MSG>  				
  				)
				 }
            <ns0:ERROR_NAME/>
     		  {if ($fault//config:faultstring/node() 
								and (    matches(fn:data($fault//config:faultcode),"^(OSB|SCA)-[A-Z]{3,20}-[0-9]{4,8}") 
								      or matches(fn:data($fault//config:faultstring),"(OSB|SCA)-[A-Z]{3,20}-[0-9]{4,8}:"))
								) then (
	                <ns0:DETAIL_MESSAGE>{data($fault//config:faultstring)}</ns0:DETAIL_MESSAGE> 
  				) else if ($fault//soap-env-12:Reason/soap-env-12:Text/node()
								and (
								      matches(data($fault//soap-env-12:Code/soap-env-12:Value),"^(OSB|SCA)-[A-Z]{3,20}-[0-9]{4,8}")
								   or matches(data($fault//soap-env-12:Code/soap-env-12:Subcode/soap-env-12:Value),"^(OSB|SCA)-[A-Z]{3,20}-[0-9]{4,8}")
								   or matches(fn:data($fault//soap-env-12:Reason/soap-env-12:Text),"(OSB|SCA)-[A-Z]{3,20}-[0-9]{4,8}:")								   
								   )
							) then (
	                <ns0:DETAIL_MESSAGE>{data($fault//soap-env-12:Reason/soap-env-12:Text)}</ns0:DETAIL_MESSAGE> 
 				) else if ($fault//faultstring/node()
								and (    matches(data($fault//faultcode/node()),"^(OSB|SCA)-[A-Z]{3,20}-[0-9]{4,8}")
								      or matches(fn:data($fault//faultstring),"(OSB|SCA)-[A-Z]{3,20}-[0-9]{4,8}:") 								      
								    )    
								  ) then (
	                <ns0:DETAIL_MESSAGE>{data($fault//faultstring)}</ns0:DETAIL_MESSAGE> 
  				) else (
		  	    	<ns0:DETAIL_MESSAGE>{ data($defaultMessage//ns0:DETAIL_MESSAGE) }</ns0:DETAIL_MESSAGE>  				
  				)
				 }  				 
				 
     		  {if ($fault//config:faultstring/node() 
								and (    matches(fn:data($fault//config:faultcode),"^(OSB|SCA)-[A-Z]{3,20}-[0-9]{4,8}") 
								      or matches(fn:data($fault//config:faultstring),"(OSB|SCA)-[A-Z]{3,20}-[0-9]{4,8}:"))
								) then (
	                <ns0:USER_MESSAGE>{data($fault//config:faultstring)}</ns0:USER_MESSAGE> 
  				) else if ($fault//soap-env-12:Reason/soap-env-12:Text/node()
								and (
								      matches(data($fault//soap-env-12:Code/soap-env-12:Value),"^(OSB|SCA)-[A-Z]{3,20}-[0-9]{4,8}")
								   or matches(data($fault//soap-env-12:Code/soap-env-12:Subcode/soap-env-12:Value),"^(OSB|SCA)-[A-Z]{3,20}-[0-9]{4,8}")
								   or matches(fn:data($fault//soap-env-12:Reason/soap-env-12:Text),"(OSB|SCA)-[A-Z]{3,20}-[0-9]{4,8}:")								   
								   )
							) then (
	                <ns0:USER_MESSAGE>{data($fault//soap-env-12:Reason/soap-env-12:Text)}</ns0:USER_MESSAGE> 
 				) else if ($fault//faultstring/node()
								and (    matches(data($fault//faultcode/node()),"^(OSB|SCA)-[A-Z]{3,20}-[0-9]{4,8}")
								      or matches(fn:data($fault//faultstring),"(OSB|SCA)-[A-Z]{3,20}-[0-9]{4,8}:") 								      
								    )    
								  ) then (
	                <ns0:USER_MESSAGE>{data($fault//faultstring)}</ns0:USER_MESSAGE> 
  				) else (
		  	    	<ns0:USER_MESSAGE>{ data($defaultMessage//ns0:USER_MESSAGE) }</ns0:USER_MESSAGE>  				
  				)
				 }
            <ns0:CATEGORY_MESSAGE>{ data($defaultMessage//ns0:CATEGORY_MESSAGE) }</ns0:CATEGORY_MESSAGE>
            <ns0:SYSTEM_CODE>{ data($defaultMessage//ns0:SYSTEM_CODE) }</ns0:SYSTEM_CODE>
        </ns0:Message>
};

declare variable $fault as element(*) external;
declare variable $defaultMessage as element() external;

xf:TransformarFaultCodMsgTratadaEmMessage($fault,
    $defaultMessage)