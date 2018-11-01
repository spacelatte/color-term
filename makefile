#!/usr/bin/env make -f

SIZE   := 64
HOST   := https://dummyimage.com
SOURCE := list.txt
COLORS := $(addsuffix .jpg, $(shell cat $(SOURCE)))

default: $(COLORS)

clean:
	rm $(COLORS)

%.jpg:
	# downloading: $@
	@curl -#kL -o $@ $(HOST)/$(SIZE)/$*/$*.jpg
