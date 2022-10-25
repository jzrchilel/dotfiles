#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

force_color_prompt=yes

alias ls='lsd'
alias l='ls -l'
alias la='ls -la'
alias ll='ls -la'
alias lt='ls --tree'
alias v="nvim"

bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

source ~/.bash_aliases
