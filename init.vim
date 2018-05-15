" Python
let g:python3_host_prog = '/usr/local/bin/python3'
let g:python_host_prog  = '/usr/local/opt/python@2/bin/python2'
let g:ruby_host_prog    = '/Users/max/.rbenv/versions/2.3.3/bin/ruby'

" Remap the Leader key
let mapleader = ','

call plug#begin('~/.local/share/nvim/plugged-minimal')

" File management and navigation
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

nmap <leader>o :Files<CR>
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)


" Look and feel
Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

let g:airline_theme = 'one'
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
let g:airline#extensions#nerd_tree#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0


" Code helpers
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'guns/vim-sexp'
let g:sexp_enable_insert_mode_mappings = 0



" Code completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
let g:deoplete#keyword_patterns = {}


" Clojure
Plug 'clojure-vim/acid.nvim'

" Fork of guns/vim-clojure-static until https://github.com/guns/vim-clojure-static/pull/52 is merged
Plug 'edenferreira/vim-clojure-static', { 'branch': 'fix-clojure-reserved-word' }

" Fork of gregspurrier/vim-midje until https://github.com/gregspurrier/vim-midje/pull/1 is merged
Plug 'fuadsaud/vim-midje', { 'branch': 'fix-lispwords' }

" Completion
Plug 'clojure-vim/async-clj-omni'
let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.#]*'

" Syntax highlight
Plug 'hkupty/async-clj-highlight',  { 'for': 'clojure', 'branch': 'acid-autocmd' }

let g:clojure_maxlines = 0
let g:clojure_align_multiline_strings = 1
let g:clojure_align_subforms = 0

Plug 'udalov/kotlin-vim'
call plug#end()

" Color scheme
set termguicolors
set background=dark
colorscheme one

" Indentation
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Search
set incsearch
set hlsearch

" Status line
set laststatus=2
set ruler
set showcmd
set wildmenu

" Misc
set mouse=a

set numberwidth=4
set number

set colorcolumn=120
set textwidth=0

set formatoptions-=t

set splitbelow
set splitright

set fillchars=""
highlight VertSplit guifg=#2c323c
highlight EndOfBuffer guifg=bg
