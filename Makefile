.PHONY: all
all: tools.stamp
	@true

tools.stamp: templardefs/deps.py
	$(info doing [$@])
	@templar_cmd install_deps
