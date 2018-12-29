(:: pragma  parameter="$currentBody" type="anyType" ::)
(:: pragma  parameter="$currentFault" type="anyType" ::)
(:: pragma  parameter="$callResponse" type="anyType" ::)
(:: pragma  parameter="$currentInbound" type="anyType" ::)
(:: pragma  parameter="$messageParameters" type="anyType" ::)
(:: pragma  parameter="$additionalInformation" type="anyType" ::)
(:: pragma  parameter="$validationMessages" type="anyType" ::)
(:: pragma bea:global-element-return element="ns0:FaultHandlerRequest" location="../../wsdl/proxy/FaultHandler12V1.wsdl" ::)

declare namespace xf = "http://www.netservicos.com.br/netarchitecture/fault/transformation/TransformarEntradaFaultHandlerXQuery/";
declare namespace ns0 = "http://www.netservicos.com.br/FaultHandlerV1";
declare namespace errorInfo = "http://www.netservicos.com.br/canonicalmodel/nid/v1/netarchitecture/fault/ErrorInfo";
declare namespace logging="http://www.netservicos.com.br/canonicalmodel/nid/v1/netarchitecture/monitoring/Logging"; 
declare namespace macroprocesso="http://www.netservicos.com.br/canonicalmodel/nid/v1/netarchitecture/common/NidDomain"; 
declare namespace processo="http://www.netservicos.com.br/canonicalmodel/nid/v1/netarchitecture/common/NidAbeLevel";
declare namespace excepclass="http://www.netservicos.com.br/canonicalmodel/nid/v1/netarchitecture/fault/ExceptionClassification";

declare function xf:TransformarEntradaFaultHandlerXQuery($currentBody as element(*)?,
    $currentFault as element(*)?,
    $callResponse as element(*)?,
    $messageCode as xs:string,
    $messageParameters as element(*)?,
    $exceptionClassification as xs:string?,
    $accessResourceName as xs:string?,
    $additionalInformation as element(*)?,
    $validationMessages as element(*)?,
    $exceptionStackTrace as xs:string?)
    as element(ns0:faultHandlerRequest) {
        <ns0:faultHandlerRequest>
            <ns0:currentBody>{ $currentBody }</ns0:currentBody>
            <ns0:currentFault>{ $currentFault }</ns0:currentFault>
            <ns0:callResponse>{ $callResponse }</ns0:callResponse>
            <ns0:messageCode>{ $messageCode }</ns0:messageCode>
            <logging:MessageParameters>{ $messageParameters/@* , $messageParameters/node() }</logging:MessageParameters>
            <excepclass:ExceptionClassification>{ $exceptionClassification }</excepclass:ExceptionClassification>
            <ns0:accessResourceName>{ $accessResourceName }</ns0:accessResourceName>
            <ns0:additionalInformation>{ $additionalInformation }</ns0:additionalInformation>
            <errorInfo:ValidationMessages>{ $validationMessages/@* , $validationMessages/node() }</errorInfo:ValidationMessages>
            <ns0:exceptionStackTrace>{ $exceptionStackTrace }</ns0:exceptionStackTrace>
        </ns0:faultHandlerRequest>
};

declare variable $currentBody as element(*)? external;
declare variable $currentFault as element(*)? external;
declare variable $callResponse as element(*)? external;
declare variable $messageCode as xs:string external;
declare variable $messageParameters as element(*)? external;
declare variable $exceptionClassification as xs:string? external;
declare variable $accessResourceName as xs:string? external;
declare variable $additionalInformation as element(*)? external;
declare variable $validationMessages as element(*)? external;
declare variable $exceptionStackTrace as xs:string? external;

xf:TransformarEntradaFaultHandlerXQuery($currentBody,
    $currentFault,
    $callResponse,
    $messageCode,
    $messageParameters,
    $exceptionClassification,
    $accessResourceName,
    $additionalInformation,
    $validationMessages,
    $exceptionStackTrace)