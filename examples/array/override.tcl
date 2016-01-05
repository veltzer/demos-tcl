#!/usr/bin/tclsh

# Mark Veltzer

array set phonebook {
	"mark" "050-5665636"
	"shay" "054-4506093"
}

# this is illegal
# set phonebook "Hey!"

#unset phonebook
array unset phonebook
set phonebook "Hey!"
puts "phonebook is $phonebook"
