1. Install YouCompleteMe

Remove vim
sudo apt-get remove vim vim-runtime gvim

Configure Vim source
hg clone https://code.google.com/p/vim/
cd vim
./configure --with-features=huge \
			--enable-rubyinterp \
			--enable-pythoninterp \
			--with-python-config-dir=/usr/lib/python2.7-config \
			--enable-perlinterp \
			--enable-gui=gtk2 --enable-cscope --prefix=/usr
make VIMRUNTIMEDIR=/usr/share/vim/vim74
sudo make install

(Options: --enable-luainterp)

compile YCM simple
./install.sh	(Options: --clang-completer --omnisharp-completer)

## Best Colors #CAEACE
