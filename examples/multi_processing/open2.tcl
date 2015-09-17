#!/usr/bin/tclsh

# 
#
#	Mark Veltzer

set tempFile /tmp/tmp.txt
set fileId [open $tempFile "w"]
puts $fileId "wow"
puts $fileId {
	puts "hello"
	puts "world"
	exit 7
}
puts "where did I come from?!?"
close $fileId
