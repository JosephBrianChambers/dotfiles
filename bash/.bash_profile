#!/bin/bash

BLACK="$(tput setaf 0)"
DARK_RED="$(tput setaf 1)"
DARK_GREEN="$(tput setaf 2)"
DARK_YELLOW="$(tput setaf 3)"
BLUE="$(tput setaf 4)"
MAGENTA="$(tput setaf 5)"
CYAN="$(tput setaf 6)"
DARK_WHITE="$(tput setaf 7)"
RESET_COLOR="$(tput sgr0)"

export PATH="$PATH:$HOME/bin"

source ~/dotfiles/bash/.aliases
source ~/dotfiles/bash/.functions
[ -e ~/.extra ] && source ~/.extra
[ -e ~/.secrets ] && source ~/.secrets
source ~/dotfiles/bash/.prompt
source ~/dotfiles/bash/git-completion.bash

#NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# initialize rbenv
eval "$(rbenv init -)"

versions
quote
