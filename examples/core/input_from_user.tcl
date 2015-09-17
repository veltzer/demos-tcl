#!/usr/bin/tclsh
#
# Example of reading data from the standard input...
#
# 	Mark Veltzer

set data [gets stdin]
puts "data is $data"
