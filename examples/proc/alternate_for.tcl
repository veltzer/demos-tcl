#!/usr/bin/tclsh

# An example of using 'uplevel' change callers variables...
#
#		Mark Veltzer

proc alt_for10 {body1 body2} {
	for {set i 0} {$i<10} {incr i} {
		if {$i%2==0} {
			uplevel 1 $body1
		} else {
			uplevel 1 $body2
		}
	}
}

set z 5
set m -40
alt_for10 {
	puts "z is $z"
	incr z 2
} {
	puts "m is $m"
	incr m 3
}
