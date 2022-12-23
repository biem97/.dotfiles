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

# Installing thefuck
sudo apt update
sudo apt install python3-dev python3-pip python3-setuptools
pip3 install thefuck --user

