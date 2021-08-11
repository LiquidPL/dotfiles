# skip if we're in a noninteractive shell
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
