#!/usr/bin/tclsh

# This example prints the TCL platform we are running on...
# Note that this platform is not just a version number but rather
# an array (associative in tcl) with lots of information about
# the platform including os version and more.
# Rather oddly, tcl's own version number is not to be found in this one...
# Mark Veltzer

foreach {env_var_name env_var_value} [array get tcl_platform] {
	puts "$env_var_name is $env_var_value"
}
