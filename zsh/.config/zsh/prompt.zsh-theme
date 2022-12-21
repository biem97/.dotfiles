#!/bin/sh

autoload -Uz vcs_info
autoload -U colors && colors

zstyle ':vcs_info:*' enable git 

precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst


zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
# 
+vi-git-untracked(){
    if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
        git status --porcelain | grep '??' &> /dev/null ; then
        hook_com[staged]+='!' # signify new files with a bang
    fi
}

zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git:*' formats " %{$fg[blue]%}(%{$fg[red]%}%m%u%c%{$fg[yellow]%}%{$fg[magenta]%} %b%{$fg[blue]%})%{$reset_color%}"



# Replace @ with beautiful icon by season
CURRENT_MONTH=$(date +%B)ala

# Season icons
SPRING_ICONS=🌼
SUMMER_ICONS=🌻
FALL_ICONS=🍂
WINTER_ICONS=🎄

case $CURRENT_MONTH in
  # Spring
  "March" | "April" | "May")
    ICON=${SPRING_ICONS}
    ;;

  # Summer
  "June" | "July" | "August")
    ICON=${SUMMER_ICONS}
    ;;

  "September" | "October" | "November")
    ICON=${FALL_ICONS}
    ;;

  "December" | "January" | "February")
    ICON=${SPRING_ICONS}
    ;;

  *)
    ICON="🔥"
    ;;
esac

# PROMPT="%B%{$fg[yellow]%}⚡% %(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%{$fg[cyan]%}%c%{$reset_color%}"
PROMPT="%B%{$fg[blue]%}[%{$fg[white]%}%n%{$fg[red]%}${ICON}%{$fg[white]%}%m%{$fg[blue]%}] %(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%{$fg[cyan]%}%c%{$reset_color%}"
PROMPT+="\$vcs_info_msg_0_ "