#!/usr/bin/tclsh

puts "La la la, I can print to the screen..."

proc puts {a} {
	put "hey"
}

puts "Hey, where did this go?!?"
