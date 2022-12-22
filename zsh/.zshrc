#!/bin/sh
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# history
HISTFILE=~/.zsh_history

# source profile
for FILE in $HOME/.config/zsh/plugins/profile/*; do source $FILE; done

# plugins that have to source before
for FILE in $HOME/.config/zsh/plugins/before/*; do source $FILE; done

# plugins
plug "zsh-users/zsh-completions"
plug "zsh-users/zsh-autosuggestions"
plug "hlissner/zsh-autopair"
plug "zap-zsh/supercharge"
plug "zap-zsh/vim"
plug "zap-zsh/fzf"
plug "zap-zsh/exa"
plug "zsh-users/zsh-syntax-highlighting"

# plugins that have to source after
for FILE in $HOME/.config/zsh/plugins/after/*; do source $FILE; done

# Export PATH
export PATH="$HOME/.local/bin":$PATH

