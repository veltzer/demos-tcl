#!/usr/bin/tclsh

# A simple namespace example
#
#		Mark Veltzer

set g 7

proc one {} {
	#global g
	puts "g is $g"
}

set ns [namespace origin one]
set nsc [namespace current]
namespace upvar $nsc g ${ns}::g
one
