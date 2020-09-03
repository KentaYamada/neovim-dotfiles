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

# import alias
source ~/.alias

# python command
alias py3='python3 -B'

# ctags (mac)
alias ctags="`brew --prefix`/bin/ctags"
