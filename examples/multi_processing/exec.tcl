#!/usr/bin/tclsh

# A simple example of running exec in tcl.
# Notes:
# - The output of exec is all the output of the command...
# - The script continues to run so 'exec' in tcl is different
# from the exec family of system calls.
#
#
#	Mark Veltzer

puts [exec ls -l]
puts "that is folks..."
