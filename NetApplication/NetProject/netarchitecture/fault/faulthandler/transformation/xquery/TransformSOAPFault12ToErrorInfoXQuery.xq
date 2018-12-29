xquery version "1.0" encoding "Cp1252";
(:: pragma  parameter="$additionalInformation" type="anyType" ::)
(:: pragma  parameter="$validationMessages" type="anyType" ::)
(:: pragma bea:schema-type-return type="ns0:ErrorInfoType" location="../../../../../canonicalmodel/nid/v1/netarchitecture/fault/ErrorInfo.xsd" ::)

declare namespace xf = "http://www.netservicos.com.br/netarchitecture/fault/transformation/TransformarSOAPFault12EmErrorInfoXQuery/";
declare namespace errorinfo = "http://www.netservicos.com.br/canonicalmodel/nid/v1/netarchitecture/fault/ErrorInfo";
declare namespace soap-env-11 = "http://schemas.xmlsoap.org/soap/envelope/";
declare namespace soap-env-12 = "http://www.w3.org/2003/05/soap-envelope";

declare function xf:TransformarSOAPFault12EmErrorInfoXQuery(
    $fault as element(*),
    $messageCode as xs:string,
    $message as xs:string,
    $exceptionClassification as xs:string?,
    $accessResourceName as xs:string?,
    $additionalInformation as element(*)?,
    $validationMessages as element(*)?,
    $exceptionStackTrace as xs:string?,
    $macroProcesso as xs:string?,    
    $processo as xs:string?)
    as element() {
        <errorinfo:ErrorInfo>        
     		  {if ($fault//soap-env-12:Subcode/soap-env-12:Value/node()) then (
	                <errorinfo:Code>{data($fault//soap-env-12:Subcode/soap-env-12:Value)}</errorinfo:Code> 
			   ) else (
				    if (matches(data($fault//soap-env-12:Code/soap-env-12:Value),"MustUnderstand|Receiver|Sender|VersionMismatch" ) and 
	      		       contains($fault//soap-env-12:Reason/soap-env-12:Text,":") and
	      		       contains(substring-before($fault//soap-env-12:Reason/soap-env-12:Text,":"),"-")) then (
				  	<errorinfo:Code>{substring-before($fault//soap-env-12:Reason/soap-env-12:Text,":")}</errorinfo:Code> 
				  	) else if ($fault//soap-env-12:Code/soap-env-12:Value/node()) then (
				  	<errorinfo:Code>{data($fault//soap-env-12:Code/soap-env-12:Value)}</errorinfo:Code>
				    ) else (
			  	    <errorinfo:Code>{$messageCode}</errorinfo:Code>
  					)
				) }			  			          
      		  {if ($fault//soap-env-12:Reason/soap-env-12:Text/node()) then (
                <errorinfo:Message>{data($fault//soap-env-12:Reason/soap-env-12:Text)}</errorinfo:Message>
			  ) else (
			  	<errorinfo:Message>{$message}</errorinfo:Message>
			  ) }
			  <errorinfo:ExceptionDate>{data(fn:current-dateTime())}</errorinfo:ExceptionDate>
			  <errorinfo:ExceptionClassification>{$exceptionClassification}</errorinfo:ExceptionClassification>
      		  {if ($fault//soap-env-12:Node/node() or $fault//soap-env-12:Role/node() ) then (
 			    <errorinfo:AccessResourceName>{concat(data($fault//soap-env-12:Node),'.',data($fault//soap-env-12:Role))}</errorinfo:AccessResourceName>
			  ) else (
			  	<errorinfo:AccessResourceName>{$accessResourceName}</errorinfo:AccessResourceName>
			  ) }	
			  <errorinfo:AdditionalInformation>{ $additionalInformation/@* , $additionalInformation/node() }</errorinfo:AdditionalInformation>
              <errorinfo:ValidationMessages>{ $validationMessages/@* , $validationMessages/node() }</errorinfo:ValidationMessages>
      		  {if ($fault//soap-env-12:Detail/node()) then (
 			    <errorinfo:ExceptionStackTrace>{data($fault//soap-env-12:Detail)}</errorinfo:ExceptionStackTrace>
			  ) else (
			  	<errorinfo:ExceptionStackTrace>{$exceptionStackTrace}</errorinfo:ExceptionStackTrace>
			  ) }
        </errorinfo:ErrorInfo>
};

declare variable $fault as element(*) external;
declare variable $messageCode as xs:string external;
declare variable $message as xs:string external;
declare variable $exceptionClassification as xs:string? external;
declare variable $accessResourceName as xs:string? external;
declare variable $additionalInformation as element(*)? external;
declare variable $validationMessages as element(*)? external;
declare variable $exceptionStackTrace as xs:string? external;
declare variable $macroProcesso as xs:string? external;
declare variable $processo as xs:string? external;

xf:TransformarSOAPFault12EmErrorInfoXQuery(
    $fault,
    $messageCode,
    $message,
    $exceptionClassification,
    $accessResourceName,
    $additionalInformation,
    $validationMessages,
    $exceptionStackTrace,
    $macroProcesso,
    $processo)