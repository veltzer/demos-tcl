#!/usr/bin/tclsh

# An example of how to return a code to the OS.
# The default is, ofcourse, 0.
# You can see the code on the cmd line if, after running this
# script, you do echo $?
#
# Notes:
# - exit without arguments terminates the current script and return
# 0 to the OS.
# - return without arguments terminates the current procedure, which
# at the top level means the whole script, and returns 0 to the OS.
# - return with a value from the top level script DOES NOT mean a value
# for the OS code. The value is simply ignored.
# - exit [n] is the simplest way to exit from any context.
# - 'error' will return 1 to the OS (with disregard to the last argument)
# - 'return -code error' returns 1 as the code to the OS.
#
#	Mark Veltzer

#exit
#return
#return 7
exit 7
#error "this is the mandatory message" "this is the optional info" 5
#return -code error "this is the error"
