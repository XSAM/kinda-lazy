#! /usr/bin/env bash
set -euxo pipefail

# For tmux
sudo apt install -y autotools-dev automake libevent-dev ncurses-dev
# Required tmux 2.6 or later version
#sudo apt install -y tmux

# Install tmux 2.8
TMUX_VERSION='2.8'

cd /tmp
curl -L  https://github.com/tmux/tmux/releases/download/$TMUX_VERSION/tmux-$TMUX_VERSION.tar.gz -o tmux-$TMUX_VERSION.tar.gz
tar zxvf tmux-$TMUX_VERSION.tar.gz
cd tmux-$TMUX_VERSION
./configure && make
sudo make install

# Install Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Set conf
cp .tmux.conf ~/.tmux.conf

set +x
echo 'After enter tmux, press <prefix> + I to install plugins.'
echo 'Enjoy!'
