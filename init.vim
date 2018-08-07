let g:python3_host_prog = '/usr/local/bin/python3'
let g:python_host_prog  = '/usr/local/opt/python@2/bin/python2'
let g:ruby_host_prog    = '~/.rbenv/versions/2.5.1/bin/ruby'

" Remap the Leader key
let mapleader = ','

call plug#begin('~/.local/share/nvim/plugged')


" File management and navigation
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

nmap <leader>o :GFiles<CR>
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)


" Look and feel
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:gruvbox_italic = 1
let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0


" Code completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
let g:deoplete#keyword_patterns = {}


" Code helpers
Plug 'Shougo/echodoc.vim'
set cmdheight=2

Plug 'guns/vim-sexp'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
let g:sexp_enable_insert_mode_mappings = 0


" REPL
Plug 'hkupty/iron.nvim', { 'do': ':UpdateRemotePlugins' }
let g:iron_repl_open_cmd = 'vertical topleft split'
tnoremap <Esc> <C-\><C-n>
autocmd TermOpen * setlocal nonumber


" Clojure
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fireplace'
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-clojure-highlight'
Plug 'clojure-vim/async-clj-omni'
let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.#]*'

" Evaluate Clojure buffers on load
autocmd BufReadPost *.clj try | silent! Require | catch /^Fireplace/ | endtry


" Kotlin
Plug 'udalov/kotlin-vim'


" Swift
Plug 'keith/swift.vim'

call plug#end()


" Color scheme
set termguicolors
set background=dark
colorscheme gruvbox


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
