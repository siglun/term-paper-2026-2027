
ifneq ($(wildcard /usr/local/bin/groff),)
    # If found, force pdfroff to use the /usr/local/bin toolchain
    export GROFF_BIN_PATH := /usr/local/bin
endif



.SUFFIXES: .pic .ms .pdf .ps .eps 
.DEFAULT: .ms.pdf .ps.pdf .eps.pdf

# default: chalmers.pdf language-function.pdf
default: language.pdf

BIB := ../bib

$(BIB)/bibliography.i: FORCE
	$(MAKE) -C $(BIB)

FORCE:


# Capture the last commit date, or current date if changes are uncommitted
BUILD_DATE := $(shell date "+%Y-%m-%d %H:%M")
GIT_COMMIT := $(shell git rev-parse --short HEAD 2>/dev/null || echo "unknown")

URI = https://github.com/siglun/term-paper-spring-2026/blob/main/
PAPER = -dpaper=a4 -P-pa4
OTHERS =  ../bib/bibliography.i ../tmac/dropcap.tmac ../tmac/mn.tmac \
	Makefile ../tmac/fitch-macros.pic ../parameters.ms ../margin-notes.ms

.ms.pdf:
	soelim  ../parameters.ms  $< | 	pdfroff -U -R  \
	-d BuildDate="$(BUILD_DATE)" \
	-sGtep  -M ../tmac  -m s  -m pdfmark  -m mn \
	-m decorations -m dropcap \
	-k -Kutf8 ${PAPER} -Tps -  > $*.pdf
	pdftotext $*.pdf ; wc -w $*.txt ; rm  $*.txt

clean:
	rm -f *~ *.eps

# chalmers.pdf: chalmers.ms chalmers-01.ms $(OTHERS)
# language-function.pdf: language-function.ms

language.pdf: language.ms slug-texts.ms $(BIB)/bibliography.i

# Remember
#
# inkscape World_line.svg -o  world_line.eps
# 
