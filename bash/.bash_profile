#!/bin/bash

export PATH="$PATH:$HOME/bin"
source ~/dotfiles/bash/.colors
source ~/dotfiles/bash/.aliases
source ~/dotfiles/bash/.functions
source ~/dotfiles/bash/.prompt
source ~/dotfiles/bash/git-completion.bash
[ -e ~/.extra ] && source ~/.extra
[ -e ~/.work ] && source ~/.work
[ -e ~/.secrets ] && source ~/.secrets

#NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# initialize rbenv
if ! type "rbenv" > /dev/null; then
  eval "$(rbenv init -)"
fi

versions
quote
