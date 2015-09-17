#!/usr/bin/tclsh

set name "Luke"

switch $name {
	"Luke" {
		puts "I am your father"
	}
	"Inigo" {
		puts "You killed my father, prepare to die!"
	}
	"Lia" {
		puts "I am your father, too"
	}
	default {
		puts "I don't know who you are..."
	}
}
