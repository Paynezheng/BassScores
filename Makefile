##
## Main GNU makefile for Midifile library.
##
## Programmer:    Jianyuan Zheng <photosynthesi@outlook.com>
## Creation Date: Thu May 19 06:30:02 UTC 2022
## Last Modified: Fri May 20 01:17:48 UTC 2022
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
COMPILER := lilypond

TARG_MIDI_DIR := midi
TARG_PDF_DIR := pdf
TMP_DIR := tmp

vpath %.ly $(SRC_PATH)

MIDI_MANUFACTURE=$(notdir $(patsubst %.ly,%.midi,$(wildcard $(SRC_PATH)/*.ly)))
PDF_MANUFACTURE=$(notdir $(patsubst %.ly,%.pdf,$(wildcard $(SRC_PATH)/*.ly)))


.PHONY : all info gen midi pdf midi_dir pdf_dir tmp_dir clean

all: info gen midi_dir pdf_dir
	@cp $(TMP_DIR)/*.midi $(TARG_MIDI_DIR)/
	@cp $(TMP_DIR)/*.pdf $(TARG_PDF_DIR)/
## -rm -rf tmp

info:
	@echo ""
	@echo This makefile will compile the Lilypond File to midi file or pdf
	@echo or svg, png .... To gen target file, Type one of the following:
	@echo "   make midi"
	@echo or
	@echo "   make pdf"
	@echo make both midi and pdf, type:
	@echo "   make"
	# @echo To compile a specific score called xxx.ly in PATH, type:
	# @echo "   make PATH/filename.ly"
	# @echo "eg. src/vulfpeck/beastly.ly, type: make vulfpeck/beastly.ly"
	# @echo ""
	@echo Typing \"make\" alone will compile and gen both midi and pdf at the same time.
	@echo ""

gen: tmp_dir $(addprefix $(TMP_DIR)/,$(PDF_MANUFACTURE))

midi: gen midi_dir 
	@cp $(TMP_DIR)/*.midi $(TARG_MIDI_DIR)/
## -rm -rf tmp
pdf: gen pdf_dir
	@cp $(TMP_DIR)/*.pdf $(TARG_PDF_DIR)/
## -rm -rf tmp

$(TMP_DIR)/%.pdf : $(notdir %.ly)
	@echo [$(COMPILER)] $@
	@$(COMPILER) -fpdf --output=$(TMP_DIR) $^

# % : $(notdir %.ly)
# 	@echo [$(COMPILER)] $@
# 	@$(COMPILER) -fpdf --output=$(TMP_DIR) $^
# 	-cp $(TMP_DIR)/%.midi $(TARG_MIDI_DIR)/
# 	@cp $(TMP_DIR)/%.pdf $(TARG_PDF_DIR)/

tmp_dir:
ifeq ($(wildcard $(TMP_DIR)),)
	@-mkdir -p $(TMP_DIR)
endif

midi_dir: 
ifeq ($(wildcard $(TARG_MIDI_DIR)),)
	@-mkdir -p $(TARG_MIDI_DIR)
endif

pdf_dir:
ifeq ($(wildcard $(TARG_PDF_DIR)),)
	@-mkdir -p $(TARG_PDF_DIR)
endif

clean:
	-rm -rf midi
	-rm -rf pdf
	-rm -rf tmp
	-rm src/*.pdf