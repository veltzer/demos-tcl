#!/usr/bin/tclsh

# printing array statistics
# Mark Veltzer

array set phonebook {
	"mark" "050-5665636"
	"shay" "054-4506093"
}

puts "[array statistics phonebook]"
