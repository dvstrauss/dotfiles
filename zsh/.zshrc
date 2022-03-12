# imports
source ~/.zsh/completion
source ~/.zsh/functions
source ~/.zsh/aliases
source ~/.zshrc_prompt

# default apps
export BROWSER=chromium
export EDITOR=/usr/bin/nvim

# history
HISTSIZE=20000
HISTFILE=~/.zsh_history
SAVEHIST=20000

# cd
export CDPATH="$CDPATH:$HOME:$HOME/code:$HOME/.config"
setopt auto_cd

# avoid issues in tmux
export LC_ALL="en_US.UTF-8"

# fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Google Cloud
source '/opt/google-cloud-sdk/path.zsh.inc'
source '/opt/google-cloud-sdk/completion.zsh.inc'

# rbenv
eval "$(rbenv init -)"

# nvm
source /usr/share/nvm/init-nvm.sh

