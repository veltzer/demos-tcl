#!/usr/bin/tclsh

proc printit {{name "mark"} {times 10}} {
	for {set i 0} {$i < $times} {incr i} {
		puts "$i -> $name"
	}
}
printit "yossi" 5
proc printit {} {
	puts "no printit for you..."
}
#printit
printit "yossi" 5
