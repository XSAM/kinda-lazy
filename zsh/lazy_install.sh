#! /usr/bin/env bash
set -ex

# Install zsh
apt update
apt install -y zsh curl

# Install on-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install on-my-zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone git://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install fzf plugin
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Add plugins at .zshrc
plugins='zsh-syntax-highlighting z docker kubectl zsh-history-substring-search zsh-autosuggestions colored-man-pages'
sed -E "s/(plugins=\(.*).*(\))/\1 $plugins\2/g" ~/.zshrc | tee ~/.zshrc

# Append conf to .zshrc
cat zsh.conf >> ~/.zshrc