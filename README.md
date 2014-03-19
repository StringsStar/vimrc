1. Install YouCompleteMe

Remove vim
sudo apt-get remove vim vim-runtime gvim

Configure Vim source
hg clone https://code.google.com/p/vim/
cd vim

## Install Required Development packages
sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev

## Then Configure it
./configure --with-features=huge --enable-rubyinterp --enable-pythoninterp --with-python-config-dir=/usr/lib/python2.7-config --enable-perlinterp --enable-gui=gnome2 --enable-cscope --prefix=/usr
make VIMRUNTIMEDIR=/usr/share/vim/vim74
sudo make install

(Options: --enable-luainterp)

compile YCM simple
./install.sh	(Options: --clang-completer --omnisharp-completer)

## Best Colors #CAEACE
