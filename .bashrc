#
# My .bashrc
# Author: Kenta Yamada
# repo: https://github.com/KentaYamada/neovim-dotfiles
#

# env

# command alias
alias vim='nvim'
alias ..='cd ../'
alias cp='cp -i'
alias mv='mv -i'
alias sl='ln -s'
alias usl='unlink'

# todo: function
case "${OSTYPE}" in
    darwin*)
        alias ls='ls -lFG'
        alias la='ls -alFG'
        ;;
    linux*)
        alias ls='ls -lF --color=auto'
        alias la='ls -alF --color=auto'
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
alias py='python3 -B'

