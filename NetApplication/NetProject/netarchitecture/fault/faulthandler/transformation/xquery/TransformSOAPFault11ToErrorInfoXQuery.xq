xquery version "1.0" encoding "Cp1252";
(:: pragma  parameter="$additionalInformation" type="anyType" ::)
(:: pragma  parameter="$validationMessages" type="anyType" ::)
(:: pragma bea:schema-type-return type="ns0:ErrorInfoType" location="../../../../../canonicalmodel/nid/v1/netarchitecture/fault/ErrorInfo.xsd" ::)

declare namespace xf = "http://www.netservicos.com.br/netarchitecture/fault/transformation/TransformarSOAPFault11EmErrorInfoXQuery/";
declare namespace errorinfo = "http://www.netservicos.com.br/canonicalmodel/nid/v1/netarchitecture/fault/ErrorInfo";
declare namespace soap-env-11 = "http://schemas.xmlsoap.org/soap/envelope/";
declare namespace soap-env-12 = "http://www.w3.org/2003/05/soap-envelope";

declare function xf:TransformarSOAPFault11EmErrorInfoXQuery(
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
      		  {if ($fault//faultcode/node()) then (
	               if (matches(data($fault//faultcode),"MustUnderstand|Receiver|Sender|VersionMismatch" ) and
	      		       contains($fault//faultstring,":") and
	      		       contains(substring-before($fault//faultstring,":"),"-")) then (
				  <errorinfo:Code>{substring-before($fault//faultstring,":")}</errorinfo:Code>
				  ) else (
				  <errorinfo:Code>{data($fault//faultcode)}</errorinfo:Code>
				  )  
			  ) else (
			  	<errorinfo:Code>{$messageCode}</errorinfo:Code>
			  ) }
      		  {if ($fault//faultstring/node()) then (
                <errorinfo:Message>{data($fault//faultstring)}</errorinfo:Message>
			  ) else (
			  	<errorinfo:Message>{$message}</errorinfo:Message>
			  ) }
			  <errorinfo:ExceptionDate>{data(fn:current-dateTime())}</errorinfo:ExceptionDate>
			  <errorinfo:ExceptionClassification>{$exceptionClassification}</errorinfo:ExceptionClassification>
      		  {if ($fault//faultactor/node()) then (
 			    <errorinfo:AccessResourceName>{data($fault//faultactor)}</errorinfo:AccessResourceName> 
			  ) else (
			  	<errorinfo:AccessResourceName>{$accessResourceName}</errorinfo:AccessResourceName>
			  ) }	
			  <errorinfo:AdditionalInformation>{ $additionalInformation/@* , $additionalInformation/node() }</errorinfo:AdditionalInformation>
              <errorinfo:ValidationMessages>{ $validationMessages/@* , $validationMessages/node() }</errorinfo:ValidationMessages>
      		  {if ($fault//detail/node()) then (
 			    <errorinfo:ExceptionStackTrace>{data($fault//detail)}</errorinfo:ExceptionStackTrace>
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

xf:TransformarSOAPFault11EmErrorInfoXQuery(
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