#!/bin/sh

# Installing AstroNvim
echo "Installing astronvim"
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim

# Installing zap - Plugins manager for ZSH
sh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.sh)

# Installing fzf
echo "Installing fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# set ZSH to your default shell
chsh -s $(which zsh)