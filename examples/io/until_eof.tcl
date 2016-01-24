#!/usr/bin/tclsh

# This is an example of a program receiving lines from standard input
# until there are no more lines.

set num 0
while {[gets stdin line]>0} {
	incr num
}
puts "number of lines that I got is $num"
