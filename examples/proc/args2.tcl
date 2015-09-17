#!/usr/bin/tclsh

proc debug {name args} {
	foreach line $args {
		puts "$name: $line"
	}
}
debug "critical" "this" "is" "a" "critical" "message"
debug "warning17" "this is the first part" "this is the second part"
