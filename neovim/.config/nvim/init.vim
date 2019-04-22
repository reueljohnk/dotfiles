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
Plug 'joshdick/onedark.vim'
"Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

let g:livepreview_previewer = 'zathura'

"----------------------------
" coc plugin 
"----------------------------
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
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

"autocmd BufWritePost ~/.config/dwm/config.h,~/.config/dwm/config.def.h,~/.config/dwm/dwm.c ! cd ~/.config/dwm/ && sudo make install
autocmd BufWritePost ~/.Xresources !xrdb .Xresources
set clipboard =unnamedplus

map <C-c> "+y<CR> 

" COLORSCHEME

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

set background=dark
colorscheme onedark
