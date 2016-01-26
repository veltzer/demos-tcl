#!/usr/bin/tclsh

#array set countryToCapital {Israel Jerusalem USA Washington}
set countryToCapital(Israel) "Jerusalem"
set countryToCapital(USA) "Washington"
#puts [array names countryToCapital]
foreach {country capital} [array get countryToCapital] {
	set capitalToCountry($capital) $country
}
#while {1} {
#	puts -nonewline "Give me a country: "
#	flush stdout
#	set country [gets stdin]
#	puts "The capital of $country is $countryToCapital($country)"
#}
while {1} {
	puts -nonewline "Give me a capital: "
	flush stdout
	set capital [gets stdin]
	puts "The country of $capital is $capitalToCountry($capital)"
}
