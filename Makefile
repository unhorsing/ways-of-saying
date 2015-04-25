FORTUNE_FILES += $(shell ls -1 | egrep -v '\.dat|README.md|Makefile' | sed -e 's/$$/.dat/g')

all: ${FORTUNE_FILES}

%.dat: %
	@strfile $< $@
