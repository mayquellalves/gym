xquery version "1.0" encoding "Cp1252";
(:: pragma bea:global-element-return element="ns0:Message" location="../../../../../canonicalmodel/nid/v1/netarchitecture/common/Message.xsd" ::)

declare namespace xf = "http://www.netservicos.com.br/netarchitecture/transformation/RetrieveMessage/";
declare namespace ns0 = "http://www.netservicos.com.br/canonicalmodel/nid/v1/netarchitecture/common/Message";
declare namespace dvm = "http://xmlns.oracle.com/dvm";
declare namespace rxr = "http://www.netservicos.com.br/netarchitecture/xpath-functions/ReadXmlResourceV1";

declare function xf:RetrieveMessageDVM($MessageCode as xs:string)
    as element(ns0:Message) {

	if (substring($MessageCode, 5, 7) eq "COMMON-") then
    	let $row := rxr:readXml("netarchitecture/transformation/dvm/retrievemessage/xml/sid/CommonMessages")/dvm:rows/dvm:row[dvm:cell[1]=$MessageCode]
    	return
			<ns0:Message>
			  <ns0:ID_MSG>{data($row/dvm:cell[1])}</ns0:ID_MSG>
			  <ns0:ERROR_NAME>{data($row/dvm:cell[2])}</ns0:ERROR_NAME>
			  <ns0:USER_MESSAGE>{data($row/dvm:cell[3])}</ns0:USER_MESSAGE>
			  <ns0:DETAIL_MESSAGE>{data($row/dvm:cell[4])}</ns0:DETAIL_MESSAGE>
			  <ns0:CATEGORY_MESSAGE>{data($row/dvm:cell[5])}</ns0:CATEGORY_MESSAGE>
			  <ns0:SYSTEM_CODE>{data($row/dvm:cell[6])}</ns0:SYSTEM_CODE>
			  <ns0:NID_DOMAIN>{data($row/dvm:cell[7])}</ns0:NID_DOMAIN>
			  <ns0:ABE_LEVEL>{data($row/dvm:cell[8])}</ns0:ABE_LEVEL>
			</ns0:Message>
    else if (substring($MessageCode, 5, 9) eq "CUSTOMER-") then
    	let $row := rxr:readXml("netarchitecture/transformation/dvm/retrievemessage/xml/sid/CustomerMessages")/dvm:rows/dvm:row[dvm:cell[1]=$MessageCode]
    	return
			<ns0:Message>
			  <ns0:ID_MSG>{data($row/dvm:cell[1])}</ns0:ID_MSG>
			  <ns0:ERROR_NAME>{data($row/dvm:cell[2])}</ns0:ERROR_NAME>
			  <ns0:USER_MESSAGE>{data($row/dvm:cell[3])}</ns0:USER_MESSAGE>
			  <ns0:DETAIL_MESSAGE>{data($row/dvm:cell[4])}</ns0:DETAIL_MESSAGE>
			  <ns0:CATEGORY_MESSAGE>{data($row/dvm:cell[5])}</ns0:CATEGORY_MESSAGE>
			  <ns0:SYSTEM_CODE>{data($row/dvm:cell[6])}</ns0:SYSTEM_CODE>
			  <ns0:NID_DOMAIN>{data($row/dvm:cell[7])}</ns0:NID_DOMAIN>
			  <ns0:ABE_LEVEL>{data($row/dvm:cell[8])}</ns0:ABE_LEVEL>
			</ns0:Message>
    else if (substring($MessageCode, 5, 11) eq "ENTERPRISE-") then
    	let $row := rxr:readXml("netarchitecture/transformation/dvm/retrievemessage/xml/sid/EnterpriseMessages")/dvm:rows/dvm:row[dvm:cell[1]=$MessageCode]
    	return
			<ns0:Message>
			  <ns0:ID_MSG>{data($row/dvm:cell[1])}</ns0:ID_MSG>
			  <ns0:ERROR_NAME>{data($row/dvm:cell[2])}</ns0:ERROR_NAME>
			  <ns0:USER_MESSAGE>{data($row/dvm:cell[3])}</ns0:USER_MESSAGE>
			  <ns0:DETAIL_MESSAGE>{data($row/dvm:cell[4])}</ns0:DETAIL_MESSAGE>
			  <ns0:CATEGORY_MESSAGE>{data($row/dvm:cell[5])}</ns0:CATEGORY_MESSAGE>
			  <ns0:SYSTEM_CODE>{data($row/dvm:cell[6])}</ns0:SYSTEM_CODE>
			  <ns0:NID_DOMAIN>{data($row/dvm:cell[7])}</ns0:NID_DOMAIN>
			  <ns0:ABE_LEVEL>{data($row/dvm:cell[8])}</ns0:ABE_LEVEL>
			</ns0:Message>
    else if (substring($MessageCode, 5, 7) eq "MARKET-") then
    	let $row := rxr:readXml("netarchitecture/transformation/dvm/retrievemessage/xml/sid/MarketMessages")/dvm:rows/dvm:row[dvm:cell[1]=$MessageCode]
    	return
			<ns0:Message>
			  <ns0:ID_MSG>{data($row/dvm:cell[1])}</ns0:ID_MSG>
			  <ns0:ERROR_NAME>{data($row/dvm:cell[2])}</ns0:ERROR_NAME>
			  <ns0:USER_MESSAGE>{data($row/dvm:cell[3])}</ns0:USER_MESSAGE>
			  <ns0:DETAIL_MESSAGE>{data($row/dvm:cell[4])}</ns0:DETAIL_MESSAGE>
			  <ns0:CATEGORY_MESSAGE>{data($row/dvm:cell[5])}</ns0:CATEGORY_MESSAGE>
			  <ns0:SYSTEM_CODE>{data($row/dvm:cell[6])}</ns0:SYSTEM_CODE>
			  <ns0:NID_DOMAIN>{data($row/dvm:cell[7])}</ns0:NID_DOMAIN>
			  <ns0:ABE_LEVEL>{data($row/dvm:cell[8])}</ns0:ABE_LEVEL>
			</ns0:Message>
    else if (substring($MessageCode, 5, 8) eq "PARTNER-") then
    	let $row := rxr:readXml("netarchitecture/transformation/dvm/retrievemessage/xml/sid/PartnerMessages")/dvm:rows/dvm:row[dvm:cell[1]=$MessageCode]
    	return
			<ns0:Message>
			  <ns0:ID_MSG>{data($row/dvm:cell[1])}</ns0:ID_MSG>
			  <ns0:ERROR_NAME>{data($row/dvm:cell[2])}</ns0:ERROR_NAME>
			  <ns0:USER_MESSAGE>{data($row/dvm:cell[3])}</ns0:USER_MESSAGE>
			  <ns0:DETAIL_MESSAGE>{data($row/dvm:cell[4])}</ns0:DETAIL_MESSAGE>
			  <ns0:CATEGORY_MESSAGE>{data($row/dvm:cell[5])}</ns0:CATEGORY_MESSAGE>
			  <ns0:SYSTEM_CODE>{data($row/dvm:cell[6])}</ns0:SYSTEM_CODE>
			  <ns0:NID_DOMAIN>{data($row/dvm:cell[7])}</ns0:NID_DOMAIN>
			  <ns0:ABE_LEVEL>{data($row/dvm:cell[8])}</ns0:ABE_LEVEL>
			</ns0:Message>
    else if (substring($MessageCode, 5, 8) eq "PRODUCT-") then
    	let $row := rxr:readXml("netarchitecture/transformation/dvm/retrievemessage/xml/sid/ProductMessages")/dvm:rows/dvm:row[dvm:cell[1]=$MessageCode]
    	return
			<ns0:Message>
			  <ns0:ID_MSG>{data($row/dvm:cell[1])}</ns0:ID_MSG>
			  <ns0:ERROR_NAME>{data($row/dvm:cell[2])}</ns0:ERROR_NAME>
			  <ns0:USER_MESSAGE>{data($row/dvm:cell[3])}</ns0:USER_MESSAGE>
			  <ns0:DETAIL_MESSAGE>{data($row/dvm:cell[4])}</ns0:DETAIL_MESSAGE>
			  <ns0:CATEGORY_MESSAGE>{data($row/dvm:cell[5])}</ns0:CATEGORY_MESSAGE>
			  <ns0:SYSTEM_CODE>{data($row/dvm:cell[6])}</ns0:SYSTEM_CODE>
			  <ns0:NID_DOMAIN>{data($row/dvm:cell[7])}</ns0:NID_DOMAIN>
			  <ns0:ABE_LEVEL>{data($row/dvm:cell[8])}</ns0:ABE_LEVEL>
			</ns0:Message>
    else if (substring($MessageCode, 5, 9) eq "RESOURCE-") then
    	let $row := rxr:readXml("netarchitecture/transformation/dvm/retrievemessage/xml/sid/ResourceMessages")/dvm:rows/dvm:row[dvm:cell[1]=$MessageCode]
    	return
			<ns0:Message>
			  <ns0:ID_MSG>{data($row/dvm:cell[1])}</ns0:ID_MSG>
			  <ns0:ERROR_NAME>{data($row/dvm:cell[2])}</ns0:ERROR_NAME>
			  <ns0:USER_MESSAGE>{data($row/dvm:cell[3])}</ns0:USER_MESSAGE>
			  <ns0:DETAIL_MESSAGE>{data($row/dvm:cell[4])}</ns0:DETAIL_MESSAGE>
			  <ns0:CATEGORY_MESSAGE>{data($row/dvm:cell[5])}</ns0:CATEGORY_MESSAGE>
			  <ns0:SYSTEM_CODE>{data($row/dvm:cell[6])}</ns0:SYSTEM_CODE>
			  <ns0:NID_DOMAIN>{data($row/dvm:cell[7])}</ns0:NID_DOMAIN>
			  <ns0:ABE_LEVEL>{data($row/dvm:cell[8])}</ns0:ABE_LEVEL>
			</ns0:Message>
    else if (substring($MessageCode, 5, 6) eq "SALES-") then
    	let $row := rxr:readXml("netarchitecture/transformation/dvm/retrievemessage/xml/sid/SalesMessages")/dvm:rows/dvm:row[dvm:cell[1]=$MessageCode]
    	return
			<ns0:Message>
			  <ns0:ID_MSG>{data($row/dvm:cell[1])}</ns0:ID_MSG>
			  <ns0:ERROR_NAME>{data($row/dvm:cell[2])}</ns0:ERROR_NAME>
			  <ns0:USER_MESSAGE>{data($row/dvm:cell[3])}</ns0:USER_MESSAGE>
			  <ns0:DETAIL_MESSAGE>{data($row/dvm:cell[4])}</ns0:DETAIL_MESSAGE>
			  <ns0:CATEGORY_MESSAGE>{data($row/dvm:cell[5])}</ns0:CATEGORY_MESSAGE>
			  <ns0:SYSTEM_CODE>{data($row/dvm:cell[6])}</ns0:SYSTEM_CODE>
			  <ns0:NID_DOMAIN>{data($row/dvm:cell[7])}</ns0:NID_DOMAIN>
			  <ns0:ABE_LEVEL>{data($row/dvm:cell[8])}</ns0:ABE_LEVEL>
			</ns0:Message>
    else if (substring($MessageCode, 5, 8) eq "SERVICE-") then
    	let $row := rxr:readXml("netarchitecture/transformation/dvm/retrievemessage/xml/sid/ServiceMessages")/dvm:rows/dvm:row[dvm:cell[1]=$MessageCode]
    	return
			<ns0:Message>
			  <ns0:ID_MSG>{data($row/dvm:cell[1])}</ns0:ID_MSG>
			  <ns0:ERROR_NAME>{data($row/dvm:cell[2])}</ns0:ERROR_NAME>
			  <ns0:USER_MESSAGE>{data($row/dvm:cell[3])}</ns0:USER_MESSAGE>
			  <ns0:DETAIL_MESSAGE>{data($row/dvm:cell[4])}</ns0:DETAIL_MESSAGE>
			  <ns0:CATEGORY_MESSAGE>{data($row/dvm:cell[5])}</ns0:CATEGORY_MESSAGE>
			  <ns0:SYSTEM_CODE>{data($row/dvm:cell[6])}</ns0:SYSTEM_CODE>
			  <ns0:NID_DOMAIN>{data($row/dvm:cell[7])}</ns0:NID_DOMAIN>
			  <ns0:ABE_LEVEL>{data($row/dvm:cell[8])}</ns0:ABE_LEVEL>
			</ns0:Message>
    else if (substring($MessageCode, 5, 9) eq "SUPPLIER-") then
    	let $row := rxr:readXml("netarchitecture/transformation/dvm/retrievemessage/xml/sid/SupplierMessages")/dvm:rows/dvm:row[dvm:cell[1]=$MessageCode]
    	return
			<ns0:Message>
			  <ns0:ID_MSG>{data($row/dvm:cell[1])}</ns0:ID_MSG>
			  <ns0:ERROR_NAME>{data($row/dvm:cell[2])}</ns0:ERROR_NAME>
			  <ns0:USER_MESSAGE>{data($row/dvm:cell[3])}</ns0:USER_MESSAGE>
			  <ns0:DETAIL_MESSAGE>{data($row/dvm:cell[4])}</ns0:DETAIL_MESSAGE>
			  <ns0:CATEGORY_MESSAGE>{data($row/dvm:cell[5])}</ns0:CATEGORY_MESSAGE>
			  <ns0:SYSTEM_CODE>{data($row/dvm:cell[6])}</ns0:SYSTEM_CODE>
			  <ns0:NID_DOMAIN>{data($row/dvm:cell[7])}</ns0:NID_DOMAIN>
			  <ns0:ABE_LEVEL>{data($row/dvm:cell[8])}</ns0:ABE_LEVEL>
			</ns0:Message>
    else if (substring($MessageCode, 5, 16) eq "NETARCHITECTURE-") then	
    	let $row := rxr:readXml("netarchitecture/transformation/dvm/retrievemessage/xml/sid/NetArchitectureMessages")/dvm:rows/dvm:row[dvm:cell[1]=$MessageCode]
    	return
			<ns0:Message>
			  <ns0:ID_MSG>{data($row/dvm:cell[1])}</ns0:ID_MSG>
			  <ns0:ERROR_NAME>{data($row/dvm:cell[2])}</ns0:ERROR_NAME>
			  <ns0:USER_MESSAGE>{data($row/dvm:cell[3])}</ns0:USER_MESSAGE>
			  <ns0:DETAIL_MESSAGE>{data($row/dvm:cell[4])}</ns0:DETAIL_MESSAGE>
			  <ns0:CATEGORY_MESSAGE>{data($row/dvm:cell[5])}</ns0:CATEGORY_MESSAGE>
			  <ns0:SYSTEM_CODE>{data($row/dvm:cell[6])}</ns0:SYSTEM_CODE>
			  <ns0:NID_DOMAIN>{data($row/dvm:cell[7])}</ns0:NID_DOMAIN>
			  <ns0:ABE_LEVEL>{data($row/dvm:cell[8])}</ns0:ABE_LEVEL>
			</ns0:Message>
	else if (substring($MessageCode, 5, 23) eq "APPLICATIONINTEGRATION-") then
    	let $row := rxr:readXml("netarchitecture/transformation/dvm/retrievemessage/xml/tam/ApplicationIntegrationMessages")/dvm:rows/dvm:row[dvm:cell[1]=$MessageCode]
    	return
			<ns0:Message>
			  <ns0:ID_MSG>{data($row/dvm:cell[1])}</ns0:ID_MSG>
			  <ns0:ERROR_NAME>{data($row/dvm:cell[2])}</ns0:ERROR_NAME>
			  <ns0:USER_MESSAGE>{data($row/dvm:cell[3])}</ns0:USER_MESSAGE>
			  <ns0:DETAIL_MESSAGE>{data($row/dvm:cell[4])}</ns0:DETAIL_MESSAGE>
			  <ns0:CATEGORY_MESSAGE>{data($row/dvm:cell[5])}</ns0:CATEGORY_MESSAGE>
			  <ns0:SYSTEM_CODE>{data($row/dvm:cell[6])}</ns0:SYSTEM_CODE>
			  <ns0:NID_DOMAIN>{data($row/dvm:cell[7])}</ns0:NID_DOMAIN>
			  <ns0:ABE_LEVEL>{data($row/dvm:cell[8])}</ns0:ABE_LEVEL>
			</ns0:Message>
	else if (substring($MessageCode, 5, 24) eq "CROSSDOMAINAPPLICATIONS-") then
    	let $row := rxr:readXml("netarchitecture/transformation/dvm/retrievemessage/xml/tam/CrossDomainApplicationsMessages")/dvm:rows/dvm:row[dvm:cell[1]=$MessageCode]
    	return
			<ns0:Message>
			  <ns0:ID_MSG>{data($row/dvm:cell[1])}</ns0:ID_MSG>
			  <ns0:ERROR_NAME>{data($row/dvm:cell[2])}</ns0:ERROR_NAME>
			  <ns0:USER_MESSAGE>{data($row/dvm:cell[3])}</ns0:USER_MESSAGE>
			  <ns0:DETAIL_MESSAGE>{data($row/dvm:cell[4])}</ns0:DETAIL_MESSAGE>
			  <ns0:CATEGORY_MESSAGE>{data($row/dvm:cell[5])}</ns0:CATEGORY_MESSAGE>
			  <ns0:SYSTEM_CODE>{data($row/dvm:cell[6])}</ns0:SYSTEM_CODE>
			  <ns0:NID_DOMAIN>{data($row/dvm:cell[7])}</ns0:NID_DOMAIN>
			  <ns0:ABE_LEVEL>{data($row/dvm:cell[8])}</ns0:ABE_LEVEL>
			</ns0:Message>
	else if (substring($MessageCode, 5, 19) eq "CUSTOMERMANAGEMENT-") then
    	let $row := rxr:readXml("netarchitecture/transformation/dvm/retrievemessage/xml/tam/CustomerManagementMessages")/dvm:rows/dvm:row[dvm:cell[1]=$MessageCode]
    	return
			<ns0:Message>
			  <ns0:ID_MSG>{data($row/dvm:cell[1])}</ns0:ID_MSG>
			  <ns0:ERROR_NAME>{data($row/dvm:cell[2])}</ns0:ERROR_NAME>
			  <ns0:USER_MESSAGE>{data($row/dvm:cell[3])}</ns0:USER_MESSAGE>
			  <ns0:DETAIL_MESSAGE>{data($row/dvm:cell[4])}</ns0:DETAIL_MESSAGE>
			  <ns0:CATEGORY_MESSAGE>{data($row/dvm:cell[5])}</ns0:CATEGORY_MESSAGE>
			  <ns0:SYSTEM_CODE>{data($row/dvm:cell[6])}</ns0:SYSTEM_CODE>
			  <ns0:NID_DOMAIN>{data($row/dvm:cell[7])}</ns0:NID_DOMAIN>
			  <ns0:ABE_LEVEL>{data($row/dvm:cell[8])}</ns0:ABE_LEVEL>
			</ns0:Message>
	else if (substring($MessageCode, 5, 21) eq "ENTERPRISEMANAGEMENT-") then
    	let $row := rxr:readXml("netarchitecture/transformation/dvm/retrievemessage/xml/tam/EnterpriseManagementMessages")/dvm:rows/dvm:row[dvm:cell[1]=$MessageCode]
    	return
			<ns0:Message>
			  <ns0:ID_MSG>{data($row/dvm:cell[1])}</ns0:ID_MSG>
			  <ns0:ERROR_NAME>{data($row/dvm:cell[2])}</ns0:ERROR_NAME>
			  <ns0:USER_MESSAGE>{data($row/dvm:cell[3])}</ns0:USER_MESSAGE>
			  <ns0:DETAIL_MESSAGE>{data($row/dvm:cell[4])}</ns0:DETAIL_MESSAGE>
			  <ns0:CATEGORY_MESSAGE>{data($row/dvm:cell[5])}</ns0:CATEGORY_MESSAGE>
			  <ns0:SYSTEM_CODE>{data($row/dvm:cell[6])}</ns0:SYSTEM_CODE>
			  <ns0:NID_DOMAIN>{data($row/dvm:cell[7])}</ns0:NID_DOMAIN>
			  <ns0:ABE_LEVEL>{data($row/dvm:cell[8])}</ns0:ABE_LEVEL>
			</ns0:Message>
	else if (substring($MessageCode, 5, 17) eq "MARKETMANAGEMENT-") then
    	let $row := rxr:readXml("netarchitecture/transformation/dvm/retrievemessage/xml/tam/MarketManagementMessages")/dvm:rows/dvm:row[dvm:cell[1]=$MessageCode]
    	return
			<ns0:Message>
			  <ns0:ID_MSG>{data($row/dvm:cell[1])}</ns0:ID_MSG>
			  <ns0:ERROR_NAME>{data($row/dvm:cell[2])}</ns0:ERROR_NAME>
			  <ns0:USER_MESSAGE>{data($row/dvm:cell[3])}</ns0:USER_MESSAGE>
			  <ns0:DETAIL_MESSAGE>{data($row/dvm:cell[4])}</ns0:DETAIL_MESSAGE>
			  <ns0:CATEGORY_MESSAGE>{data($row/dvm:cell[5])}</ns0:CATEGORY_MESSAGE>
			  <ns0:SYSTEM_CODE>{data($row/dvm:cell[6])}</ns0:SYSTEM_CODE>
			  <ns0:NID_DOMAIN>{data($row/dvm:cell[7])}</ns0:NID_DOMAIN>
			  <ns0:ABE_LEVEL>{data($row/dvm:cell[8])}</ns0:ABE_LEVEL>
			</ns0:Message>
	else if (substring($MessageCode, 5, 18) eq "PARTNERMANAGEMENT-") then
    	let $row := rxr:readXml("netarchitecture/transformation/dvm/retrievemessage/xml/tam/PartnerManagementMessages")/dvm:rows/dvm:row[dvm:cell[1]=$MessageCode]
    	return
			<ns0:Message>
			  <ns0:ID_MSG>{data($row/dvm:cell[1])}</ns0:ID_MSG>
			  <ns0:ERROR_NAME>{data($row/dvm:cell[2])}</ns0:ERROR_NAME>
			  <ns0:USER_MESSAGE>{data($row/dvm:cell[3])}</ns0:USER_MESSAGE>
			  <ns0:DETAIL_MESSAGE>{data($row/dvm:cell[4])}</ns0:DETAIL_MESSAGE>
			  <ns0:CATEGORY_MESSAGE>{data($row/dvm:cell[5])}</ns0:CATEGORY_MESSAGE>
			  <ns0:SYSTEM_CODE>{data($row/dvm:cell[6])}</ns0:SYSTEM_CODE>
			  <ns0:NID_DOMAIN>{data($row/dvm:cell[7])}</ns0:NID_DOMAIN>
			  <ns0:ABE_LEVEL>{data($row/dvm:cell[8])}</ns0:ABE_LEVEL>
			</ns0:Message>
	else if (substring($MessageCode, 5, 18) eq "PRODUCTMANAGEMENT-") then
    	let $row := rxr:readXml("netarchitecture/transformation/dvm/retrievemessage/xml/tam/ProductManagementMessages")/dvm:rows/dvm:row[dvm:cell[1]=$MessageCode]
    	return
			<ns0:Message>
			  <ns0:ID_MSG>{data($row/dvm:cell[1])}</ns0:ID_MSG>
			  <ns0:ERROR_NAME>{data($row/dvm:cell[2])}</ns0:ERROR_NAME>
			  <ns0:USER_MESSAGE>{data($row/dvm:cell[3])}</ns0:USER_MESSAGE>
			  <ns0:DETAIL_MESSAGE>{data($row/dvm:cell[4])}</ns0:DETAIL_MESSAGE>
			  <ns0:CATEGORY_MESSAGE>{data($row/dvm:cell[5])}</ns0:CATEGORY_MESSAGE>
			  <ns0:SYSTEM_CODE>{data($row/dvm:cell[6])}</ns0:SYSTEM_CODE>
			  <ns0:NID_DOMAIN>{data($row/dvm:cell[7])}</ns0:NID_DOMAIN>
			  <ns0:ABE_LEVEL>{data($row/dvm:cell[8])}</ns0:ABE_LEVEL>
			</ns0:Message>
	else if (substring($MessageCode, 5, 19) eq "RESOURCEMANAGEMENT-") then
    	let $row := rxr:readXml("netarchitecture/transformation/dvm/retrievemessage/xml/tam/ResourceManagementMessages")/dvm:rows/dvm:row[dvm:cell[1]=$MessageCode]
    	return
			<ns0:Message>
			  <ns0:ID_MSG>{data($row/dvm:cell[1])}</ns0:ID_MSG>
			  <ns0:ERROR_NAME>{data($row/dvm:cell[2])}</ns0:ERROR_NAME>
			  <ns0:USER_MESSAGE>{data($row/dvm:cell[3])}</ns0:USER_MESSAGE>
			  <ns0:DETAIL_MESSAGE>{data($row/dvm:cell[4])}</ns0:DETAIL_MESSAGE>
			  <ns0:CATEGORY_MESSAGE>{data($row/dvm:cell[5])}</ns0:CATEGORY_MESSAGE>
			  <ns0:SYSTEM_CODE>{data($row/dvm:cell[6])}</ns0:SYSTEM_CODE>
			  <ns0:NID_DOMAIN>{data($row/dvm:cell[7])}</ns0:NID_DOMAIN>
			  <ns0:ABE_LEVEL>{data($row/dvm:cell[8])}</ns0:ABE_LEVEL>
			</ns0:Message>
	else if (substring($MessageCode, 5, 16) eq "SALESMANAGEMENT-") then
    	let $row := rxr:readXml("netarchitecture/transformation/dvm/retrievemessage/xml/tam/SalesManagementMessages")/dvm:rows/dvm:row[dvm:cell[1]=$MessageCode]
    	return
			<ns0:Message>
			  <ns0:ID_MSG>{data($row/dvm:cell[1])}</ns0:ID_MSG>
			  <ns0:ERROR_NAME>{data($row/dvm:cell[2])}</ns0:ERROR_NAME>
			  <ns0:USER_MESSAGE>{data($row/dvm:cell[3])}</ns0:USER_MESSAGE>
			  <ns0:DETAIL_MESSAGE>{data($row/dvm:cell[4])}</ns0:DETAIL_MESSAGE>
			  <ns0:CATEGORY_MESSAGE>{data($row/dvm:cell[5])}</ns0:CATEGORY_MESSAGE>
			  <ns0:SYSTEM_CODE>{data($row/dvm:cell[6])}</ns0:SYSTEM_CODE>
			  <ns0:NID_DOMAIN>{data($row/dvm:cell[7])}</ns0:NID_DOMAIN>
			  <ns0:ABE_LEVEL>{data($row/dvm:cell[8])}</ns0:ABE_LEVEL>
			</ns0:Message>
	else if (substring($MessageCode, 5, 18) eq "SERVICEMANAGEMENT-") then
    	let $row := rxr:readXml("netarchitecture/transformation/dvm/retrievemessage/xml/tam/ServiceManagementMessages")/dvm:rows/dvm:row[dvm:cell[1]=$MessageCode]
    	return
			<ns0:Message>
			  <ns0:ID_MSG>{data($row/dvm:cell[1])}</ns0:ID_MSG>
			  <ns0:ERROR_NAME>{data($row/dvm:cell[2])}</ns0:ERROR_NAME>
			  <ns0:USER_MESSAGE>{data($row/dvm:cell[3])}</ns0:USER_MESSAGE>
			  <ns0:DETAIL_MESSAGE>{data($row/dvm:cell[4])}</ns0:DETAIL_MESSAGE>
			  <ns0:CATEGORY_MESSAGE>{data($row/dvm:cell[5])}</ns0:CATEGORY_MESSAGE>
			  <ns0:SYSTEM_CODE>{data($row/dvm:cell[6])}</ns0:SYSTEM_CODE>
			  <ns0:NID_DOMAIN>{data($row/dvm:cell[7])}</ns0:NID_DOMAIN>
			  <ns0:ABE_LEVEL>{data($row/dvm:cell[8])}</ns0:ABE_LEVEL>
			</ns0:Message>			
	else if (substring($MessageCode, 5, 19) eq "SUPPLIERMANAGEMENT-") then
    	let $row := rxr:readXml("netarchitecture/transformation/dvm/retrievemessage/xml/tam/SupplierManagementMessages")/dvm:rows/dvm:row[dvm:cell[1]=$MessageCode]
    	return
			<ns0:Message>
			  <ns0:ID_MSG>{data($row/dvm:cell[1])}</ns0:ID_MSG>
			  <ns0:ERROR_NAME>{data($row/dvm:cell[2])}</ns0:ERROR_NAME>
			  <ns0:USER_MESSAGE>{data($row/dvm:cell[3])}</ns0:USER_MESSAGE>
			  <ns0:DETAIL_MESSAGE>{data($row/dvm:cell[4])}</ns0:DETAIL_MESSAGE>
			  <ns0:CATEGORY_MESSAGE>{data($row/dvm:cell[5])}</ns0:CATEGORY_MESSAGE>
			  <ns0:SYSTEM_CODE>{data($row/dvm:cell[6])}</ns0:SYSTEM_CODE>
			  <ns0:NID_DOMAIN>{data($row/dvm:cell[7])}</ns0:NID_DOMAIN>
			  <ns0:ABE_LEVEL>{data($row/dvm:cell[8])}</ns0:ABE_LEVEL>
			</ns0:Message>
    else ()
};

declare variable $MessageCode as xs:string external;

xf:RetrieveMessageDVM($MessageCode)