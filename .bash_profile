if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

export PATH=/usr/local/bin:$PATH

alias mvime='open -a MacVim.app'
alias h='history'
alias be='bundle exec'
alias ls='ls -G'
alias hc='git rev-parse --short HEAD | pbcopy'

export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

# SET TERMINAL TITLE
PROMPT_COMMAND='echo -ne "\033]0;`scutil --get ComputerName`:  ${PWD}\007"'

##### SET PROMPT MESSAGE #####
function parse_git_branch () {
  git branch 2> /dev/null | grep "*" | sed 's/^* //g'
}

NO_COLOR="\[\033[0m\]"
GREEN="\[\033[0;32m\]"
export PS1="\u:\W $GREEN\$(parse_git_branch)$NO_COLOR$ "

set -o vi

