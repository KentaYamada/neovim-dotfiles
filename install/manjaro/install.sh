#
# install.sh
# Manjaro Linux setup script
# Auther: Kenta Yamada
# Created: 2020.08.26
#


# update mirror
sudo pacman-mirrors --fasttrack

# upgrade packages
sudo pacman -Syyu

# install japanese input method
sudo pacman -S fcitx-im fcitx-mozc

# install editor
sudo pacman -S neovim

# rename home directories name tool
sudo pacman -S xdg-user-dirs-gtk

# open dialog
LANG=C xdg-user-dirs-gtk-update

# enable trim strage
sudo systemctl enable fstrim.timer
