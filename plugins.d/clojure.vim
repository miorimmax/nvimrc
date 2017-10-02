" Clojure
let g:deoplete#sources.clojure = ['acid', 'buffer']
let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.]*'

" Fork of guns/vim-clojure-static until https://github.com/guns/vim-clojure-static/pull/52 is merged
Plug 'edenferreira/vim-clojure-static', { 'branch': 'fix-clojure-reserved-word' }

" Fork of gregspurrier/vim-midje until https://github.com/gregspurrier/vim-midje/pull/1 is merged
"Plug 'fuadsaud/vim-midje', { 'branch': 'fix-lispwords' }

let g:clojure_maxlines = 0
let g:clojure_align_multiline_strings = 1
let g:clojure_align_subforms = 0

Plug 'clojure-vim/acid.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'clojure-vim/async-clj-highlight'

Plug 'clojure-vim/async-clj-omni'

Plug 'guns/vim-sexp'
let g:sexp_enable_insert_mode_mappings = 0

Plug 'tpope/vim-sexp-mappings-for-regular-people'
