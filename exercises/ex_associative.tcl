#!/usr/bin/tclsh

puts "give me the text"
set listOfWords [split [gets stdin]]

foreach word $listOfWords {
	incr count($word)
}
foreach {word cnt} [array get count] {
	puts "$word ===> $cnt"
}
