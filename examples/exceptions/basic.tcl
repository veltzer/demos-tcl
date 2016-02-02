#!/usr/bin/tclsh

# An example of using $$foo
#
#		Mark Veltzer

proc over18 {age} {
	if {$age<=0} {
		error "You stupid git! only pass positive age..."
	}
	return [expr $age>=18]
}

catch {
	puts [over18 -11]
}
puts [over18 17]
puts [over18 19]
