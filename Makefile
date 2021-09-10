.PHONY: all
all: tools.stamp
	@true

tools.stamp: config/deps.py
	$(info doing [$@])
	@pymakehelper touch_mkdir $@
