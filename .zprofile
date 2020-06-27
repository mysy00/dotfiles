#!/bin/zsh

# zsh profile file. Runs on login. Environmental variables are set here.

# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | paste -sd ':')"

# Default programs:
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="google-chrome-stable"
export READER="zathura"

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_PICTURES_DIR="$HOME/Pictures"
export XDG_VIDEOS_DIR="$HOME/Videos"
export XDG_DOCUMENTS_DIR="$HOME/Documents"

#export XAUTHORITY="${XDG_RUNTIME_DIR}/Xauthority"
export STARSHIP_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/starship/starship.toml"
export NOTMUCH_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/notmuch-config"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export WGETRC="${XDG_CONFIG_HOME:-$HOME /.config}/wget/wgetrc"
export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/inputrc"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export NVM_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/nvm"
export GNUPGHOME="${XDG_DATA_HOME:-$HOME/.local/share}/gnupg"
export WINEPREFIX="${XDG_DATA_HOME:-$HOME/.local/share}/wineprefixes/default"
export KODI_DATA="${XDG_DATA_HOME:-$HOME/.local/share}/kodi"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
export ANDROID_SDK_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/android"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="${XDG_CONFIG_HOME:-$HOME/.config}/java"
export ANSIBLE_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/ansible/ansible.cfg"
export PYLINTHOME="${XDG_CACHE_HOME:-$HOME/.cache}/pylint"

# Other program settings:
export LESS="-R"
export LESS_TERMCAP_mb=$'\e[6m'         # begin blinking
export LESS_TERMCAP_md=$'\e[34m'        # begin bold
export LESS_TERMCAP_us=$'\e[4;32m'      # begin underline
export LESS_TERMCAP_so=$'\e[1;33;41m'   # begin standout-mode - info box
export LESS_TERMCAP_me=$'\e[m'          # end mode
export LESS_TERMCAP_ue=$'\e[m'          # end underline
export LESS_TERMCAP_se=$'\e[m'          # end standout-mode
export QT_QPA_PLATFORMTHEME="gtk2"	# Have QT use gtk2 theme.
#export MOZ_USE_XINPUT2="1"		# Mozilla smooth scrolling/touchpads.
export _JAVA_AWT_WM_NONREPARENTING=1	# Fix for Java applications

#[ ! -f ${XDG_CONFIG_HOME:-$HOME/.config}/shortcutrc ] && shortcuts >/dev/null 2>&1 &

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
