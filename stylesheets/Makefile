SOURCES = $(wildcard *.less)
OBJS = $(patsubst %.less, %.css, $(SOURCES))

%.css: %.less  Makefile
	lessc $< $@ 


here: $(OBJS) Makefile

clean:
	rm -f $(OBJS)

.PHONY: clean
