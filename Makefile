SONGS := national_treasure.ly
SONGS_SVG := $(SONGS:.ly=.svg)

.PHONY: all
default: all

%.svg: %.ly
	lilypond -dbackend=svg $< -o $@

all: $(SONGS_SVG)