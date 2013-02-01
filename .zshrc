#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Alias hub
eval "$(hub alias -s)"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Aliases galore

alias st="subl"
alias b="bundle exec"
alias h="heroku"

alias diff="git difftool"
alias ga='git add'
alias giA='git add -A'
alias gc='git commit'
alias gck='git checkout'
alias gSpu='git submodule foreach git pull && git submodule update --recursive'

alias gs="git status --ignore-submodules=${_git_status_ignore_submodules}"
alias gst='git stash'

alias fore="foreman start -f .foreman"
alias z="zeus"
alias zs="zeus start"
alias zc="zeus console"
alias zr="zeus rake"
alias zg="zeus g"

alias lsg="l | grep"

alias gz="tar -zcvf"
alias ungz="tar -xvfz"

alias powify="echo 3000 > ~/.pow/`basename $PWD`"
