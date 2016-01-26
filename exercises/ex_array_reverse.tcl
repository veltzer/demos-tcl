#!/usr/bin/tclsh

# Two alternative syntaxes to initialize the array...
#array set countryToCapital {Israel Jerusalem USA Washington}
set countryToCapital(Israel) "Jerusalem"
set countryToCapital(USA) "Washington"
# print the array for debugging purposes
#parray countryToCapital
# reverse the array
foreach {country capital} [array get countryToCapital] {
	set capitalToCountry($capital) $country
}
# print the array for debugging purposes
#parray capitalToCountry 
# query country -> capital
#while {1} {
#	puts -nonewline "Give me a country: "
#	flush stdout
#	set country [gets stdin]
#	puts "The capital of $country is $countryToCapital($country)"
#}
# query capital -> country
while {1} {
	puts -nonewline "Give me a capital: "
	flush stdout
	gets stdin capital
	puts "$capital is the capital city of $capitalToCountry($capital)"
}
