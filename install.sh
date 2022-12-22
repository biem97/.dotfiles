#!/bin/sh

# Installing ZSH to your default shell
sudo apt-get update
sudo apt-get install zsh -y
chsh -s $(which zsh)

# Installing zap - Plugins manager for ZSH
sh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.sh)

# Installing AstroNvim
echo "Installing astronvim"
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim

# Installing fzf
echo "Installing fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

