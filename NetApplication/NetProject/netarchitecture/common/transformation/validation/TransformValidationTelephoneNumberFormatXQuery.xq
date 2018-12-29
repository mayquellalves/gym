xquery version "1.0" encoding "Cp1252";
(:: pragma  parameter="$telephoneNumbers" type="xs:anyType" ::)
(:: pragma  type="xs:anyType" ::)

declare namespace xf = "http://tempuri.org/netarchitecture/common/transformation/validation/TransformValidationTelephoneNumberFormatXQuery/";

declare function xf:TransformValidationTelephoneNumberFormatXQuery($telephoneNumbers as element(*))
    as element(*) {
  
          <validationTelephoneNumberFormat>
        	{
	 			for $telephoneNumber in $telephoneNumbers/*
	 			return 	
	 				xf:Validate($telephoneNumber)
	        }
        </validationTelephoneNumberFormat>
  
};

(:Validação de formato de TELEFONE

	FIXO: 		(000) 0000-0000 ou 0000-0000
	CELULAR:	(000) 0000-0000 ou 0000-0000 ou (000) 00000-0000 ou 00000-0000

:)
declare function xf:Validate($telephoneNumber as element(*)) as xs:string? {
	
		if(fn:not(fn:matches(string($telephoneNumber),"^(\d{2,3}|\(\d{2,3}\))?[ ]?\d{3,5}[-]?\d{3,4}$"))) then
			fn:concat(fn:local-name($telephoneNumber), ", ")
		else()

};

declare variable $telephoneNumbers as element(*) external;

xf:TransformValidationTelephoneNumberFormatXQuery($telephoneNumbers)
