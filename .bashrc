#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

eval `dircolors ~/.dir_colors`
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# alias
alias cdc='pwd | xclip -selection c'
alias cdp='cd `xclip -selection c -o`'
alias school='cd $HOME/projects/school/c_practice/'

alias ygk='cd ~/projects/develop/youngeek/'
alias dev='cd ~/projects/develop/'
alias nf='cd ~/projects/develop/nanofreaks/'

## cd
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'

## ls
alias la='ls -a'
alias ll='ls -l'

## python
alias py='python'

## yay
alias ys='yay -S'
alias yr='yay -R'

## pacman
alias pm='pacman'

## source
alias so='source'

# QTGTK
export QT_QPA_PLATFORMTHEME='gtk2'

# GOPATH
export GOPATH=$HOME/.go

# GOUTIL
export CGO_ENABLED=0

# TOOLPATH
export TOOLPATH=$HOME/tools

# PYTHONPATH
export PYTHONPATH=$HOME/.local/bin

# HOBBYPATH
export HOBBYPATH=$HOME/hobby/pomocat

# FLUTTERPATH
export FLUTTERPATH=$HOME/flutter/bin

# PATH
export PATH=$PATH:$GOPATH:$TOOLPATH:$PYTHONPATH:$HOBBYPATH:$FLUTTERPATH

# Git
alias g='git'
source ~/.git-completion

# set vi mode
set -o vi

eval "$(starship init bash)"

# set thefuck
eval "$(thefuck --alias)"

source /usr/share/nvm/init-nvm.sh
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# startup command

# peco & ghq
function peco-select-history() {
    local tac
    which gtac &> /dev/null && tac="gtac" || \
        which tac &> /dev/null && tac="tac" || \
        tac="tail -r"
    READLINE_LINE=$(HISTTIMEFORMAT= history | $tac | sed -e 's/^\s*[0-9]\+\s\+//' | awk '!a[$0]++' | peco --query "$READLINE_LINE")
    READLINE_POINT=${#READLINE_LINE}
}
bind -x '"\C-r": peco-select-history'

function ghql() {
  local selected_file=$(ghq list --full-path | peco --query "$LBUFFER")
  if [ -n "$selected_file" ]; then
    if [ -t 1 ]; then
      echo ${selected_file}
      cd ${selected_file}
    fi
  fi
}
bind -x '"\C-g": ghql'

# history
HISTSIZE=5000
HISTFILESIZE=10000
