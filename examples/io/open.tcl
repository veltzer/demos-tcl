#!/usr/bin/tclsh

# this is an example of using open until EOF

set filep [open "/etc/passwd" r]
while {[gets $filep line]>0} {
	puts "Hey! got another line '$line'"
}
close $filep
