#!/usr/bin/tclsh

proc sumall {args} {
	set sum 0
	foreach x $args {
		incr sum $x
	}
	return $sum
}
set myresult [sumall 5 6 7 8 9]
puts "myresult is $myresult"
set myresult [sumall 5 6 7 8]
puts "myresult is $myresult"
set myresult [sumall 5 6 7]
puts "myresult is $myresult"
set myresult [sumall 5 6]
puts "myresult is $myresult"
set myresult [sumall 5]
puts "myresult is $myresult"
set myresult [sumall]
puts "myresult is $myresult"
