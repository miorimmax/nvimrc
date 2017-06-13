" Remap the Leader key
let mapleader = ','

" Plugins
call plug#begin()

  " Sane defaults
  Plug 'tpope/vim-sensible'

  " Dark color scheme
  Plug 'joshdick/onedark.vim'

  let g:onedark_terminal_italics = 0
  let g:onedark_termcolors = 256

  " Fancy status line
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  let g:airline_theme = 'onedark'
  let g:airline_powerline_fonts = 1
  let g:airline_skip_empty_sections = 1
  let g:airline#extensions#nerd_tree#enabled = 1
  let g:airline#extensions#tabline#enabled = 0
  let g:airline#extensions#tabline#show_close_button = 0

  " File tree navigation
  Plug 'scrooloose/nerdtree'

  map <leader>tt :NERDTreeToggle<CR>
  map <leader>tx :NERDTreeClose<CR>
  map <leader>to :NERDTreeFind<CR>

  " Fuzzy file search
  Plug 'ctrlpvim/ctrlp.vim'

  let g:ctrlp_map = '<Leader>o'
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

  " Remaps '.' so plugins can hook into it (instead of just executing last command)
  Plug 'tpope/vim-repeat'

  " Maps to delete, change and add surroundings (quotes, parenthesis, brackets, XML/HTML tags)
  Plug 'tpope/vim-surround'

  " Automatic ctags files management
  Plug 'ludovicchabant/vim-gutentags'

  " Support to several programming languages
  Plug 'sheerun/vim-polyglot'

  " Rainbow parentheses
  Plug 'kien/rainbow_parentheses.vim'

  map <leader>rp :RainbowParenthesesToggleAll<CR>

  " Code completion
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

  let g:deoplete#enable_at_startup = 1
  let g:deoplete#sources = {}
  let g:deoplete#sources._ = ['buffer', 'tag', 'file']
  let g:deoplete#sources.clojure = ['acid']
  let g:deoplete#keyword_patterns = {}
  let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.]*'

  " Clojure
  Plug 'clojure-vim/acid.nvim'      " Interactive development

  map <leader>ar  :AcidRequire<CR>
  map <leader>agd :AcidGoToDefinition<CR>

  Plug 'clojure-vim/async-clj-omni' " Code completion

  Plug 'guns/vim-sexp' " S expressions
  let g:sexp_enable_insert_mode_mappings = 0

  Plug 'tpope/vim-sexp-mappings-for-regular-people'

  " Ruby
  Plug 'Shougo/deoplete-rct'

  autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
  autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
  autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
  autocmd FileType ruby,eruby let g:ruby_minlines = 500
  autocmd FileType ruby,eruby let g:ruby_spellcheck_strings = 1
  autocmd FileType ruby,eruby compiler ruby

  " Python
  Plug 'zchee/deoplete-jedi'

  " Java
  Plug 'artur-shaik/vim-javacomplete2'

  autocmd FileType java setlocal omnifunc=javacomplete#Complete

call plug#end()

" Look and feel
set background=dark
colorscheme onedark

if (has('termguicolors'))
  set termguicolors
endif

set numberwidth=4
set number

set colorcolumn=0

set textwidth=100

set formatoptions-=t

set splitbelow
set splitright

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
