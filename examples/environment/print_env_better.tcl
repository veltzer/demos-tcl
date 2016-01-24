#!/usr/bin/tclsh

# This example prints all envrionment variables from a tcl script...
# Mark Veltzer

foreach {env_var_name env_var_value} [array get env] {
	puts "$env_var_name is $env_var_value"
}
