#!/bin/sh
set -euf pipefail

curl --create-dirs -fLo ~/.local/share/nvim/site/autoload/plug.vim \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim --headless \
  +PlugClean! \
  +PlugInstall! \
  +PlugUpdate! \
  +UpdateRemotePlugins \
  +qall
