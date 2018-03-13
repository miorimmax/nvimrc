" Python
let g:python3_host_prog = '/usr/local/bin/python3'
let g:python_host_prog  = '/usr/local/opt/python@2/bin/python2'
let g:ruby_host_prog    = '/Users/max/.rbenv/versions/2.3.3/bin/ruby'

" Remap the Leader key
let mapleader = ','

" Plugins
call plug#begin()
  let s:plugins = [
        \ 'deoplete',
        \ 'ale',
        \ 'sensible',
        \ 'nerdtree',
        \ 'ctrlp',
        \ 'editorconfig',
        \ 'surround',
        \ 'gutentags',
        \ 'one',
        \ 'airline',
        \ 'iron',
        \ 'react-native',
        \ 'clojure',
        \ 'ruby',
        \ 'python',
        \ 'java',
        \ 'polyglot'
        \ ]

  for $plugin in s:plugins
    source $HOME/.config/nvim/plugins.d/$plugin.vim
  endfor
call plug#end()

" Look and feel
set background=dark
colorscheme one

if (has('termguicolors'))
  set termguicolors
endif

set numberwidth=4
set number

set colorcolumn=0

set textwidth=120

set formatoptions-=t

set splitbelow
set splitright

set fillchars=""
highlight VertSplit guifg=#2c323c
highlight EndOfBuffer guifg=bg

" Search
set incsearch
set hlsearch

" Status line
set laststatus=2
set ruler
set showcmd
set wildmenu

" Scrolling
set scrolloff=4
set sidescrolloff=4
set nowrap

" Indentation (default, languages may override this)
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

" File encoding
set encoding=utf-8

" Code completion
imap <C-Space> <C-X><C-O>

set completeopt=longest,menuone
set pumheight=16

set conceallevel=2
set concealcursor=nvi

set wildmode=list:longest

" Terminal
tnoremap <Esc> <C-\><C-n>
autocmd TermOpen * setlocal nonumber

set mouse=a
