#!/usr/bin/tclsh

# An example of passing an array by reference
#
#		Mark Veltzer

array set phonebook {
	"mark veltzer" "050-5665636"
	"shay sarid" "054-4506093"
}

proc print_an_array {arrayname} {
	upvar $arrayname phonebook
	foreach {name phonenumber} [array get phonebook] {
		puts "name is $name"
		puts "phonenumber is $phonenumber"
	}
}

print_an_array phonebook
