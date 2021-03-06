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
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# initialize rbenv
if type "rbenv" > /dev/null; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

versions
quote

