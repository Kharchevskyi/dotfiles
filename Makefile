DOT_FOLDER = $(shell pwd)

.PHONY: all
all: clean install

.PHONY: install
install: zgen link
	#chsh -s $(which zsh)


# set zsh as default terminal
.PHONY: zsh
zsh:
	chsh -s $(which zsh)	

# instal zgen plugins for zsh
.PHONY: zgen
zgen: 
	git clone https://github.com/rslindee/zgen.git ~/.zgen

# link dotfiles to existing
.PHONY: link
link:
	ln -sfnv "$(DOT_FOLDER)/dots/zshrc" ~/.zshrc
	ln -sfnv "$(DOT_FOLDER)/dots/gitconfig" ~/.gitconfig
	ln -sfnv "$(DOT_FOLDER)/dots/vimrc" ~/.vimrc
	
# clean zgen directory
.PHONY: clean
clean:
	rm -rf ~/.zgen

.PHONY: ruby
ruby:
	\curl -sSL https://get.rvm.io | bash -s stable --ruby

# clean install brew
.PHONY: homebrew
homebrew: 
	chmod +x install.sh
	./install.sh 
	


