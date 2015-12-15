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
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Path
export PATH="~/.rbenv/shims:/Users/tim/bin:/Users/tim/scratch/cli/todo/bin:$PATH"

alias ga='git add'
alias gaa='git add --all'
alias gc='git commit'
alias gca='git commit --all'
alias gp='git push'
alias gs='git status -sb'
alias v='vim'
alias i='irb -r irb/completion'
alias gshead="git remote -v |head -1 | awk '{print \$2}'"
alias r='ruby'
alias gshead="gs |head -n 1 |awk '{ print \$2 }'"
alias tt="~/code/time_tracker/bin/time_tracker add_entry"
alias trl="~/code/time_tracker/bin/time_report last_day"
alias ll='ls -al'
alias l='ls'
alias v='vagrant'
alias vs='vagrant ssh'
alias vu='vagrant up'



export PS1='\[\e[1;36m\]\w\[\e[m\]\[\e[1;32m\] `gshead` \[\e[m\]\[\e[1;31m\]:\[\e[m\]\[\e[1;32m\]'
export PS1='\[\e[1;31m\]`gshead`\[\e[m\]\[\e[1;33m\] \w \[\e[m\]\[\e[1;31m\]:\[\e[m\]\[\e[1;32m\]'


eval "$(rbenv init -)"
function get_todo_commands()
{
  if [ -z $2 ] ; then
    COMPREPLY=(`todo help -c`)
  else
    COMPREPLY=(`todo help -c $2`)
  fi
}
complete -F get_todo_commands todo

export USER='railsdev@nordloh.com'
export PASSWORD='mayonnaise_54321'

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
