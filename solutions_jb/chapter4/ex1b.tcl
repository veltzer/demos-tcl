#!/usr/bin/tclsh

# Solution to exercise 4.1

array set months {
	"jan" 1
	"feb" 2
	"mar" 3
	"apr" 4
	"may" 5
	"jun" 6
	"jul" 7
}
set sum 0
foreach {month_name} [array names months] {
	puts -nonewline "salary for month $month_name? "
	flush stdout
	gets stdin salary
	incr sum $salary
}
puts "sum is $sum"
