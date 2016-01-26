#!/usr/bin/tclsh

# simple array iteration example
# Mark Veltzer

array set phonebook {
	"mark veltzer" "050-5665636"
	"shay sarid" "054-4506093"
}

foreach day {sun mon tue} {
	puts "day is $day"
}
# look! the variable keeps the last value of the iteration
puts "day is $day"

foreach name [array names phonebook] {
	puts "name is $name"
}

foreach {name phonenumber} [array get phonebook] {
	puts "name is $name"
	puts "phonenumber is $phonenumber"
}
