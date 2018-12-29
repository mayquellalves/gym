xquery version "1.0" encoding "Cp1252";

declare namespace xf = "http://tempuri.org/netarchitecture/common/transformation/validation/TransformValidationPeriodXQuery/";

declare function xf:TransformValidationPeriodXQuery($startDate as element(*), $endDate as element(*))
    as element(*) {
        
        <validationPeriod>
            {
				if((fn:not(fn:empty($startDate)) and $startDate ne "") and 
					(fn:not(fn:empty($endDate)) and $endDate ne ""))then
			    	xf:Validate($startDate, $endDate)
			    else()
			}	
        
        </validationPeriod>
};

declare function xf:Validate($startDate as element(*)?, $endDate as element(*)?)
    as xs:string? {
		if($startDate gt $endDate) then
			concat(fn:local-name($startDate),", " ,fn:local-name($endDate),", ")
		else(
		)
};

declare variable $startDate as element(*) external;
declare variable $endDate as element(*) external;

xf:TransformValidationPeriodXQuery($startDate, $endDate)
