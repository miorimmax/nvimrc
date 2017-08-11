" Clojure
let g:deoplete#sources.clojure = ['acid']
let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.]*'

Plug 'clojure-vim/acid.nvim'

let g:acid_log_messages = 1

Plug 'guns/vim-clojure-static'
let g:clojure_align_subforms = 1

Plug 'clojure-vim/async-clj-omni'

Plug 'guns/vim-sexp'
let g:sexp_enable_insert_mode_mappings = 0

Plug 'tpope/vim-sexp-mappings-for-regular-people'
