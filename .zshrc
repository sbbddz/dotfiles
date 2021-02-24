# ZSHRC 
# Samuel

# EXPORT VARIABLES
export ZSH="/home/samuel/.oh-my-zsh"
export EDITOR="/usr/bin/nvim"
export BROWSER="brave"

# PATH
export PATH=$PATH:~/.local/bin

# THEME
ZSH_THEME="arrow"
#ZSH_THEME="powerlevel10k"

# PLUGINS
plugins=(git)

# SOURCE OH MY ZSH
source $ZSH/oh-my-zsh.sh

# ALIAS PACKAGES
alias s="sudo"
alias sp="sudo pacman"
alias sps="sudo pacman -S"
alias spr="sudo pacman -Rs"
alias spyy="sudo pacman -Syyy"
alias spu="sudo pacman -Syu"
alias orphans="sudo pacman -Rs $(pacman -Qdtq)"
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -100"
alias pdf="zathura"

# ALIAS EDITORS
alias v="nvim"
alias vi="nvim"
alias sv="sudo nvim"
alias vim="nvim"
alias n="nano"
alias sn="sudo nano"

# ALIAS VARIOUS
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias cls="clear"
alias shutdown="sync && sync && shutdown now"
alias reboot="sync && sync && reboot"
alias media="cd /run/media/samuel/"

# ALIAS DIRECTORYS & FILES
alias doc="cd ~/documents"
alias cfvim="nvim ~/.config/nvim/init.vim"
alias cfzsh="nvim ~/.zshrc"
alias cfpacman="s vim /etc/pacman.conf"
alias cfdwm="nvim ~/.dwm/dwm/config.def.h"
alias jpy="sh /home/samuel/wspace/notebooks/start.sh &"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completio

[[ $TERM != "screen" ]] && exec tmux
