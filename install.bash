#!/usr/bin/env bash

#set -e # exit if any command has non-zero return value
#set -u # exit if undefined reference found
#set -o pipefail # do not mask pipeline errors
#set -x # debug mode 
#IFS=$'\n\t'

shout() { echo "$0: $*" >&2; }
barf() { shout "fatal: $*"; exit 111; }
safe() { "$@" || barf "cannot $*"; }
quiet() { "$@" > /dev/null 2>&1; }
die() {
  printf '%s\n' "$1" >&2
  exit 1
}

DOTDIR="$HOME/dotfiles"
VIMHOME="$HOME/.vim"
BUNDLEDIR="$VIMHOME/bundle"

mkdir -pv "$DOTDIR"
mkdir -pv "$BUNDLEDIR"
mkdir -pv "$HOME/.emacs.d"
mkdir -pv "$HOME/bin"

cd "$DOTDIR" || exit 1
./git-sync "$BUNDLEDIR" "https://github.com/kien/rainbow_parentheses.vim"
./git-sync "$BUNDLEDIR" "https://github.com/sjl/badwolf"
./git-sync "$BUNDLEDIR" "https://github.com/tpope/vim-sleuth"
./git-sync "$BUNDLEDIR" "https://github.com/vim-syntastic/syntastic"
./git-sync "$VIMHOME"   'https://github.com/tpope/vim-pathogen'

#maybe_mkdir_ln() { mkdir -pv "$2"; ln -sv "$1"; }
cd "$DOTDIR" || exit 1
./maybe_mkdir_ln "$DOTDIR/Xresources" "$HOME/.Xresources"
./maybe_mkdir_ln "$DOTDIR/bashrc" "$HOME/.bashrc.local" 
./maybe_mkdir_ln "$DOTDIR/config.fish" "$HOME/.config/fontconfig/fonts.conf" 
./maybe_mkdir_ln "$DOTDIR/functions" "$HOME/.functions" 
./maybe_mkdir_ln "$DOTDIR/inputrc" "$HOME/.inputrc" 
./maybe_mkdir_ln "$DOTDIR/netbeans.conf" "$HOME/.netbeans/8.1/etc/netbeans.conf" 
./maybe_mkdir_ln "$DOTDIR/netbeans.conf" "$HOME/.netbeans/8.2/etc/netbeans.conf" 
./maybe_mkdir_ln "$DOTDIR/pythonrc" "$HOME/.pythonrc" 
./maybe_mkdir_ln "$DOTDIR/vimrc" "$HOME/.vimrc" 
./maybe_mkdir_ln "$DOTDIR/bin/myk-find" "$HOME/bin/myk-find" 
./maybe_mkdir_ln "$DOTDIR/bin/myk-update-db" "$HOME/bin/myk-update-db" 
./maybe_mkdir_ln "$DOTDIR/bin/myk-check" "$HOME/bin/myk-check" 

