#!/usr/bin/tclsh

# A simple example of running exec in tcl.
# Notes:
# - The output of exec is all the output of the command...
# - The script continues to run so 'exec' in tcl is different
# from the exec family of system calls.
#
#
#	Mark Veltzer

set output_from_command [exec ls -l]
puts "the output of ls -l is...\n$output_from_command"
#puts [exec ls -l]
#puts "That's it folks..."
