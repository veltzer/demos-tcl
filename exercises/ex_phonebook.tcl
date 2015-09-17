#!/usr/bin/tclsh

# solution to the phonebook exercise...
#
# Notes:
# The 'phonebook' variable is global. This is UGLY!!!!
#
#		Mark Veltzer

proc showMenu {} {
	puts "1) Add a name/phone."
	puts "2) Delete a name from the book."
	puts "3) Modify the phone for a name."
	puts "4) Show the entire phonebook."
	puts "5) Search for phone by name."
	puts "6) Exit."
	puts "enter your selection:"
	set selection [gets stdin]
	return $selection
}

proc addNamePhone {} {
	global phonebook
	puts "Give me a name..."
	set name [gets stdin]
	puts "Give me a phone..."
	set phone [gets stdin]
	set phonebook($name) $phone
}

proc deleteName {} {
	global phonebook
	puts "Give me a name..."
	set name [gets stdin]
	array unset phonebook $name
}

proc modifyName {} {
	global phonebook
	puts "Give me a name..."
	set name [gets stdin]
	puts "Give me a new phone..."
	set phone [gets stdin]
	set phonebook($name) $phone
}

proc printBook {} {
	global phonebook
	foreach {name phone} [array get phonebook] {
		puts "$name: $phone"
	}
}

proc searchName {} {
	global phonebook
	puts "Give me a name..."
	set name [gets stdin]
	set phone $phonebook($name) 
	puts "phone is $phone"
}

proc exitApplication {} {
	global stop
	set stop 1
}

set stop 0
while {$stop==0} {
	set selection [showMenu]
	switch $selection {
		1 { addNamePhone }
		2 { deleteName }
		3 { modifyName }
		4 { printBook }
		5 { searchName }
		6 { exitApplication }
		default {
			puts "I don't know what you mean by $selection"
		}
	}
}
