# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
# plug "zap-zsh/vim"
plug "zap-zsh/fzf"
# plug "zap-zsh/exa"
plug "zsh-users/zsh-syntax-highlighting"
plug "romkatv/powerlevel10k"
# plug "wintermi/zsh-golang"

# Export PATH
export PATH="$HOME/.local/bin":$PATH

# plugins that have to source after
for FILE in $HOME/.config/zsh/plugins/after/*; do source $FILE; done

# source local custom zsh
source ~/.zsh_local

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
. /home/nosyn/.asdf/asdf.sh

