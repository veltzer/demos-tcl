#!/usr/bin/tclsh

# A simple example of how to open a file in tcl and iterate it's lines.
# Note that the lines that you read are missing the newline!
# Mark Veltzer

set fileId [open "/etc/passwd" r]
while {[gets $fileId line]>=0} {
	puts "line is $line"
}
close $fileId
