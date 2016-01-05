#!/usr/bin/tclsh

# simple array example
# Mark Veltzer

array set phonebook {
	"mark veltzer" "050-5665636"
	"shay sarid" "054-4506093"
}

puts [array get phonebook]
puts [array size phonebook]
puts [array names phonebook]
puts [array exists phonebook]
puts [array exists myphonebook]
