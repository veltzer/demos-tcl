#!/usr/bin/tclsh

# Solution to the text exercise

puts -nonewline "give me some text: "
flush stdout
while {[gets stdin line]>0} {
	foreach word [split $line] {
		incr count($word)
	}
}
parray count
#foreach {word cnt} [array get count] {
#	puts "$word ===> $cnt"
#}
