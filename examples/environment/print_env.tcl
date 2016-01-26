#!/usr/bin/tclsh

# This example prints all envrionment variables from a tcl script...
# Mark Veltzer

foreach env_var_name [array names env] {
	puts "$env_var_name is $env($env_var_name)"
}
