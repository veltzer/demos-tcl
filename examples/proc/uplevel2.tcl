#!/usr/bin/tclsh

# An example of using 'uplevel' change callers variables...
#
#		Mark Veltzer

proc one {} {
	dotwice {puts "hello"}
}

proc dotwice {body} {
	uplevel 1 $body
	uplevel 1 $body
}

one
