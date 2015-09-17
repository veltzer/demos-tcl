#!/usr/bin/tclsh

# An example of open
#
#	Mark Veltzer

set fileId [open "|ls -l" r]
#puts "fileId is $fileId"
while {[gets $fileId line]>=0} {
	puts "line is $line"
}
puts "child is probably dead..."
