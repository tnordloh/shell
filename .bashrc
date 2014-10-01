# -*- sh -*-

# Enviroment Variables
set -o vi
export EDITOR="vim"
export CVSEDITOR="vim"
export CVS_RSH="ssh"
export SVN_EDITOR="vim"
export GIT_EDITOR="vim"
export LC_CTYPE=en_US.UTF-8
export HISTSIZE=500
export HISTFILESIZE=1500
export HISTCONTROL=erasedups
export PROMPT_COMMAND='history -a'  # write previous line as prompt is displayed
export CLICOLOR=1

# Path
export PATH="/Users/tim/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/pgsql/bin:/usr/local/heroku/bin:$PATH"

alias ga='git add'
alias gaa='git add --all'
alias gc='git commit'
alias gca='git commit --all'
alias gp='git push'
alias gs='git status -sb'
alias v='vim'
alias gshead="gs |head -n 1 |awk '{ print \$2 }'"


echo "screen split: Ca-S"
echo "screen activate: Ca-c"
echo "screen, toggle between windows: Ca-tab"
export PS1='\[\e[1;36m\]\w\[\e[m\]\[\e[1;32m\] `gshead` \[\e[m\]\[\e[1;31m\]:\[\e[m\]\[\e[1;32m\]'
