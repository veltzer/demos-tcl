#!/usr/bin/python3

'''
this script will install all the required packages that you need on
ubuntu to compile and work with this package.
'''

import subprocess # for check_call

def add_version(l, tcl_version, full):
	l.extend([
		'tcl{0}'.format(tcl_version),
		'tcl{0}-dev'.format(tcl_version),
		'tcl{0}-dbgsym'.format(tcl_version),
	])
	if full:
		l.extend([
			'tcl{0}-doc'.format(tcl_version),
		])

packs=[
	'tk',
	'tcl',
	'tcl-doc',
]
add_version(packs, '8.6', True)
add_version(packs, '8.5', False)
add_version(packs, '8.4', False)

args=['sudo','apt-get','install','--assume-yes']
args.extend(packs)
subprocess.check_call(args)
