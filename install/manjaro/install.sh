#
# install.sh
# Manjaro Linux setup script
# Auther: Kenta Yamada
# Created: 2020.08.26
# Updated: 2021.12.29
#

# --------------
# General Setup
# --------------
# Update mirror
sudo pacman-mirrors --fasttrack

# Upgrade packages
sudo pacman -Syyu

# Remove orphans packages
sudo pacman -Rs $(pacman -Qdtq)

# Install Japanese input method
sudo pacman -S fcitx-im fcitx-mozc

# Rename home directories name tool
sudo pacman -S xdg-user-dirs-gtk

# Install firewall config tool
sudo pacman -S firewalld

# Enable firewalld service
sudo systemctl enable firewalld.service

# Open dialog
LANG=C xdg-user-dirs-gtk-update

# Enable trim strage
sudo systemctl enable fstrim.timer

# Upgrade pip
sudo pip3 install -U pip

# -------------
# Setup NeoVim
# -------------
sudo pacman -S neovim
sudo pip3 install pynvim

# ------------------------------
# Setup C/C++ development tools
# ------------------------------
sudo pacman -S llvm
sudo pacman -S clang
