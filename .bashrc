#
# My .bashrc
# Author: Kenta Yamada
# repo: https://github.com/KentaYamada/neovim-dotfiles
#

# env

# git config
GIT_PRMP=/usr/local/etc/bash_completion.d/git-prompt.sh
GIT_COMP=/usr/local/etc/bash_completion.d/git-completion.bash

if [ -e $GIT_PRMP ]; then
    source $GIT_PRMP
    GIT_PS1_SHOWDIRTYSTATE=true
    export PS1='\h\[\033[00m\]:\W\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\$ '
fi

if [ -e $GIT_COMP ]; then
    source $GIT_COMP
fi

# command alias
alias vim='nvim'
alias ..='cd ../'
alias cp='cp -i'
alias mv='mv -i'
alias sl='ln -s'
alias usl='unlink'
alias ~='cd ~'
alias grep='grep --color'
# todo: function
case "${OSTYPE}" in
    darwin*)
        alias ls='ls -lhFG'
        alias la='ls -alhFG'
        ;;
    linux*)
        alias ls='ls -lhF --color=auto'
        alias la='ls -alhF --color=auto'
        ;;
esac

# git commands
alias ga='git add'
alias gaa='git add .'
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gd='git diff'
alias gf='git fetch'
alias gl='git log --graph --decorate --oneline'
alias gp='git push'
alias gpu='git push --set-upstream'
alias gs='git status --short --branch'
alias gst='git stash'
alias gstl='git stash list'

# python command
alias py3='python3 -B'

# ctags (mac)
alias ctags="`brew --prefix`/bin/ctags"
