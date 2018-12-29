xquery version "1.0" encoding "Cp1252";
(:: pragma  parameter="$documents" type="xs:anyType" ::)
(:: pragma  type="xs:anyType" ::)

declare namespace xf = "http://tempuri.org/netarchitecture/common/transformation/validation/TransformValidationDocumentFormatXQuery/";

declare function xf:TransformValidationDocumentFormatXQuery($documents as element(*)) as element(*) {
   
        <validationDocumentFormat>
        	{
	 			for $document in $documents/*
	 			return 	
	 				xf:Validate($document)
	        }
        </validationDocumentFormat>
   
};

(:Validação de formato de CPF e CNPJ

	CPF:  00000000000
	CNPJ: 00000000000000
	

:)
declare function xf:Validate($document as element(*)) as xs:string? {
	
		if(fn:not(fn:matches(string($document),"[0-9]{8,14}"))) then
			fn:concat(fn:local-name($document), ", ")
		else()

};

declare variable $documents as element(*) external;

xf:TransformValidationDocumentFormatXQuery($documents)
