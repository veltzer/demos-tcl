#!/usr/bin/tclsh

proc do_something_bad {} {
	error "hello"
	puts "this is a message"
}

catch do_something_bad
puts "this is another message"
