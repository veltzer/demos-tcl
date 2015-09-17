#!/usr/bin/tclsh

# a simple calculator summing all numbers given to it

set sum 0
while {[gets stdin line]>0} {
	incr sum $line
}
puts "sum is $sum"
