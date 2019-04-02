"=============================
" VIM BASIC CONFIGS
"=============================
filetype plugin indent on    
syntax on
set number
set relativenumber
set updatetime=1000

"=============================
" PLUGINS
"=============================
call plug#begin()
Plug 'xuhdev/vim-latex-live-preview'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
call plug#end()

let g:livepreview_previewer = 'zathura'

"----------------------------
" coc plugin 
"----------------------------
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

" Use enter to confirm complete
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"----------------------------
" airline plugin
"----------------------------
let g:airline_theme='deus'

"----------------------------
" nerdtree plugin
"----------------------------
" Mapping C-N to toggle nerdtree
map <C-n> :NERDTreeToggle<CR>

"=============================
"AUTO COMMANDS
"=============================

autocmd BufWritePost ~/.config/dwm/config.h,~/.config/dwm/config.def.h,~/.config/dwm/dwm.c ! cd ~/.config/dwm/ && sudo make install
autocmd BufWritePost ~/.Xresources !xrdb .Xresources
set clipboard =unnamedplus

map <C-c> "+y<CR> 


