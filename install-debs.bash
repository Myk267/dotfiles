#!/bin/bash
# I use these packages on Debian

(
basic='build-essential
gdb git sudo curl tree
vim-gnome ctags
dos2unix mc links
tig
rename
shellcheck
tmux
markdown
atool
apt-transport-https
ca-certificates
software-properties-common'

desktop='fonts-symbola fonts-inconsolata
suckless-tools
youtube-dl
mpv
feh
transmission-gtk
hexchat'

python='python3-pip python3-setuptools'

# we _do_ actually want word splitting here, so no quoted vars
sudo apt update && sudo apt upgrade && \
  sudo apt install $basic $desktop $python \
  --no-install-recommends && \
  sudo apt autoremove && \
  sudo apt autoclean && \
  sudo apt clean
)
