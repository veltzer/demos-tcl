#!/usr/bin/tclsh

# An example of pipes between tcl and 'ls -l'
#
#	Mark Veltzer

#set fileId [open "|ls -l" r]
set fileId [open "|find / -type f" r]
gets $fileId line
while {![eof $fileId]} {
	puts "line is $line"
	gets $fileId line
}
puts "child may not be dead but the child side of the pipe has closed so we may as well close our own side of the pipe..."
close $fileId
