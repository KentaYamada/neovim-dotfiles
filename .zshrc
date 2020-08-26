
export PATH="/usr/local/opt/ncurses/bin:$PATH"

fpath=(/usr/local/share/zsh-completions $fpath)

# alias commands
alias vi='vim'
alias vim="nvim"

# git alias commands
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
