#!/usr/bin/tclsh

# Solution to the text exercise

puts -nonewline "give me some text: "
flush stdout
gets stdin line
set line_without_double_whitespaces [regexp -all -inline {\S+} $line]
foreach word [split $line_without_double_whitespaces] {
	incr count($word)
}
parray count
#foreach {word cnt} [array get count] {
#	puts "$word ===> $cnt"
#}
