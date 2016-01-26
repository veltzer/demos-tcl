#!/usr/bin/tclsh

# Next line will create a run time error...
# myproc

proc myproc {} {
	puts "im in myproc (version 1)"
}

myproc

proc myproc {} {
	puts "im in myproc (version 2)"
}

myproc
