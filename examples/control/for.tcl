#!/usr/bin/tclsh

for {set i 0} {$i<10} {incr i} {
	puts "i is $i"
	if {$i > 5 } { break }
}
