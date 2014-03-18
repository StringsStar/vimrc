set nu
set nocompatible
filetype off


set backspace=indent,eol,start

"tab setting {
set tabstop=4
set shiftwidth=2
set softtabstop=2
set expandtab
"}

set fileencodings=utf-8,cp936,gb18030,latin1
set autoindent
set incsearch
set hlsearch
set showmatch

let mapleader=","
nmap <leader>ee : e ~/.vimrc <cr>
nmap <leader>ss : s ~/.vimrc <cr>
autocmd! bufwritepost .vimrc source %

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vundle Settingsss{
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'The-NERD-tree'
  "nmap <leader>nt :NERDTree<cr>:set rnu<cr>
  nmap <F3> :NERDTree<cr>
  nmap <F4> :NERDTreeClose<cr>
  let NERDTreeShowBookmarks=1
  let NERDTreeShowFiles=1
  let NERDTreeShowHidden=1
  let NERDTreeIgnore=['\.$','\~$']
  let NERDTreeShowLineNumbers=1
  let NERDTreeWinPos=1

Bundle 'Valloric/youCompleteMe'

Bundle 'Lokaltog/powerline'

Bundle 'mbbill/code_complete'

Bundle 'bufexplorer.zip'

Bundle 'A'
"}

syntax on
