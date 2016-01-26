#!/usr/bin/tclsh

proc sum {a b} {
	incr a
	incr b
	return [expr {$a+$b}]
}
set x 5
set y 6
puts "the sum of $x and $y is [sum $x $y]"
# lets print x and y
puts "x is $x"
puts "y is $y"
