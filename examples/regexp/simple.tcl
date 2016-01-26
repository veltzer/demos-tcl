#!/usr/bin/tclsh

# regexp examples

set re "^Th(is|at)*work$"
set str "Thatatatisisatisatwork"
puts [regexp $re $str]
