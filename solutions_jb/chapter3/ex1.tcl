#!/usr/bin/tclsh

# Solution to exercise 3.1

set price_steak 1
set price_drink 2
set price_cake 3
set price_pizza 4
puts -nonewline "how many steaks (each one costs $price_steak) "
flush stdout
set num_steak [gets stdin]
puts -nonewline "how many drinks (each one costs $price_drink) "
flush stdout
set num_drink [gets stdin]
puts -nonewline "how many cakes (each one costs $price_cake) "
flush stdout
set num_cake [gets stdin]
puts -nonewline "how many pizzas (each one costs $price_pizza) "
flush stdout
set num_pizza [gets stdin]
set price [expr $num_steak*$price_steak+$num_drink*$price_drink+$num_cake*$price_cake+$num_pizza*$price_pizza]
puts "total price is $price"
