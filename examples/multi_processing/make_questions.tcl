#!/usr/bin/tclsh

for {set i 0} {$i<1000000} {incr i} {
	puts "$i+$i"
}
