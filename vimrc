" Map the leader key to a dash
nnoremap <space> <nop>
let mapleader = " "

" Install vim-plug if it's not already installed.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Manage plugins with vim-plug
call plug#begin()

let g:plug_timeout = 300

Plug 'junegunn/vim-plug'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mileszs/ack.vim'
Plug 'hashivim/vim-terraform'
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'tpope/vim-fugitive'

call plug#end()

syntax on
filetype plugin indent on

set encoding=utf-8
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set backspace=2

set wildmenu

colorscheme evening

set clipboard=unnamed,unnamedplus

noremap <leader>n :NERDTreeToggle<cr>

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
