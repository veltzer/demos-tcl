#!/usr/bin/tclsh

# This is an example of writing to a file...

set filep [open "mytmp" w]
puts -nonewline $filep "hello"
flush $filep
puts "please kill me now, master..."
gets stdin
