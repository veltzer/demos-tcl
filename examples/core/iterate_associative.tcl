#!/usr/bin/tclsh

array set countryToCapital {Israel Jerusalem USA Washington}
foreach country [array names countryToCapital] {
	puts "country is $country and capital is $countryToCapital($country)"
}
