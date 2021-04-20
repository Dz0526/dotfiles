#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# GOPATH
export GOPATH=$HOME/.go

# TOOLPATH
export TOOLPATH=$HOME/tools

# PYTHONPATH
export PYTHONPATH=$HOME/.local/bin

# PATH
export PATH=$PATH:$GOPATH:$TOOLPATH:$PYTHONPATH

# Git alias
alias g='git'

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
