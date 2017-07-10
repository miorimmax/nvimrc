" Ruby
Plug 'Shougo/deoplete-rct'

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:ruby_minlines = 1000
autocmd FileType ruby,eruby let g:ruby_spellcheck_strings = 1
autocmd FileType ruby,eruby compiler ruby
