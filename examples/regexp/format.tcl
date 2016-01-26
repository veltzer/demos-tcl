#!/usr/bin/tclsh

# regexp examples

set name "pi"
set value 3.141592

puts [format "did you know that %s is %.2f" $name $value] 

set mylist {8 43 76 22 1234}

foreach val $mylist {
	puts [format "%8d |" $val]
}
