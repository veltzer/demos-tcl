#!/usr/bin/python3

'''
this script will install all the required packages that you need on
ubuntu to compile and work with this package.
'''

import subprocess # for check_call

packs=[
	'tcl',
	'tcl8.4',
	'tcl8.5',
	'tcl8.6',
]

args=['sudo','apt-get','install','--assume-yes']
args.extend(packs)
try:
	subprocess.check_call(args)
except:
	pass
