#!/usr/bin/tclsh

set io [open "|tclsh ex_wc_child.tcl" "r+"]
puts $io "line1"
puts $io "line2"
puts $io "line3"
puts $io "line4"
puts $io "over"
flush $io
gets $io line
puts $line
puts $io "line5"
puts $io "line6"
puts $io "line7"
puts $io "over"
flush $io
gets $io line
puts $line
puts $io "die"
close $io
