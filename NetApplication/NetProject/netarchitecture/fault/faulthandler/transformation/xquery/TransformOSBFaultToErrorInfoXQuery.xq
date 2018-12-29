xquery version "1.0" encoding "Cp1252";
(:: pragma  parameter="$additionalInformation" type="anyType" ::)
(:: pragma  parameter="$validationMessages" type="anyType" ::)
(:: pragma bea:schema-type-return type="ns0:ErrorInfoType" location="../../../../../canonicalmodel/nid/v1/netarchitecture/fault/ErrorInfo.xsd" ::)

declare namespace xf = "http://www.netservicos.com.br/netarchitecture/fault/transformation/TransformarESBFaultEmErrorInfoXQuery/";
declare namespace errorinfo = "http://www.netservicos.com.br/canonicalmodel/nid/v1/netarchitecture/fault/ErrorInfo";
declare namespace sbcontext = "http://www.bea.com/wli/sb/context";
declare namespace sbconfig = "http://www.bea.com/wli/sb/stages/transform/config";
declare namespace jwErr =    "http://www.bea.com/2002/04/jwErrorDetail/";
declare namespace beafault = "http://www.bea.com/servers/wls70/webservice/fault/1.0.0";

declare function xf:TransformarESBFaultEmErrorInfoXQuery(
    $fault as element(*),
    $exceptionClassification as xs:string,
    $accessResourceName as xs:string,
    $additionalInformation as element(*),
    $validationMessages as element(*),
    $exceptionStackTrace as xs:string)
    as element() {
        <errorinfo:ErrorInfo> 
       		 { if ($fault//sbconfig:http-response-code/node() and 
      		      (fn:not($fault//sbconfig:ReceivedFaultDetail/sbconfig:detail/sbcontext:fault/sbcontext:errorCode/node()))) then (
			  <errorinfo:Code>{fn:concat('HTTP-',$fault//sbconfig:http-response-code/node())}</errorinfo:Code> 
			  )else if ($fault//sbconfig:ReceivedFaultDetail/sbconfig:detail/sbcontext:fault/sbcontext:errorCode/node()) then (
			  <errorinfo:Code>{$fault//sbconfig:ReceivedFaultDetail/sbconfig:detail/sbcontext:fault/sbcontext:errorCode/node()}</errorinfo:Code>			  
			  )else if ($fault//sbconfig:ReceivedFaultDetail/sbconfig:faultcode/node()) then (
			  <errorinfo:Code>{$fault//sbconfig:ReceivedFaultDetail/sbconfig:faultcode/node()}</errorinfo:Code>			  
			  ) else (
			  <errorinfo:Code>{$fault//sbcontext:errorCode/node()}</errorinfo:Code>
			  ) }
      		 { if (fn:string-length($fault//sbconfig:http-response-code/node()) > 0 and 
      		      (fn:not($fault//sbconfig:ReceivedFaultDetail/sbconfig:detail/sbcontext:fault/sbcontext:errorCode/node()) )) then (
			  <errorinfo:Message>{fn:concat($fault//sbcontext:errorCode/node(),'-',$fault/sbcontext:reason/node())}</errorinfo:Message>
			  )else if ($fault//sbconfig:ReceivedFaultDetail/sbconfig:detail/sbcontext:fault/sbcontext:reason/node()) then (
			  <errorinfo:Message>{$fault//sbconfig:ReceivedFaultDetail/sbconfig:detail/sbcontext:fault/sbcontext:reason/node()}</errorinfo:Message>			  
			  )else if ($fault//sbconfig:ReceivedFaultDetail/sbconfig:faultstring/node()) then (
			  <errorinfo:Message>{$fault//sbconfig:ReceivedFaultDetail/sbconfig:faultstring/node()}</errorinfo:Message>			
			  ) else (
			  <errorinfo:Message>{fn:concat($fault//sbcontext:reason/node())}</errorinfo:Message>
			  ) }
			  <errorinfo:ExceptionDate>{data(fn:current-dateTime())}</errorinfo:ExceptionDate>
			  { if ((fn:string-length($fault//sbconfig:http-response-code/node()) > 0 and 
      		      (fn:not($fault//sbconfig:ReceivedFaultDetail/sbconfig:detail/sbcontext:fault/sbcontext:errorCode/node()) )) and
			         fn:matches(fn:concat($fault//sbconfig:http-response-code/node()),"401")  ) then ( 			  
   			    <errorinfo:ExceptionClassification>{"CLASSIFICATION_SECURITY"}</errorinfo:ExceptionClassification>
			  ) else if ((fn:string-length($fault//sbconfig:http-response-code/node()) > 0 and 
      		      (fn:not($fault//sbconfig:ReceivedFaultDetail/sbconfig:detail/sbcontext:fault/sbcontext:errorCode/node()) )) and
			         fn:matches(fn:concat($fault//sbconfig:http-response-code/node()),"404")  ) then (              
				  <errorinfo:ExceptionClassification>{"CLASSIFICATION_RESOURCE"}</errorinfo:ExceptionClassification>
			  ) else if ((fn:string-length($fault/sbconfig:ReceivedFaultDetail/sbconfig:detail/sbcontext:fault/sbcontext:errorCode/node()) > 0) and (
			         fn:matches(fn:concat($fault/sbconfig:ReceivedFaultDetail/sbconfig:detail/sbcontext:fault/sbcontext:errorCode/node()),"BEA-3825")  or 
			         fn:matches(fn:concat($fault/sbconfig:ReceivedFaultDetail/sbconfig:detail/sbcontext:fault/sbcontext:errorCode/node()),"BEA-3800") )) then (              
				  <errorinfo:ExceptionClassification>{"CLASSIFICATION_RESOURCE"}</errorinfo:ExceptionClassification>				  
               ) else if ((fn:string-length($exceptionClassification) > 0) ) then (              
				  <errorinfo:ExceptionClassification>{$exceptionClassification}</errorinfo:ExceptionClassification>
               ) else (
                <errorinfo:ExceptionClassification>{"CLASSIFICATION_UNEXPECTED"}</errorinfo:ExceptionClassification>
              ) }								          
			  { if ($fault//sbcontext:location/sbcontext:node/node()) then ( 
			    <errorinfo:AccessResourceName>{fn:replace(fn:concat($fault//sbcontext:location/sbcontext:path/node(),'.'
								          ,$fault//sbcontext:location/sbcontext:pipeline1/node(),'.'
								          ,$fault//sbcontext:location/sbcontext:stage/node(),'.'
								          ,$fault//sbcontext:location/sbcontext:node/node(),'.'
   								          ,$fault//sbcontext:location/sbcontext:error_handler/node()),'\.\.','.'
								          )}</errorinfo:AccessResourceName>
			  ) else (
                <errorinfo:AccessResourceName>{$accessResourceName}</errorinfo:AccessResourceName>
              ) }								          
			  <errorinfo:AdditionalInformation>{ $additionalInformation/@* , $additionalInformation/node()  }</errorinfo:AdditionalInformation>
              <errorinfo:ValidationMessages>{ $validationMessages/@* , $validationMessages/node() }</errorinfo:ValidationMessages>
      		 { if ($fault//sbconfig:ReceivedFaultDetail/node()) then ( 
	      		   if ($fault//sbconfig:ReceivedFaultDetail/sbconfig:detail/jwErr:jwErrorDetail/node()) then (              
				  <errorinfo:ExceptionStackTrace>{fn:concat($fault//sbconfig:ReceivedFaultDetail/sbconfig:faultcode/node(),':',
				                                  $fault//sbconfig:ReceivedFaultDetail/sbconfig:faultstring/node(),':',
				                                  $fault//sbconfig:ReceivedFaultDetail/sbconfig:detail/jwErr:jwErrorDetail/node())}</errorinfo:ExceptionStackTrace>
				  ) else if ($fault//sbconfig:ReceivedFaultDetail/sbconfig:detail/beafault:stacktrace/node()) then (              
				  <errorinfo:ExceptionStackTrace>{fn:concat($fault//sbconfig:ReceivedFaultDetail/sbconfig:faultcode/node(),':',
				                                  $fault//sbconfig:ReceivedFaultDetail/sbconfig:faultstring/node(),':',
				                                  $fault//sbconfig:ReceivedFaultDetail/sbconfig:detail/beafault:stacktrace/node())}</errorinfo:ExceptionStackTrace>
				  ) else if ($fault//sbconfig:ReceivedFaultDetail/sbconfig:detail/node()) then (              
				  <errorinfo:ExceptionStackTrace>{fn:concat($fault//sbconfig:ReceivedFaultDetail/sbconfig:faultcode/node(),':',
				                                  $fault//sbconfig:ReceivedFaultDetail/sbconfig:faultstring/node(),':',
				                                  $fault//sbconfig:ReceivedFaultDetail/sbconfig:detail/node())}</errorinfo:ExceptionStackTrace>
               ) else (
				  <errorinfo:ExceptionStackTrace>{fn:concat($fault//sbconfig:ReceivedFaultDetail/sbconfig:faultcode/node(),':',
				                                  $fault//sbconfig:ReceivedFaultDetail/sbconfig:faultstring/node())}</errorinfo:ExceptionStackTrace>
                 )
			  ) else (
              <errorinfo:ExceptionStackTrace>{fn:data($exceptionStackTrace)}</errorinfo:ExceptionStackTrace>
              ) }
        </errorinfo:ErrorInfo>
};

declare variable $fault as element(*) external;

declare variable $exceptionClassification as xs:string external;
declare variable $accessResourceName as xs:string external;
declare variable $additionalInformation as element(*) external;
declare variable $validationMessages as element(*) external;
declare variable $exceptionStackTrace as xs:string external;


xf:TransformarESBFaultEmErrorInfoXQuery($fault,
    $exceptionClassification,
    $accessResourceName,
    $additionalInformation,
    $validationMessages,
    $exceptionStackTrace)