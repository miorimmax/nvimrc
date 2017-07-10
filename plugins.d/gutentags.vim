" Automatic ctags files management
Plug 'ludovicchabant/vim-gutentags'

let g:gutentags_ctags_tagfile = '.tags'
let g:gutentags_exclude_project_root = ['/usr/local', expand('$HOME/.config/nvim')]
