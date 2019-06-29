SONGS := guestbook.ly
SONGS_SVG := $(SONGS:.ly=.svg)

.PHONY: all
default: all

%.svg %.midi: %.ly
	lilypond -dbackend=svg -o $(basename $@) $<

all: $(SONGS_SVG)

clean:
	rm -f *.svg
	rm -f *.midi