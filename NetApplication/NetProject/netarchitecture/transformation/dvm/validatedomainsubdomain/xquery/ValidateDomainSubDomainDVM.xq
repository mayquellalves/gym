xquery version "1.0" encoding "Cp1252";
(:: pragma  type="xs:anyType" ::)

declare namespace xf = "http://www.netservicos.com.br/netarchitecture/transformation/ValidateDomainSubDomainDVM";
declare namespace dvm = "http://xmlns.oracle.com/dvm";

declare function xf:getDVM()
as element(dvm:dvm) {
<dvm name="ValidateDomainSubDomainDVM" xmlns="http://xmlns.oracle.com/dvm">
  <description>DVM used to map SID/TAM domains and respective subdomains.</description>
  <columns>
    <column name="Domain"/>
    <column name="SubDomain"/>
  </columns>
  <rows>
    <row>
      <cell>common</cell>
      <cell>root</cell>
    </row>
    <row>
      <cell>common</cell>
      <cell>basetypes</cell>
    </row>
    <row>
      <cell>common</cell>
      <cell>businessinteraction</cell>
    </row>
    <row>
      <cell>common</cell>
      <cell>party</cell>
    </row>
    <row>
      <cell>common</cell>
      <cell>time</cell>
    </row>
    <row>
      <cell>common</cell>
      <cell>usage</cell>
    </row>
    <row>
      <cell>common</cell>
      <cell>agreement</cell>
    </row>
    <row>
      <cell>common</cell>
      <cell>location</cell>
    </row>
    <row>
      <cell>common</cell>
      <cell>policy</cell>
    </row>
    <row>
      <cell>common</cell>
      <cell>project</cell>
    </row>
    <row>
      <cell>common</cell>
      <cell>capacity</cell>
    </row>
    <row>
      <cell>common</cell>
      <cell>performance</cell>
    </row>
    <row>
      <cell>common</cell>
      <cell>troubleorproblem</cell>
    </row>
    <row>
      <cell>common</cell>
      <cell>troubleticket</cell>
    </row>
    <row>
      <cell>common</cell>
      <cell>usersandroles</cell>
    </row>
    <row>
      <cell>customer</cell>
      <cell>bill</cell>
    </row>
    <row>
      <cell>customer</cell>
      <cell>billcollection</cell>
    </row>
    <row>
      <cell>customer</cell>
      <cell>billingrate</cell>
    </row>
    <row>
      <cell>customer</cell>
      <cell>billinquiry</cell>
    </row>
    <row>
      <cell>customer</cell>
      <cell>customer</cell>
    </row>
    <row>
      <cell>customer</cell>
      <cell>interaction</cell>
    </row>
    <row>
      <cell>customer</cell>
      <cell>order</cell>
    </row>
    <row>
      <cell>customer</cell>
      <cell>problem</cell>
    </row>
    <row>
      <cell>customer</cell>
      <cell>sla</cell>
    </row>
    <row>
      <cell>customer</cell>
      <cell>statistic</cell>
    </row>
    <row>
      <cell>enterprise</cell>
      <cell>efectiveness</cell>
    </row>
    <row>
      <cell>enterprise</cell>
      <cell>risk</cell>
    </row>
    <row>
      <cell>enterprise</cell>
      <cell>workforce</cell>
    </row>
    <row>
      <cell>market</cell>
      <cell>campain</cell>
    </row>
    <row>
      <cell>market</cell>
      <cell>competitor</cell>
    </row>
    <row>
      <cell>market</cell>
      <cell>strategyplan</cell>
    </row>
    <row>
      <cell>market</cell>
      <cell>segment</cell>
    </row>
    <row>
      <cell>netarchitecture</cell>
      <cell>fault</cell>
    </row>
    <row>
      <cell>netarchitecture</cell>
      <cell>monitoring</cell>
    </row>
    <row>
      <cell>netarchitecture</cell>
      <cell>security</cell>
    </row>
    <row>
      <cell>netarchitecture</cell>
      <cell>pagination</cell>
    </row>
    <row>
      <cell>partner</cell>
      <cell>bill</cell>
    </row>
    <row>
      <cell>partner</cell>
      <cell>billinquiry</cell>
    </row>
    <row>
      <cell>partner</cell>
      <cell>interaction</cell>
    </row>
    <row>
      <cell>partner</cell>
      <cell>order</cell>
    </row>
    <row>
      <cell>partner</cell>
      <cell>partner</cell>
    </row>
    <row>
      <cell>partner</cell>
      <cell>payment</cell>
    </row>
    <row>
      <cell>partner</cell>
      <cell>performance</cell>
    </row>
    <row>
      <cell>partner</cell>
      <cell>plan</cell>
    </row>
    <row>
      <cell>partner</cell>
      <cell>problem</cell>
    </row>
    <row>
      <cell>partner</cell>
      <cell>product</cell>
    </row>
    <row>
      <cell>partner</cell>
      <cell>sla</cell>
    </row>
    <row>
      <cell>partner</cell>
      <cell>statistic</cell>
    </row>
    <row>
      <cell>product</cell>
      <cell>offering</cell>
    </row>
    <row>
      <cell>product</cell>
      <cell>performance</cell>
    </row>
    <row>
      <cell>product</cell>
      <cell>product</cell>
    </row>
    <row>
      <cell>product</cell>
      <cell>specification</cell>
    </row>
    <row>
      <cell>product</cell>
      <cell>statistic</cell>
    </row>
    <row>
      <cell>product</cell>
      <cell>strategic</cell>
    </row>
    <row>
      <cell>product</cell>
      <cell>usage</cell>
    </row>
    <row>
      <cell>resource</cell>
      <cell>configuration</cell>
    </row>
    <row>
      <cell>resource</cell>
      <cell>performance</cell>
    </row>
    <row>
      <cell>resource</cell>
      <cell>resource</cell>
    </row>
    <row>
      <cell>resource</cell>
      <cell>specification</cell>
    </row>
    <row>
      <cell>resource</cell>
      <cell>strategy</cell>
    </row>
    <row>
      <cell>resource</cell>
      <cell>test</cell>
    </row>
    <row>
      <cell>resource</cell>
      <cell>topology</cell>
    </row>
    <row>
      <cell>resource</cell>
      <cell>trouble</cell>
    </row>
    <row>
      <cell>resource</cell>
      <cell>usage</cell>
    </row>
    <row>
      <cell>sales</cell>
      <cell>channel</cell>
    </row>
    <row>
      <cell>sales</cell>
      <cell>prospect</cell>
    </row>
    <row>
      <cell>sales</cell>
      <cell>satistic</cell>
    </row>
    <row>
      <cell>service</cell>
      <cell>configuration</cell>
    </row>
    <row>
      <cell>service</cell>
      <cell>performance</cell>
    </row>
    <row>
      <cell>service</cell>
      <cell>service</cell>
    </row>
    <row>
      <cell>service</cell>
      <cell>specification</cell>
    </row>
    <row>
      <cell>service</cell>
      <cell>strategy</cell>
    </row>
    <row>
      <cell>service</cell>
      <cell>test</cell>
    </row>
    <row>
      <cell>service</cell>
      <cell>trouble</cell>
    </row>
    <row>
      <cell>service</cell>
      <cell>usage</cell>
    </row>
    <row>
      <cell>supplier</cell>
      <cell>bill</cell>
    </row>
    <row>
      <cell>supplier</cell>
      <cell>billinquiry</cell>
    </row>
    <row>
      <cell>supplier</cell>
      <cell>interaction</cell>
    </row>
    <row>
      <cell>supplier</cell>
      <cell>order</cell>
    </row>
    <row>
      <cell>supplier</cell>
      <cell>payment</cell>
    </row>
    <row>
      <cell>supplier</cell>
      <cell>performance</cell>
    </row>
    <row>
      <cell>supplier</cell>
      <cell>plan</cell>
    </row>
    <row>
      <cell>supplier</cell>
      <cell>problem</cell>
    </row>
    <row>
      <cell>supplier</cell>
      <cell>product</cell>
    </row>
    <row>
      <cell>supplier</cell>
      <cell>sla</cell>
    </row>
    <row>
      <cell>supplier</cell>
      <cell>statistic</cell>
    </row>
    <row>
      <cell>supplier</cell>
      <cell>supplier</cell>
    </row>
    <row>
      <cell>applicationintegration</cell>
      <cell>bpm</cell>
    </row>
    <row>
      <cell>applicationintegration</cell>
      <cell>eai</cell>
    </row>
    <row>
      <cell>crossdomainapplications</cell>
      <cell>catalog</cell>
    </row>
    <row>
      <cell>crossdomainapplications</cell>
      <cell>fallout</cell>
    </row>
    <row>
      <cell>customermanagement</cell>
      <cell>accountreceivables</cell>
    </row>
    <row>
      <cell>customermanagement</cell>
      <cell>billcalculation</cell>
    </row>
    <row>
      <cell>customermanagement</cell>
      <cell>billingaccount</cell>
    </row>
    <row>
      <cell>customermanagement</cell>
      <cell>billingevent</cell>
    </row>
    <row>
      <cell>customermanagement</cell>
      <cell>billinginquiry</cell>
    </row>
    <row>
      <cell>customermanagement</cell>
      <cell>case</cell>
    </row>
    <row>
      <cell>customermanagement</cell>
      <cell>chargecalculation</cell>
    </row>
    <row>
      <cell>customermanagement</cell>
      <cell>collection</cell>
    </row>
    <row>
      <cell>customermanagement</cell>
      <cell>contact</cell>
    </row>
    <row>
      <cell>customermanagement</cell>
      <cell>information</cell>
    </row>
    <row>
      <cell>customermanagement</cell>
      <cell>order</cell>
    </row>
    <row>
      <cell>customermanagement</cell>
      <cell>problem</cell>
    </row>
    <row>
      <cell>customermanagement</cell>
      <cell>sla</cell>
    </row>
    <row>
      <cell>customermanagement</cell>
      <cell>self</cell>
    </row>
    <row>
      <cell>customermanagement</cell>
      <cell>servicerepresentative</cell>
    </row>
    <row>
      <cell>customermanagement</cell>
      <cell>transactionaldocument</cell>
    </row>
    <row>
      <cell>enterprisemanagement</cell>
      <cell>administrativeservices</cell>
    </row>
    <row>
      <cell>enterprisemanagement</cell>
      <cell>asset</cell>
    </row>
    <row>
      <cell>enterprisemanagement</cell>
      <cell>financial</cell>
    </row>
    <row>
      <cell>enterprisemanagement</cell>
      <cell>fraud</cell>
    </row>
    <row>
      <cell>enterprisemanagement</cell>
      <cell>hr</cell>
    </row>
    <row>
      <cell>enterprisemanagement</cell>
      <cell>knowledge</cell>
    </row>
    <row>
      <cell>enterprisemanagement</cell>
      <cell>regulatoryandcompliance</cell>
    </row>
    <row>
      <cell>enterprisemanagement</cell>
      <cell>revenueassurance</cell>
    </row>
    <row>
      <cell>enterprisemanagement</cell>
      <cell>security</cell>
    </row>
    <row>
      <cell>marketmanagement</cell>
      <cell>campaignandfunnel</cell>
    </row>
   <row>
      <cell>partnermanagement</cell>
      <cell>partner</cell>
    </row>
   <row>
      <cell>partnermanagement</cell>
      <cell>wholesaleandinterconnectbilling</cell>
    </row>
    <row>
      <cell>productmanagement</cell>
      <cell>catalog</cell>
    </row>
    <row>
      <cell>productmanagement</cell>
      <cell>lifecycle</cell>
    </row>
    <row>
      <cell>productmanagement</cell>
      <cell>performance</cell>
    </row>
    <row>
      <cell>productmanagement</cell>
      <cell>strategy</cell>
    </row>
   <row>
      <cell>resourcemanagement</cell>
      <cell>domain</cell>
    </row>
    <row>
      <cell>resourcemanagement</cell>
      <cell>fault</cell>
    </row>
    <row>
      <cell>resourcemanagement</cell>
      <cell>inventory</cell>
    </row>
    <row>
      <cell>resourcemanagement</cell>
      <cell>lifecycle</cell>
    </row>
    <row>
      <cell>resourcemanagement</cell>
      <cell>location</cell>
    </row>
    <row>
      <cell>resourcemanagement</cell>
      <cell>networknumber</cell>
    </row>
    <row>
      <cell>resourcemanagement</cell>
      <cell>order</cell>
    </row>
    <row>
      <cell>resourcemanagement</cell>
      <cell>performance</cell>
    </row>
    <row>
      <cell>resourcemanagement</cell>
      <cell>process</cell>
    </row>
    <row>
      <cell>resourcemanagement</cell>
      <cell>test</cell>
    </row>
    <row>
      <cell>resourcemanagement</cell>
      <cell>voucher</cell>
    </row>
    <row>
      <cell>resourcemanagement</cell>
      <cell>workforce</cell>
    </row>
    <row>
      <cell>resourcemanagement</cell>
      <cell>usage</cell>
    </row>
   	<row>
      <cell>salesmanagement</cell>
      <cell>account</cell>
   	</row>
   	<row>
      <cell>salesmanagement</cell>
      <cell>aids</cell>
    </row>
    <row>
      <cell>salesmanagement</cell>
      <cell>channel</cell>
   	</row>
   	<row>
      <cell>salesmanagement</cell>
      <cell>compensationandresults</cell>
    </row>
    <row>
      <cell>salesmanagement</cell>
      <cell>contract</cell>
   	</row>
   	<row>
      <cell>salesmanagement</cell>
      <cell>portals</cell>
    </row>
    <row>
      <cell>salesmanagement</cell>
      <cell>reporting</cell>
   	</row>
   	<row>
      <cell>salesmanagement</cell>
      <cell>solution</cell>
    </row>
    <row>
      <cell>servicemanagement</cell>
      <cell>catalog</cell>
    </row>
    <row>
      <cell>servicemanagement</cell>
      <cell>inventory</cell>
    </row>
    <row>
      <cell>servicemanagement</cell>
      <cell>order</cell>
    </row>
    <row>
      <cell>servicemanagement</cell>
      <cell>performance</cell>
    </row>
    <row>
      <cell>servicemanagement</cell>
      <cell>problem</cell>
    </row>
    <row>
      <cell>servicemanagement</cell>
      <cell>quality</cell>
    </row>
    <row>
      <cell>servicemanagement</cell>
      <cell>test</cell>
    </row>
    <row>
      <cell>suppliermanagement</cell>
      <cell>supplychain</cell>
    </row>
  </rows>
</dvm>
};


declare function xf:check($domain as xs:string,
    $subDomain as xs:string)
    as xs:boolean {

    let $data := xf:getDVM()
    
	return exists($data/dvm:rows/dvm:row[dvm:cell[1]=fn:lower-case($domain) and dvm:cell[2]=fn:lower-case($subDomain)])
};


declare variable $domain as xs:string external;
declare variable $subDomain as xs:string external;

xf:check($domain, $subDomain)