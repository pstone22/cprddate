/* Program for converting dates in CPRD files - ELS & PWS 2020

Syntax:
	cprddate {list variables to convert}
	e.g. cprddate eventdate sysdate

*/

capture program drop cprddate
program define cprddate
	version 13.0
	syntax varlist
	
	foreach var of local varlist {		
		
		tempvar newdate
		
		//generate temporary date variable from string date
		gen `newdate' = date(`var', "DMY")
		
		//transfer label information to new temporary date variable
		_crcslbl `newdate' `var'
		
		//position new temporary date variable after old string date variable
		order `newdate', after(`var')
		
		//remove old date variable
		drop `var'
		
		//generate permanent date variable
		gen `var' = `newdate'
		
		//transfer label information from temporary to permanent date variable
		_crcslbl `var' `newdate'
		
		//position permanent date variable after temporary date variable
		order `var', after(`newdate')
		
		//format datetime variable as date
		format %td `var'
	}

end // End program
	
