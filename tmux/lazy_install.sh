#! /usr/bin/env bash
set -euxo pipefail

# For tmux
sudo apt install -y autotools-dev automake libevent-dev ncurses-dev
# Required tmux 2.6 or later version
sudo apt install -y tmux

# Install Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Set conf
cp .tmux.conf ~/.tmux.conf