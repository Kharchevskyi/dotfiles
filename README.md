# Personal dotfiles
 
<p align="left">
  <a href="#description">Description</a> •
  <a href="#how-to-use">How To Use</a> •
</p>

## How To Use

Install Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

then run make to install dependencies
```
make
```

Instal zgen plugins for zsh. Additional info https://github.com/tarjoilija/zgen
```
make zgen
```

Install Brew system dependencies from *Brewfile*
```
brew bundle
```
