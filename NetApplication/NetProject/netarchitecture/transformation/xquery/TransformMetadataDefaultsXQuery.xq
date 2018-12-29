(:: pragma bea:global-element-parameter parameter="$metadataIN" element="ns1:Metadata" location="../../../canonicalmodel/nid/v1/netarchitecture/common/Metadata.xsd" ::)
(:: pragma bea:global-element-return element="ns1:Metadata" location="../../../canonicalmodel/nid/v1/netarchitecture/common/Metadata.xsd" ::)

declare namespace ns1 = "http://www.netservicos.com.br/canonicalmodel/nid/v1/netarchitecture/common/Metadata";
declare namespace xf = "http://www.netservicos.com.br/netarchitecture/transformation/TransformMetadataDefaults/";

declare function xf:TransformMetadataDefaults($metadataIN as element(ns1:Metadata)?,
    $vendorDefault as xs:string?,
    $featureDefault as xs:string?,
    $tokenDefault as xs:string?,
    $currentDateTime as xs:dateTime?,
    $serviceVersionDefault as xs:string?)
    as element(ns1:Metadata) {
        <ns1:Metadata>
            <ns1:Consumer>
                <ns1:Enterprise>{ data($metadataIN/ns1:Consumer/ns1:Enterprise) }</ns1:Enterprise>
                <ns1:Application>{ data($metadataIN/ns1:Consumer/ns1:Application) }</ns1:Application>
                {
                    if ($metadataIN/ns1:Consumer/ns1:Vendor/node()) then
                        <ns1:Vendor>{ data($metadataIN/ns1:Consumer/ns1:Vendor) }</ns1:Vendor>
                    else 
                        (<ns1:Vendor>{ fn:substring($vendorDefault,1,50) }</ns1:Vendor>)
                }
                {
                    if ($metadataIN/ns1:Consumer/ns1:Feature/node()) then
                        <ns1:Feature>{ data($metadataIN/ns1:Consumer/ns1:Feature) }</ns1:Feature>
                    else 
                        (<ns1:Feature>{ fn:substring($featureDefault,1,100) }</ns1:Feature>)
                }
            </ns1:Consumer>
            <ns1:Tracking>
                {
                    if ($metadataIN/ns1:Tracking/ns1:Username/node()) then
                        <ns1:Username>{ data($metadataIN/ns1:Tracking/ns1:Username) }</ns1:Username>
                    else 
                        (<ns1:Username>{ 'Anonymous' }</ns1:Username>)
                }
                {
                    if ($metadataIN/ns1:Tracking/ns1:TransactionId/node()) then
                        <ns1:TransactionId>{ data($metadataIN/ns1:Tracking/ns1:TransactionId) }</ns1:TransactionId>
                    else 
                        (<ns1:TransactionId>{ fn:substring($tokenDefault,1,100) }</ns1:TransactionId>)
                }
                {
                    if ($metadataIN/ns1:Tracking/ns1:Timestamp/node()) then
                        <ns1:Timestamp>{ data($metadataIN/ns1:Tracking/ns1:Timestamp) }</ns1:Timestamp>
                    else 
                        (<ns1:Timestamp>{ $currentDateTime }</ns1:Timestamp>)
                }
                {
                	if ($metadataIN/ns1:Tracking/ns1:CorrelationId/node()) then
                		<ns1:CorrelationId>{ data($metadataIN/ns1:Tracking/ns1:CorrelationId) }</ns1:CorrelationId>	
                	else()
                }
                {
                	if ($metadataIN/ns1:Tracking/ns1:Hostname/node()) then
                		<ns1:Hostname>{ data($metadataIN/ns1:Tracking/ns1:Hostname) }</ns1:Hostname>	
                	else ()
                }
            </ns1:Tracking>
            <ns1:Governance>
                {
                    if ($metadataIN/ns1:Governance/ns1:ServiceVersion/node()) then
                        <ns1:ServiceVersion>{ data($metadataIN/ns1:Governance/ns1:ServiceVersion) }</ns1:ServiceVersion>
                    else 
                        (<ns1:ServiceVersion>{ fn:substring($serviceVersionDefault,1,50) }</ns1:ServiceVersion>)
                }
            </ns1:Governance>
        </ns1:Metadata>
};

declare variable $metadataIN as element(ns1:Metadata)? external;
declare variable $vendorDefault as xs:string? external;
declare variable $featureDefault as xs:string? external;
declare variable $serviceVersionDefault as xs:string? external;
declare variable $tokenDefault as xs:string? external;
declare variable $currentDateTime as xs:dateTime? external;

xf:TransformMetadataDefaults($metadataIN,
    $vendorDefault,
    $featureDefault,
    $tokenDefault,
    $currentDateTime,
    $serviceVersionDefault)