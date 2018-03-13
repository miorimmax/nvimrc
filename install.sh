#!/bin/sh
set -euf pipefail

type pip2 && pip2 install --upgrade neovim
type pip3 && pip3 install --upgrade neovim
type gem && gem install --no-rdoc --no-ri neovim
type npm && npm install --global neovim

curl --create-dirs -fLo ~/.local/share/nvim/site/autoload/plug.vim \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim --headless \
  +PlugClean! \
  +PlugInstall! \
  +PlugUpdate! \
  +UpdateRemotePlugins \
  +qall
