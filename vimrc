" Install vim-plug if it's not already installed.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Manage plugins with vim-plug
call plug#begin()

Plug 'junegunn/vim-plug'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mileszs/ack.vim'
Plug 'hashivim/vim-terraform'

call plug#end()

syntax on
filetype plugin indent on

set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set backspace=2

set wildmenu

colorscheme default

set clipboard=unnamed,unnamedplus
