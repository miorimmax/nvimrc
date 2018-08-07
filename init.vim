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


" Language server protocol
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

set completefunc=LanguageClient#complete
set formatexpr=LanguageClient#textDocument_rangeFormatting_sync()

let g:LanguageClient_serverCommands = {}
let g:LanguageClient_rootMarkers = {}

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>


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
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-clojure-highlight'

let g:LanguageClient_serverCommands.clojure = ['clojure-lsp']
let g:LanguageClient_rootMarkers.clojure = ['project.clj', 'deps.edn']
let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.#]*'


" Kotlin
Plug 'udalov/kotlin-vim'


" Swift
Plug 'keith/swift.vim'


" TypeScript
let g:LanguageClient_serverCommands['javascript']     = ['javascript-typescript-stdio']
let g:LanguageClient_serverCommands['javascript.jsx'] = ['javascript-typescript-stdio']
let g:LanguageClient_serverCommands['typescript']     = ['javascript-typescript-stdio']
let g:LanguageClient_serverCommands['typescript.tsx'] = ['javascript-typescript-stdio']

let g:LanguageClient_rootMarkers['javascript']     = ['package.json']
let g:LanguageClient_rootMarkers['javascript.jsx'] = ['package.json']
let g:LanguageClient_rootMarkers['typescript']     = ['package.json']
let g:LanguageClient_rootMarkers['typescript.tsx'] = ['package.json']

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
