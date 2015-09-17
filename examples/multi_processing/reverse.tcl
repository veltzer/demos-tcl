#!/usr/bin/tclsh
#
set tempFileName temp.tcl
set outfl [open $tempFileName w]
puts $outfl {
	set len [gets stdin line]
	if {$len < 5} {exit -1}
	for {set i [expr {$len-1}]} {$i >= 0} {incr i -1} {
		append l2 [string range $line $i $i]
	}
	puts $l2
	#exit 0
}
flush $outfl
close $outfl

# Run the new Tcl script:
set io [open "|[info nameofexecutable] $tempFileName" r+]
# send a string to the new program
# *MUST FLUSH*
puts $io "This will come back backwards."
flush $io

# Get the reply, and display it.
set len [gets $io line]

puts "To reverse: 'This will come back backwards.'"
puts "Reversed is: $line"
puts "The line is $len characters long"

# Run the program with input defined in an exec call

set invert [exec [info nameofexecutable] $tempFileName << \ "ABLE WAS I ERE I SAW ELBA"]

# display the results
puts "The inversion of 'ABLE WAS I ERE I SAW ELBA' is \n $invert"
# Clean up
file delete $tempFileName
