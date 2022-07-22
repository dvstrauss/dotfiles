# imports
source ~/.zsh/completion
source ~/.zsh/keybindings
source ~/.zsh/functions
source ~/.zsh/aliases
source ~/.zshrc_prompt

# default apps
export BROWSER=chromium
export EDITOR=/usr/bin/nvim
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# history
HISTSIZE=20000
HISTFILE=~/.zsh_history
SAVEHIST=20000

# paths
export PATH="/home/dvs/.cargo/bin:$PATH"

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

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

