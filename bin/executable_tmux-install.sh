#! /bin/bash

set -euo pipefail

cd /tmp	

# libevent
wget https://github.com/libevent/libevent/releases/download/release-2.1.12-stable/libevent-2.1.12-stable.tar.gz
tar xvf libevent-2.1.12-stable.tar.gz
cd libevent-2.1.12-stable

./configure --prefix=$HOME
make
make install

cd ..

# tmux
wget https://github.com/tmux/tmux/releases/download/3.4/tmux-3.4.tar.gz
tar xvf tmux-3.4.tar.gz
cd tmux-3.4

./configure --prefix=$HOME CFLAGS="-I$HOME/include" LDFLAGS="-L$HOME/lib"
make
make install

cd ..

# clean
rm  libevent-2.1.12-stable.tar.gz
rm -r libevent-2.1.12-stable
rm tmux-3.4.tar.gz
rm -r tmux-3.4

