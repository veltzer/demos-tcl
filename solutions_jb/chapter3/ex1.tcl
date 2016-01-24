#!/usr/bin/tclsh

set price_steak 1
set price_drink 2
set price_cake 3
set price_pizza 4
puts "how many steaks"
set num_steak [gets stdin]
set num_drink [gets stdin]
set num_cake [gets stdin]
set num_pizza [gets stdin]
set price [expr $num_steak*$price_steak+num_drink*price_drink+num_cake*price_cake+num_pizza*price_pizza]
puts "total price is $price"
