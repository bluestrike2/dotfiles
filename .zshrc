#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# alias hub
eval "$(hub alias -s)"

# source prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

#### aliases

# general osx/common apps
alias o="open"
alias s="subl"
alias lsg="l | grep"
alias gz="tar -zcvf"
alias ungz="tar -xvfz"

# git aliases
# some override zprezto/git module aliases
alias diff="git difftool"
alias ga='git add'
alias giA='git add -A'
alias gc='git commit'
alias gck='git checkout'
alias gSpu='git submodule foreach git pull && git submodule update --recursive'
alias gst='git stash'
alias gs='git status --short'
alias gis='git status --short'
alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative'
alias grC='git rebase --continue'

# unalias grc for generic colouriser 
if (( $+commands[grc] )); then
  unalias grc
fi

# ruby + ruby on rails
alias b="bundle exec"
alias h="heroku"
alias powify="echo 3000 > ~/.pow/`basename $PWD`"

alias fore="foreman start -f .foreman"
alias z="zeus"
alias zs="zeus start"
alias zc="zeus console"
alias zr="zeus rake"
alias zg="zeus g"
