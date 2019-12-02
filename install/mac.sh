#
# install packages
# author: Kenta Yamada
# repo: https://github.com/KentaYamada/neovim-dotfiles
#

# homebrew(required)
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew upgrade --cleanup

# git(required)
brew install git

#neovim
brew install neovim

# python3
brew install python3
brew list | grep python3

# pip3
brew install pip3
pip3 -V
pip3 install pynvim
pip3 install python-language-server

# nodebrew
brew install nodebrew
brew list | grep nodebrew

# javascript/typescript language server
npm i -g javascript-typescript-langserver -g

# universal-ctags
brew uninstall ctags
brew install universal-ctags/universal-ctags
brew install --HEAD universal-ctags

# other utility
brew install tree

# ricty font
# Note
# iTerm2 > Test > Fontで "Ricty Regular for Powerline"設定
brew tap sanemat/font
brew install ricty --with-powerline
cp -f /usr/local/opt/ricty/share/fonts/Ricty*.ttf ~/Library/Fonts/
fc-cache -vf

# nerd font
# Note
# iTerm2 > Test > Non-ASCII Fontで "Droid Sans Nerd Font"設定
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
