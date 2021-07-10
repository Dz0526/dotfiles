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

# GOPATH
export GOPATH=$HOME/.go

# TOOLPATH
export TOOLPATH=$HOME/tools

# PYTHONPATH
export PYTHONPATH=$HOME/.local/bin

# HOBBYPATH
export HOBBYPATH=$HOME/hobby/pomocat

# PATH
export PATH=$PATH:$GOPATH:$TOOLPATH:$PYTHONPATH:$HOBBYPATH

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
