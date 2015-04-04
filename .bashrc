#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
alias lx='ls -lX --color=auto'
PS1='[\u@\h \W]\$ '

# avoid duplicates..
export HISTCONTROL=ignoredups:erasedups  
# append history entries..
shopt -s histappend
# After each command, save and reload history
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

# set ls color for sticky and other-writable dir
eval "$(dircolors ~/.dircolors)";
