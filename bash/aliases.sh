#!/bin/bash

# enable color support
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

alias lc='ls -1 | wc -l'
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -la'

alias la='ls -A'
alias lh='ll -h'
alias ltr='ls -ltr'
alias ltrh='ls -ltrh'
alias l='ls -CF'

alias findn="find . -name"
alias findnd="find . -type d -name"

alias du='du -h'

alias psg="ps aux | grep"
alias psgi="ps aux | grep -i"
alias hgrep="history | grep"
alias agrep="alias | grep"

alias wcl='wc -l'
alias apt-search='apt-cache search --names-only'

alias sourceb='source ~/.bashrc'
alias sourcep='source ~/.bash_profile'

# Easier navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias ~="cd ~" # `cd` is faster to type tho
alias -- -="cd -"

alias naut="nautilus ."

alias dotfiles='subl ~/dotfiles'

if [[ `which jq` ]]; then
  alias jqc='jq --compact-output'
fi

if [[ `which ack-grep` ]]; then
  alias ack="ack-grep"
fi
