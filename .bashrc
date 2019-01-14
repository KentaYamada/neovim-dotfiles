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
alias sl='ln -s'
alias usl='unlink'

# todo: function
case "${OSTYPE}" in
    darwin*)
        alias ls='ls -lG'
        alias la='ls -laG'
        ;;
    linux*)
        alias ls='ls -l --color=auto'
        alias la='ls -al --color=auto'
        ;;
esac

# git commands
alias ga='git add'
alias gaa='git add .'
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gf='git fetch'
alias gl='git log'
alias gp='git push'
alias gpu='git push --set-upstream'
alias gs='git status'

# python command
alias py='python3 -B'

