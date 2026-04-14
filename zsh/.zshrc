#============================================================
#Exports
#============================================================

export EDITOR='nvim'
export VISUAL='nvim'
 
#============================================================
#Aliases
#============================================================


alias c='clear'
alias f='fastfetch'
alias vim='nvim'
#alias upd='sudo nixos-rebuild switch'
#alias upd='sudo apt update && apt upgrade'
#alias upd='sudo pacman -Syu'
#alias upd='sudo zypper dup'
#alias upd='doas apk update && apk upgrade'
#alias upd='sudo xbps-install -Syu'
#alias upd='sudo dnf update'
#alias i3conf='nvim ~/.config/i3/config'
#alias bpswmconf='nvim ~/.config/bpswm/bpswmrc'
#alias awesmconf='nvim ~/.config/awesome/rc.lua'
#alias swayconf='nvim ~/.config/sway/config'
#alias hyprconf='nvim ~/.config/hypr/hyprland.conf'
#alias nixconf='sudo nvim /etc/nixos/configuration.nix'
alias zshconf='nvim ~/.zshrc'
alias kittyconf='nvim ~/.config/kitty/kitty.conf'
#alias alarconf='nvim ~/.config/alacritty/alacritty.yml'
alias tty-clock='tty-clock -c -C 6'
alias cmatrix='cmatrix -C blue'
alias ..='cd ..'
alias ...='cd ../..'
alias ls='eza --icons'
alias fm='yazi'
alias temp='watch -n 1 sensors'


#============================================================
#Promt
#============================================================


# PROMPT='%F{cyan}󱄅 %F{white}%F{blue}%~%F{white} %F{green}>%f ' for NixOS
# PROMPT='%F{red}  %F{white}%F{magenta}%~%F{white} %F{red}❯%f ' for Debian GNu/Linux
# PROMPT='%F{cyan}󰣇  %F{white}%F{blue}%~%F{white} %F{cyan}󰁔%f ' for Arch Linux
# PROMPT='%F{green}  %F{white}%F{green}%~%F{white} %F{green}»%f ' for openSUSE
# PROMPT='%F{blue}  %F{white}%F{cyan}%~%F{white} %F{blue}󰧞%f ' for Alpine linux
# PROMPT='%F{green}  %F{white}%F{yellow}%~%F{white} %F{green}⬢%f ' for Void LInux
# PROMPT='%F{blue}  %F{white}%F{blue}%~%F{white} %F{blue}%f ' for Fedora Linux


#============================================================
#AutoComplete
#============================================================


zstyle ':completion:*' menu select
autoload -Uz compinit && compinit
