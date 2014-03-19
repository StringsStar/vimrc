"version 1.0.2
set nu
set nocompatible
filetype off

set backspace=indent,eol,start

"preference {
set guifont=DejaVu\ Sans\ Mono\ 13
set guioptions-=m	"隐藏gvim菜单和工具栏
set guioptions-=T
set go-=r	"去除左右两边的滚动条
set go-=L
"}

"tab setting {
set tabstop=2	"设置tab为4个空格宽度"
"set shiftwidth=2
"set softtabstop=2
"set expandtab
set noexpandtab	"不扩展tab为空格，expandtab则扩展
"}

set fileformats=unix,dos,mac
set fileencodings=utf-8,cp936,gb18030,latin1
set autoindent
set incsearch
set hlsearch
set showmatch
set ignorecase	"大小写敏感，小写匹配所有，大写精确匹配
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
nnoremap <leader><space> :noh<cr>	"取消搜索高亮
autocmd! bufwritepost .vimrc source %
imap <A-j> <Down>
imap <A-k> <Up>
imap <A-h> <Left>
imap <A-l> <Right>

nnoremap <A-1> 1gt
nnoremap <A-2> 2gt
nnoremap <A-3> 3gt
nnoremap <A-4> 4gt

"setlocal noexpandtab
" Despite promise somewhere alignment is done only using tabs. Thus setting 
" &tabstop is a requirement.

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
Bundle 'Valloric/youCompleteMe'

"Bundle 'Lokaltog/powerline'
  "python from powerline.vim import setup as powerline_setup
  "python powerline_setup()
  "python del powerline_setup
  "set rtp+=~/.vim/bundle/powerline/bindings/vim
  "call vam#ActivateAddons(['powerline'])

Bundle 'Lokaltog/vim-powerline'
"  let g:Powerline_symbols = 'fancy'

Bundle 'mbbill/code_complete'

Bundle 'bufexplorer.zip'

Bundle 'StringsStar/A'

Bundle 'StringsStar/ConqueShell'
"}

syntax on
