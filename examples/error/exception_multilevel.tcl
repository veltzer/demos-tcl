#!/usr/bin/tclsh

proc myproc {x} {
	if {$x<0} {
		error "illegal negative value" 7 9
	}
}

proc otherproc {} {
	myproc -5
}

proc mainproc {} {
	catch {
		otherproc
	} theError 
	puts "theError is ($theError)"
	puts "errorInfo is ($::errorInfo)"
	puts "errorCode is ($::errorCode)"
}

mainproc
