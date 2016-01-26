#!/usr/bin/tclsh

# Solution to exercise 5.1

set workers {Larry Jim John Mary}

# a
puts "2nd worker is [lindex $workers 1]"

# b
lappend workers Mark
puts [list $workers]

# c
set workers [linsert $workers 2 Ofir]
puts [list $workers]

# d
set workers [linsert $workers 0 Guy]
puts [list $workers]

# e
puts "length of list is [llength $workers]"

# f
set workers [lreplace $workers 3 3]
puts [list $workers]

# g
set workers [lreplace $workers 0 1 Foo Bar]
puts [list $workers]

# h
#set workers [lreplace $workers 0 2]
set workers [lrange $workers 3 end]
puts [list $workers]

# i
puts [lsearch $workers Mary]

# j
puts [lsearch $workers Phil]

# k
set workers [lsort $workers]
puts [list $workers]

# l
set mystring [join $workers ,]
puts "mystring is $mystring"

# n
set new_list [split $mystring ,]
puts "new_list is [list $new_list]"
