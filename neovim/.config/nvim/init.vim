"=============================
" VIM BASIC CONFIGS
"=============================
filetype plugin indent on    
set number
set relativenumber
set updatetime=1000

"----------------------------
" COPY TO PRIMARY SELECTION
"----------------------------
map <C-c> "+y<CR> 

"=============================
" PLUGINS
"=============================
call plug#begin()
Plug 'xuhdev/vim-latex-live-preview'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete-clangx'
Plug 'joshdick/onedark.vim'
Plug 'artur-shaik/vim-javacomplete2'
call plug#end()

"----------------------------
" DEOPLETE
"----------------------------
let g:deoplete#enable_at_startup = 1
set omnifunc=syntaxcomplete#Complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

"----------------------------
" JAVA COMPLETE2
"----------------------------
autocmd FileType java setlocal omnifunc=javacomplete#Complete
let g:deoplete#enable_at_startup = 1
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.java = '[^. *\t]\.\w*'
let g:deoplete#sources = {}
let g:deoplete#sources._ = []
let g:deoplete#file#enable_buffer_path = 1

"----------------------------
" LIVE LATEX
"----------------------------
let g:livepreview_previewer = 'zathura'

"----------------------------
" AIRLINE
"----------------------------
let g:airline_theme='deus'

"----------------------------
" NERDTREE
"----------------------------
map <C-n> :NERDTreeToggle<CR>

"=============================
"AUTO COMMANDS
"=============================
"autocmd BufWritePost ~/.config/dwm/config.h,~/.config/dwm/config.def.h,~/.config/dwm/dwm.c ! cd ~/.config/dwm/ && sudo make install
autocmd BufWritePost ~/.Xresources !xrdb .Xresources
set clipboard =unnamedplus

"=============================
" COLORSCHEME
"=============================
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"set termguicolors
"set background=dark
syntax on
"colorscheme onedark

