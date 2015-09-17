#!/usr/bin/tclsh

proc sum {a b} {
	incr a
	incr b
	return [expr {$a+$b}]
}
set x 5
set y 6
#sum $x $y 
set result [sum $x $y]
puts "the sum of 5 and 6 is $result"
# lets print x and y
puts "x is $x"
puts "y is $y"
