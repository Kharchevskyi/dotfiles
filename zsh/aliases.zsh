alias reload="exec $SHELL"
alias o='open'

# git
alias gs="git status"
alias gl="git log"
alias gca="git commit -am"
alias gcamne='git commit --amend -a --no-edit'

#bundle
alias bef='bundle exec fastlane'
# creates Brewfile in the current directory from currently-installed packages
alias bbd='rm -rf Brewfile && brew bundle dump'
alias be='bundle exec'

alias pi='pod install'
alias dot='cd $HOME/Documents/dotfiles && l'

# cuvva
alias cuv0='cd /Users/anton/Documents/iOS/app-cuvva-ios'
alias cuv1='git checkout develop && git pull origin develop'
alias cuv2='git checkout -'
alias cuv3='git merge develop'