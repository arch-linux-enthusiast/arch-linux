#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias yt-d="youtube-dl -f bestvideo[ext=mp4]+bestaudio[ext=m4a] -o '%(title)s.%(ext)s'"
alias mirrorlist-update='sudo reflector --verbose --protocol https --latest 20 --sort rate --save /etc/pacman.d/mirrorlist'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias yt-a="youtube-dl -x --embed-thumbnail --audio-format mp3 -o '%(title)s.%(ext)s'"
alias yt-pa="youtube-dl -x --embed-thumbnail --audio-format mp3 -o '%(playlist_index)s. %(title)s.%(ext)s'"
alias yt-pv="youtube-dl -o '%(playlist_index)s. %(title)s.%(ext)s'"
alias Tlj=" cd ~/Music/Sea\ Songs/The\ Longest\ Johns/ && vlc *"
alias brc="vim ~/.bashrc"
alias vhosts="sudo vim /etc/hosts"
alias brsource="source ~/.bashrc"
alias install="sudo pacman -S"
alias remove="sudo pacman -Rns"



function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi


#export PAGER="/usr/bin/most -s"
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}


export QT_QPA_PLATFORMTHEME=qt5ct

