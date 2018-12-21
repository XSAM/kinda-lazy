#! /usr/bin/env bash
set -euxo pipefail

# Install zsh
sudo apt update
sudo apt install -y zsh curl

# Install on-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"