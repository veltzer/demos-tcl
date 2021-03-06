#!/usr/bin/tclsh

# Solution to exercise 4.1

array set months {
	1 "jan"
	2 "feb"
	3 "mar"
	4 "apr"
	5 "may"
	6 "jun"
	7 "jul"
}
set sum 0
foreach {month_num} [lsort [array names months]] {
	set month_name $months($month_num)
	puts -nonewline "salary for month $month_name? "
	flush stdout
	gets stdin salary
	incr sum $salary
}
puts "sum is $sum"
