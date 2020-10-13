alias reload="exec $SHELL"
alias o='open'

# git
alias gs="git status"
alias gl="git log"
alias gca="git commit -am"

#bundle
alias bef='bundle exec fastlane'
# creates Brewfile in the current directory from currently-installed packages
alias bbd='rm -rf Brewfile && brew bundle dump'
alias be='bundle exec'

alias pi='pod install'
alias dot='cd $HOME/Documents/dotfiles && l'