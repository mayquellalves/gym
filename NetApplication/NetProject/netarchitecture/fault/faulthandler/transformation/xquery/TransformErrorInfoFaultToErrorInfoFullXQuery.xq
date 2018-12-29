xquery version "1.0" encoding "Cp1252";
(:: pragma bea:global-element-parameter parameter="$errorInfoFault" element="errorinfo:ErrorInfo" location="../../../../../canonicalmodel/nid/v1/netarchitecture/fault/ErrorInfo.xsd" ::)
(:: pragma  parameter="$additionalInformation" type="anyType" ::)
(:: pragma  parameter="$validationMessages" type="anyType" ::)
(:: pragma bea:schema-type-return type="ns0:ErrorInfoType" location="../../../../../canonicalmodel/nid/v1/netarchitecture/fault/ErrorInfo.xsd" ::)

declare namespace xf = "http://www.netservicos.com.br/netarchitecture/fault/transformation/TransformarErrorInfoEmErrorInfoFullXQuery/";
declare namespace errorinfo = "http://www.netservicos.com.br/canonicalmodel/nid/v1/netarchitecture/fault/ErrorInfo";
declare namespace soap-env-11 = "http://schemas.xmlsoap.org/soap/envelope/";
declare namespace soap-env-12 = "http://www.w3.org/2003/05/soap-envelope";

declare function xf:TransformarSOAPFault12EmErrorInfoXQuery(
    $errorInfoFault as element(errorinfo:ErrorInfo),
    $messageCode as xs:string,
    $message as xs:string,
    $exceptionClassification as xs:string?,
    $accessResourceName as xs:string?,
    $additionalInformation as element(*)?,
    $validationMessages as element(*)?,
    $exceptionStackTrace as xs:string?)
    as element() {
        <errorinfo:ErrorInfo>
      		  {if ($errorInfoFault/errorinfo:Code/node()) then (
 			    <errorinfo:Code>{data($errorInfoFault/errorinfo:Code)}</errorinfo:Code> 
			  ) else (
			  	<errorinfo:Code>{$messageCode}</errorinfo:Code>
			  ) }
      		  {if ($errorInfoFault/errorinfo:Message/node()) then (
                <errorinfo:Message>{data($errorInfoFault/errorinfo:Message)}</errorinfo:Message>
			  ) else (
			  	<errorinfo:Message>{$message}</errorinfo:Message>
			  ) }
      		  {if ($errorInfoFault/errorinfo:ExceptionDate/node()) then (
                <errorinfo:ExceptionDate>{data($errorInfoFault/errorinfo:ExceptionDate)}</errorinfo:ExceptionDate> 
			  ) else (
			  	<errorinfo:ExceptionDate>{data(fn:current-dateTime())}</errorinfo:ExceptionDate>
			  ) }
      		  {if ($errorInfoFault/errorinfo:ExceptionClassification/node()) then (
 			    <errorinfo:ExceptionClassification>{data($errorInfoFault/errorinfo:ExceptionClassification)}</errorinfo:ExceptionClassification> 
			  ) else (
			  	<errorinfo:ExceptionClassification>{$exceptionClassification}</errorinfo:ExceptionClassification>
			  ) }
      		  {if ($errorInfoFault/errorinfo:AccessResourceName/node()) then (
 			    <errorinfo:AccessResourceName>{data($errorInfoFault/errorinfo:AccessResourceName)}</errorinfo:AccessResourceName> 
			  ) else (
			  	<errorinfo:AccessResourceName>{$accessResourceName}</errorinfo:AccessResourceName>
			  ) }
      		  {if ($errorInfoFault/errorinfo:AdditionalInformation/node()) then (
 			    <errorinfo:AdditionalInformation>{ $errorInfoFault/errorinfo:AdditionalInformation/@* , $errorInfoFault/errorinfo:AdditionalInformation/node() }</errorinfo:AdditionalInformation>
			  ) else (
			  	<errorinfo:AdditionalInformation>{ $additionalInformation/@* , $additionalInformation/node() }</errorinfo:AdditionalInformation>
			  ) }
      		  {if ($errorInfoFault/errorinfo:ValidationMessages/node()) then (
 			    <errorinfo:ValidationMessages>{ $errorInfoFault/errorinfo:ValidationMessages/@* , $errorInfoFault/errorinfo:ValidationMessages/node() }</errorinfo:ValidationMessages>
			  ) else (
 			    <errorinfo:ValidationMessages>{ $validationMessages/@* , $validationMessages/node() }</errorinfo:ValidationMessages>
			  ) }
      		  {if ($errorInfoFault/errorinfo:ExceptionStackTrace/node()) then (
 			    <errorinfo:ExceptionStackTrace>{data($errorInfoFault/errorinfo:ExceptionStackTrace)}</errorinfo:ExceptionStackTrace>
			  ) else (
			  	<errorinfo:ExceptionStackTrace>{$exceptionStackTrace}</errorinfo:ExceptionStackTrace>
			  ) }			          
        </errorinfo:ErrorInfo>
};

declare variable $errorInfoFault as element(errorinfo:ErrorInfo) external;
declare variable $messageCode as xs:string external;
declare variable $message as xs:string external;
declare variable $exceptionClassification as xs:string? external;
declare variable $accessResourceName as xs:string? external;
declare variable $additionalInformation as element(*)? external;
declare variable $validationMessages as element(*)? external;
declare variable $exceptionStackTrace as xs:string? external;

xf:TransformarSOAPFault12EmErrorInfoXQuery(
    $errorInfoFault,
    $messageCode,
    $message,
    $exceptionClassification,
    $accessResourceName,
    $additionalInformation,
    $validationMessages,
    $exceptionStackTrace)