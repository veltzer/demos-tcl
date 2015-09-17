#!/usr/bin/tclsh

proc appendSomethingTolist {l} {
	puts "inside the procedure: l is $l"
	lappend l "foo"
	puts "inside the procedure: l is $l"
}
set mylist {}
lappend mylist "bar"
lappend mylist "fubar"
appendSomethingTolist $mylist
puts "mylist is $mylist"
