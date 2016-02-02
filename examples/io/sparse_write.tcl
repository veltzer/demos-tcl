#!/usr/bin/tclsh

# This is an example of writing to a file...

set filep [open "mytmp" w]
seek $filep 1000000
puts $filep "hello"
close $filep
