#!/usr/bin/tclsh

# a simple calculator summing all numbers given to it

set sum 0
while {![eof stdin]} {
	gets stdin line
	incr sum $line
}
puts "sum is $sum"
