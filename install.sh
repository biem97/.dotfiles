#!/bin/sh

if [ "$euid" -ne 0 ]
  then echo "🔥 Please run this script with sudo 🔥"
  exit
fi 

# Update apt get
apt-get update
apt update

# Installing ZSH to your default shell
apt-get install zsh -y
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
apt install python3-dev python3-pip python3-setuptools
pip3 install thefuck --user

# Installing tmux
apt install tmux
tmux source ~/.tmux.conf`

# Installing i3
apt install i3

# Installing neofetch
apt install neofetch

# Installing stow
apt-get install stow

# source dotfiles
stow .
