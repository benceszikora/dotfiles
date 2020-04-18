# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

function kns() {
    kubectl config set-context $(kubectl config current-context) --namespace=$1
}

parse_git_branch() {
      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  }

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

export PYTHONDONTWRITEBYTECODE=1

alias k="kubectl"
alias kps="kubectl get pods"
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gco='git checkout '
alias ll='ls -lagh'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

export HISTFILESIZE=
export HISTSIZE=
