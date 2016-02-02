#!/usr/bin/tclsh

# An example of a pipe between tcl and bc
#
#	Mark Veltzer

set fileId [open "|bc" w]
for {set i 0} {$i<10} {incr i} {
	puts $fileId "$i+$i"
}
close $fileId
