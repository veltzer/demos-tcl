'''
dependencies for this project
'''

def add_version(l, tcl_version, full):
    l.extend([
        'tcl{0}'.format(tcl_version),
        'tcl{0}-dev'.format(tcl_version),
#        'tcl{0}-dbgsym'.format(tcl_version),
    ])
    if full:
        l.extend([
            'tcl{0}-doc'.format(tcl_version),
        ])

def populate(d):
    d.packs=[
        'tk',
        'tcl',
        'tcl-doc',
    ]
    add_version(d.packs, '8.6', False)
    add_version(d.packs, '8.5', False)
    add_version(d.packs, '8.4', False)

def getdeps():
    return [
        __file__, # myself
    ]
