#!/usr/bin/tclsh

set count 0
while {1} {
	gets stdin line
	if {$line=="over"} {
		puts $count
	} elseif {$line=="die"} {
		exit 0
	} else {
		incr count
	}
}
