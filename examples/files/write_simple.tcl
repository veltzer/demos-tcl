#!/usr/bin/tclsh

# A simple example of writing to a file
# Mark Veltzer

set fileId [open "/tmp/foobar" w]
puts $fileId "Mark Veltzer"
close $fileId
