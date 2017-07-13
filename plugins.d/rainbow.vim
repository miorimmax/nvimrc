" Rainbow parentheses
Plug 'kien/rainbow_parentheses.vim'

map <leader>rp :RainbowParenthesesToggleAll<CR>

let g:rbpt_colorpairs = [
      \ ['64', '#404040'],
      \ ['128', '#808080'],
      \ ['112', '#707070'],
      \ ['96', '#606060'],
      \ ['80', '#505050'],
      \ ]

syntax on

autocmd VimEnter * RainbowParenthesesToggle
autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces
autocmd Syntax * RainbowParenthesesLoadChevrons
