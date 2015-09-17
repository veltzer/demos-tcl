#!/usr/bin/tclsh

proc sum {l} {
	set sum 0
	foreach x $l {
		incr sum $x
	}
	return $sum
}
set result [sum {5 6 7}]
puts "result is $result"
