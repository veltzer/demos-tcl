#!/usr/bin/tclsh

proc sumUpTo {x} {
	if {$x == 0} {
		return 0
	} else {
		set sum $x
		incr sum [sumUpTo [expr {$x-1}]]
		return $sum
	}
}
set result [sumUpTo 10]
puts "result is $result"
