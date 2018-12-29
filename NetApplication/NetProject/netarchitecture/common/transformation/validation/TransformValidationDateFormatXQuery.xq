xquery version "1.0" encoding "Cp1252";
(:: pragma  parameter="$dates" type="xs:anyType" ::)
(:: pragma  type="xs:anyType" ::)

declare namespace xf = "http://tempuri.org/netarchitecture/common/transformation/validation/TransformValidationDateFormatXQuery/";

declare function xf:TransformValidationDateFormatXQuery($dates as element(*)) as element(*) {
        
        <validationDateFormat>
        	{
	 			for $date in $dates/*
	 			return 	
	 				xf:Validate($date)
	        }
        </validationDateFormat>

};

(:Validação de formato de campos DATE

	DATE: 				yyyy-mm-dd 					ou	yyyy/mm/dd
	DATE_TIME:			yyyy-mm-ddThh:mm:ss			ou 	yyyy/mm/ddThh:mm:ss
	DATE_TIME_TIMEZONE:	yyyy-mm-ddThh:mm:ss-hh:mm	ou 	yyyy/mm/ddThh:mm:ss-hh:mm


:)
declare function xf:Validate($date as element(*)) as xs:string? {
	
		if(fn:not(fn:matches(string($date),"^(?=\d)(?:(?!(?:1582(?:\.|-|\/)10(?:\.|-|\/)(?:0?[5-9]|1[0-4]))|(?:1752(?:\.|-|\/)0?9(?:\.|-|\/)(?:0?[3-9]|1[0-3])))(?=(?:(?!000[04]|(?:(?:1[^0-6]|[2468][^048]|[3579][^26])00))(?:(?:\d\d)(?:[02468][048]|[13579][26]))\D0?2\D29)|(?:\d{4}\D(?!(?:0?[2469]|11)\D31)(?!0?2(?:\.|-|\/)(?:29|30))))(\d{4})([-\/.])(0?\d|1[012])\2((?!00)[012]?\d|3[01])(T|\d)|(?:\x20)(?:$|(?=\x20\d)\x20))?((?:(?:0?[1-9]|1[012])(?::[0-5]\d){0,2}(?:\x20[aApP][mM]))|(?:[01]\d|2[0-3])(?::[0-5]\d){1,2})?$|[-+]((0[0-9]|1[0-3]):([03]0|45)|13:00)$"))) then
			fn:concat(fn:local-name($date), ", ")
		else()

};

declare variable $dates as element(*) external;

xf:TransformValidationDateFormatXQuery($dates)
