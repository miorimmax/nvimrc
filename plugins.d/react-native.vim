" JavaScript Syntax
Plug 'othree/yajs.vim'

" TypeScript Syntax
Plug 'HerringtonDarkholme/yats.vim'

" JSX Syntax
Plug 'peitalin/vim-jsx-typescript'

" Typescript
Plug 'mhartington/nvim-typescript'

let g:ale_linters.javascript = ['eslint']
let g:ale_linters.typescript = ['tslint']

let g:ale_fixers.javascript = ['eslint']
let g:ale_fixers.typescript = ['tslint']
