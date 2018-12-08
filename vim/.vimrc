filetype on                  

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'scrooloose/nerdtree'
Plugin 'w0rp/ale'
" All of your Plugins must be added before the following line

"Keymaps
map <C-n> :NERDTreeToggle<CR>

call vundle#end()            

 
filetype plugin indent on    
syntax on
set number
set relativenumber
set updatetime=500
