#!/bin/sh
set -euf pipefail
brew install neovim

pip2 install --upgrade neovim
pip3 install --upgrade neovim

for version in $(rbenv versions --bare --skip-aliases); do
  export RBENV_VERSION=$version

  if gem list --local | grep -q neovim; then
    gem update --no-document neovim
  else
    gem install --no-document neovim
  fi

  rbenv rehash
done

unset RBENV_VERSION

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim -c 'let g:plug_window=""' +PlugClean! +PlugInstall! +PlugUpdate! +qall
