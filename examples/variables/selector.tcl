#!/usr/bin/tclsh

# An example of using $$foo
#
#		Mark Veltzer

set x 5
set y x
set z y

puts [expr $$y]
set selector z
puts [expr $[expr $[expr $$selector]]]
