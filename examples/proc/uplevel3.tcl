#!/usr/bin/tclsh

# An example of implementing a new for loop using uplevel...
#
#		Mark Veltzer

proc myfor {start_code cond_code after_code body} {
	set conditionCmd [list expr $cond_code]
	uplevel 1 $start_code
	while {[uplevel 1 $conditionCmd]} {
		uplevel 1 $body
		uplevel 1 $after_code
	}
}

proc useit {} {
       	myfor {set i 0} {$i<10} {incr i} {
		puts "i is $i"
	}
}

useit
