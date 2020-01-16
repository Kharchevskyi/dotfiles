DOT_FOLDER = $(shell pwd)

.PHONY: all
all: install

.PHONY: install
install: homebrew ruby zgen link
	vim +PlugInstall! +qa

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
	ln -sfnv "$(DOT_FOLDER)/zsh" ~/.zsh

# clean zgen directory
.PHONY: clean
clean:
	rm -rf ~/.zgen

# install ruby and bundler
.PHONY: ruby
ruby:
	\curl -sSL https://get.rvm.io | bash -s stable --ruby
	gem install bundler

# clean install brew and xcode command line
.PHONY: homebrew
homebrew: 
	chmod +x scripts/installXcode.sh
	./scripts/installXcode.sh 
	brew bundle
