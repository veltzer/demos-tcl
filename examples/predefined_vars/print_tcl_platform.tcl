#!/usr/bin/tclsh

# This example prints the TCL platform we are running on...
# Mark Veltzer

foreach {env_var_name env_var_value} [array get tcl_platform] {
	puts "$env_var_name is $env_var_value"
}
