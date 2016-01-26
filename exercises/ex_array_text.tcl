#!/usr/bin/tclsh

# Solution to the text exercise

puts -nonewline "give me some text: "
flush stdout
foreach word [split [gets stdin]] {
	incr count($word)
}
parray count
#foreach {word cnt} [array get count] {
#	puts "$word ===> $cnt"
#}
