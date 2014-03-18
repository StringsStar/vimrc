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

set fileformats=unix,dos,mac
set fileencodings=utf-8,cp936,gb18030,latin1
set autoindent
set incsearch
set hlsearch
set showmatch

set laststatus=2
set cmdheight=2

set hidden
set noswapfile
set autochdir
set nobackup

let mapleader=","
nmap <leader>ee : e ~/.vimrc <cr>
nmap <leader>ss : s ~/.vimrc <cr>
nmap - :res <cr>
autocmd! bufwritepost .vimrc source %

setlocal noexpandtab
" Despite promise somewhere alignment is done only using tabs. Thus setting 
" &tabstop is a requirement.
setlocal tabstop=4

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vundle Settingsss{
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"""""man.vim
"vim里使用Man
source $VIMRUNTIME/ftplugin/man.vim

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
  let NERDTreeWinPos='left'
  let NERDTreeWinSize=25
"Bundle 'Valloric/youCompleteMe'

"Bundle 'Lokaltog/powerline'
  "python from powerline.vim import setup as powerline_setup
  "python powerline_setup()
  "python del powerline_setup
  "set rtp+=~/.vim/bundle/powerline/bindings/vim
  "call vam#ActivateAddons(['powerline'])

Bundle 'Lokaltog/vim-powerline'
"  let g:Powerline_symbols = 'fancy'

"Bundle 'mbbill/code_complete'

Bundle 'bufexplorer.zip'

Bundle 'StringsStar/A'

Bundle 'StringsStar/ConqueShell'
"}

syntax on
