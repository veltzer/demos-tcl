#!/usr/bin/python3

'''
this script will install all the required packages that you need on
ubuntu to compile and work with this package.
'''

import subprocess # for check_call

tcl_version='8.6'

packs=[
	'tcl8.4',
	'tcl8.5',

	'tk',
	'tcl',
	'tcl-doc',
	'tcl{0}'.format(tcl_version),
	'tcl{0}-dev'.format(tcl_version),
	'tcl{0}-doc'.format(tcl_version),
]

args=['sudo','apt-get','install','--assume-yes']
args.extend(packs)
subprocess.check_call(args)
