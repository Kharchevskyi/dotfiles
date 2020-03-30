export ZGEN_RESET_ON_CHANGE=($HOME/.zsh/zgen-setup.zsh)
source $HOME/.zgen/zgen.zsh

function load-plugin-list() {
    echo "creating a zgen save"

    zgen oh-my-zsh


    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/git-extras
    zgen oh-my-zsh plugins/git-prompt
    zgen oh-my-zsh plugins/gitfast
    zgen oh-my-zsh plugins/github
    zgen oh-my-zsh plugins/gitignore
    zgen oh-my-zsh plugins/globalias
    #zgen oh-my-zsh plugins/vi-mode
    zgen oh-my-zsh plugins/xcode
    zgen oh-my-zsh plugins/sublime
    # Save it all to init script
    zgen save
}

if ! zgen saved; then
    load-plugin-list
fi
