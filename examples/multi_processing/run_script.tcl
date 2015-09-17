#!/usr/bin/tclsh

# An example of how one script runs another in TCL and
# gets it's error code...
#
#	Mark Veltzer

set script_path [file join [pwd] seven_script.tcl]
puts "script_path is $script_path"
set status 0
if {[catch {exec $script_path} results options]} {
	set details [dict get $options -errorcode]
	if {[lindex $details 0] eq "CHILDSTATUS"} {
		set status [lindex $details 2]
		puts "child exit with status $status"
	} else {
		puts "Some kind of unexpected failure"
	}
}
