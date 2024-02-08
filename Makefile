.POSIX:

OS = $(shell uname -s)
ifndef HOME
	HOME = /home/$(whoami)
endif
ifndef XDG_DATA_HOME
	XDG_DATA_HOME = $(HOME)/.local/share
endif

install:
	mkdir -p $(XDG_DATA_HOME)/rofi/themes
	mkdir -p $(HOME)/.local/bin
	cp .config/rofi/reccolors.rasi $(XDG_DATA_HOME)/rofi/themes/
	cp .config/rofi/recfonts.rasi $(XDG_DATA_HOME)/rofi/themes/
	cp .config/rofi/recorder.rasi $(XDG_DATA_HOME)/rofi/themes/
	cp recordrofi $(HOME)/.local/bin/
	chmod 700 $(HOME)/.local/bin/recordrofi 

uninstall:
	rm -f $(XDG_DATA_HOME)/rofi/themes/reccolors.rasi
	rm -f $(XDG_DATA_HOME)/rofi/themes/recfonts.rasi
	rm -f $(XDG_DATA_HOME)/rofi/themes/recorder.rasi
	rm -f recordrofi $(HOME)/.local/bin/

.PHONY: install uninstall
