#!/bin/sh
set -euf pipefail
brew install neovim --HEAD

type pip2 >/dev/null 2>&1 && pip2 install --upgrade neovim
type pip3 >/dev/null 2>&1 && pip3 install --upgrade neovim

if type rbenv >/dev/null 2>&1; then
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
fi

curl --create-dirs -fLo ~/.local/share/nvim/site/autoload/plug.vim \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim --headless \
  -c 'let g:plug_window=""' \
  +PlugClean! \
  +PlugInstall! \
  +PlugUpdate! \
  +UpdateRemotePlugins \
  +qall
