#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#export PS1='❰\w❱✒ '
export PS1="\[\e[36m\]❰\[\e[m\]\[\e[37m\]\w\[\e[m\]\[\e[36m\]❱✒ \[\e[m\]"

#export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export PATH=$PATH:/home/nik/.local/bin:/home/nik/bin

source /usr/share/fzf/completion.bash
source /usr/share/fzf/key-bindings.bash

#default apps
export EDITOR='nvim'
export VIDEO='mpv'
export BROWSER='librewolf'
export IMAGE='sxiv'

#abbreviations
alias b1='cd ..'
alias b2='cd ../..'
alias b3='cd ../../..'
alias shut='sudo shutdown -h now'
alias rbot='sudo reboot'
alias fatmount='sudo mount -o "rw,nosuid,nodev,uid=1000,gid=1000,shortname=mixed,dmask=0077,utf8=1,showexec,flush"'
alias ytdlM='yt-dlp -o "~/music/%(title)s.%(ext)s" -f "bestaudio[ext=m4a]/best" -x --embed-thumbnail'
alias sputydl='spotdl --dt 4 --st 4 --path-template "{album}/{title}-{artist}.{ext}"'
alias wifi='iwctl station wlan0 connect TIM-31263573 && dunstify "Connected to TIM-31263573"'
alias suckinstall='sudo cp config.def.h config.h && sudo make clean install'
#alias suckinstall='figlet "No idiota"'

#pacman
alias pacs='sudo pacman -S'
alias pacr='sudo pacman -R'
alias pacq='pacman -Q | fzf -m --preview "pacman -Qi {1}"'
alias pacclean='sudo pacman -Rns $(pacman -Qtdq)'
alias pacfinder="pacman -Slq | fzf -m --preview 'cat <(pacman -Si {1}) <(pacman -Fl {1} | awk \"{print \$2}\")' | xargs -ro sudo pacman -S"

#flags
alias df='df -h'
alias cp='cp -i'
alias ls='ls --color=auto'
alias la='ls -A'
alias mv='mv -i'
alias rm='rm -vi'

LS_COLORS='di=01;33'
export LS_COLORS
