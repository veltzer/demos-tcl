#!/usr/bin/tclsh

# Solution to exercise 6.2

set s "This is a simple example"

puts -nonewline "a. "
flush stdout
if {[string index $s 0]=="T"} {
	puts "yes"
} else {
	puts "no"
}

puts -nonewline "b. "
flush stdout
if {[string first "mp" $s]!=-1} {
	puts "yes"
} else {
	puts "no"
}

puts -nonewline "c. "
flush stdout
if {[string index $s [expr [string length $s]-1]]=="r"} {
	puts "yes"
} else {
	puts "no"
}

puts -nonewline "d. "
flush stdout
if {[regexp {\ws.*e\w} $s]==1} {
	puts "yes"
} else {
	puts "no"
}
