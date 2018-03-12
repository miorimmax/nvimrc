" JavaScript Syntax
Plug 'pangloss/vim-javascript'

" TypeScript Syntax
Plug 'leafgarland/typescript-vim'

" JSX Syntax
Plug 'ianks/vim-tsx'

let g:ale_linters.javascript = ['eslint']
let g:ale_linters.typescript = ['tslint']

let g:ale_fixers.javascript = ['eslint']
let g:ale_fixers.typescript = ['tslint']
