xquery version "1.0" encoding "Cp1252";
(:: pragma  parameter="$emails" type="xs:anyType" ::)
(:: pragma  type="xs:anyType" ::)

declare namespace xf = "http://tempuri.org/netarchitecture/common/transformation/validation/TransformValidationEmailFormatXQuery/";

declare function xf:TransformValidationEmailFormatXQuery($emails as element(*))
    as element(*) {
        
        <validationEmailFormat>
        	{
	 			for $em in $emails/*
	 			return 	
	 				xf:Validate($em)
	        }
        </validationEmailFormat>
};

declare function xf:Validate($em as element(*)) as xs:string? {
		
		if(fn:not(fn:matches(string($em),"^.+@[^\.].*\.[a-z]{2,}$"))) then
			fn:concat(fn:local-name($em), ", ")
		else()

};

declare variable $emails as element(*) external;

xf:TransformValidationEmailFormatXQuery($emails)
