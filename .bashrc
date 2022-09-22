#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='exa'
alias l='exa --long --all --header'
alias ll='exa --long --all --header'

bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

