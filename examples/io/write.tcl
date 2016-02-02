#!/usr/bin/tclsh

# This is an example of writing to a file...

set filep [open "mytmp" w]
puts $filep "Hello, World!"
close $filep
