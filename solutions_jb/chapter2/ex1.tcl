#!/usr/bin/tclsh

set name "Mark Veltzer"
set age 43
set birth 1972
set year 2016
set age [expr $year-$birth]
set name_age "$name $age"
puts $name_age
