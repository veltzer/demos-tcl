#!/usr/bin/tclsh

# simple array example
# Mark Veltzer

array set marks_data {
	name Mark
	surname Veltzer
	phone "050-5665636"
}

array set shays_data {
	name Shay
	surname Sarid
	phone "054-4506093"
}

array set phonebook {
	"014995815" $marks_data
	"243234324" $shays_data
}

set id_to_search 014995815
set marks_phone [expr $phonebook($id_to_search)(phone)]
puts "marks_phone is $marks_phone"
