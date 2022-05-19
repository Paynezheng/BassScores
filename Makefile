##
## Main GNU makefile for Midifile library.
##
## Programmer:    Jianyuan Zheng <photosynthesi@outlook.com>
## Creation Date: Thu May 19 06:30:02 UTC 2022
## Last Modified: Thu May 19 06:30:02 UTC 2022
## Filename:      BassScore/Makefile
## Syntax:        GNU Makefile
## Description:   This Makefile can Gen some midi/pdf from lilypond source code
##
## To run this makefile, type:
##     make midi
## then:
##     make pdf
## Or type:
##     make
## to compile and gen both midi and pdf at the same time.
##
##

##############################
##
## Targets:
##

# targets which don't actually refer to files

SRC_PATH := src/
SRC_FILE := $(SRC_PATH)/*.ly

TARG_MIDI_DIR := midi
TARG_PDF_DIR := pdf

vpath %.ly $(SRC_PATH)

MIDI_MANUFACTURE=$(notdir $(patsubst %.ly,%.midi,$(wildcard $(SRC_PATH)/*.ly)))
PDF_MANUFACTURE=$(notdir $(patsubst %.ly,%.pdf,$(wildcard $(SRC_PATH)/*.ly)))


.PHONY : all info midi pdf midi_dir pdf_dir clean

all: info midi pdf


info:
	@echo ""
	@echo This makefile will compile the Midifile library and/or
	@echo the Midifile programs.  You may have to make the library
	@echo first if compiling the programs. Type one of the following:
	@echo "   make midi"
	@echo or
	@echo "   make pdf"
	@echo ""
	@echo To compile a specific score called xxx.ly in PATH, type:
	@echo "   make PATH/filename.ly"
	@echo "eg. src/vulfpeck/beastly.ly, type: make vulfpeck/beastly.ly"
	@echo ""
	@echo Typing \"make\" alone will compile and gen both midi and pdf at the same time.
	@echo ""

midi: midi_dir $(addprefix $(TARG_MIDI_DIR)/,$(MIDI_MANUFACTURE))

midi_dir: 
ifeq ($(wildcard $(TARG_MIDI_DIR)),)
	@-mkdir -p $(TARG_MIDI_DIR)
endif

pdf_dir:
ifeq ($(wildcard $(TARG_PDF_DIR)),)
	@-mkdir -p $(TARG_PDF_DIR)
endif

$(TARG_MIDI_DIR)/%.midi : $(notdir %.ly)
	@echo [lilypond] $@
	@lilypond $^

%.midi : $(notdir %.ly)
	@echo [lilypond] $@
	@lilypond $^

clean:
	-rm -rf midi
	-rm -rf pdf