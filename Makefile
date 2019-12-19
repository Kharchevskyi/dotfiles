DOT_FOLDER = $(shell pwd)

.PHONY: all
all: clean install

.PHONY: install
install: zgen 

# instal zgen plugin for zsh
.PHONY: zgen
zgen: 
	git clone https://github.com/rslindee/zgen.git ~/.zgen

# clean zgen directory
.PHONY: clean
clean:
	rm -rf ~/.zgen