#!/bin/zsh

# zsh profile file. Runs on login. Environmental variables are set here.

# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':')"

# Default programs:
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="google-chrome-stable --force-dark-mode"
export READER="zathura"

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_PICTURES_DIR="$HOME/Pictures"
export XDG_VIDEOS_DIR="$HOME/Videos"
export XDG_DOCUMENTS_DIR="$HOME/Documents"

export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
export NNN_PLUG='f:finder;o:fzopen;p:preview-tui;d:diffs;t:nmount;v:imgview'
export NNN_FIFO=/tmp/nnn.fifo

#export XAUTHORITY="${XDG_RUNTIME_DIR}/Xauthority"
export STARSHIP_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/starship/starship.toml"
export NOTMUCH_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/notmuch-config"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export WGETRC="${XDG_CONFIG_HOME:-$HOME /.config}/wget/wgetrc"
export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/inputrc"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export NVM_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/nvm"
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/npm/npmrc"
export GNUPGHOME="${XDG_DATA_HOME:-$HOME/.local/share}/gnupg"
#export WINEPREFIX="${XDG_DATA_HOME:-$HOME/.local/share}/wineprefixes/default"
export KODI_DATA="${XDG_DATA_HOME:-$HOME/.local/share}/kodi"
export VSCODE_PORTABLE="${XDG_DATA_HOME:-$HOME/.local/share}/vscode"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
export ANDROID_SDK_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/android"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="${XDG_CONFIG_HOME:-$HOME/.config}/java"
export GRADLE_USER_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/gradle"
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
export QT_STYLE_OVERRIDE="gtk2"		# Have QT use gtk2 theme.
export QT_QPA_PLATFORMTHEME="gtk2"	# Have QT use gtk2 theme.
export _JAVA_AWT_WM_NONREPARENTING=1	# Fix for Java applications
export BAT_THEME="Dracula"

#export PIDSWALLOW_BLACKLIST=''
export PIDSWALLOW_SWALLOW_COMMAND='bspc node $pwid --flag hidden=on'
export PIDSWALLOW_VOMIT_COMMAND='bspc node $pwid --flag hidden=off'
export PIDSWALLOW_PREGLUE_HOOK='bspc query -N -n $pwid.floating >/dev/null && bspc node $cwid --state floating'

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
