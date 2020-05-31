# @ Exports
set -xU HOME "/home/mysy"
set -xU STARSHIP_CONFIG "$HOME/.config/starship/starship.toml"

set -xU PATH "/usr/local/sbin:/usr/local/bin:/usr/bin/core_perl:/usr/bin:$HOME/.config/bspwm/panel:$HOME/.bin:$HOME/.local/bin"
set -xU XDG_CONFIG_HOME "$HOME/.config"
set -xU XDG_CONFIG_DIRS /usr/etc/xdg:/etc/xdg
set -xU BROWSER /usr/bin/brave
set -xU TERMINAL /usr/bin/alacritty

# @ Prompt
starship init fish | source

# Fisher
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# @ Vim Behavior in the shell
# Emulates vim's cursor shape behavior
# Set the normal and visual mode cursors to a block
set fish_cursor_default block
# Set the insert mode cursor to a line
set fish_cursor_insert line
# Set the replace mode cursor to an underscore
set fish_cursor_replace_one underscore
# The following variable can be used to configure cursor shape in
# visual mode, but due to fish_cursor_default, is redundant here
set fish_cursor_visual block

# Fix vim
set -x SHELL /bin/bash


# Navigation
function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end

# Utilities
#function grep     ; command grep --color=auto $argv ; end
#function ls       ; command ls --color=auto $argv ; end
#function ll       ; command ls -lA --color=auto $argv ; end


abbr p "pacman"

# Options that I usually want...
alias chmox='chmod +x'
alias ca='nvim ~/.config/awesome/rc.lua'
alias cf='nvim ~/.config/fish/config.fish'
alias cb='nvim ~/.config/bspwmrc'
alias bspwm-refresh='~/.config/bspwmrc'
alias editpolybar='nvim ~/.config/polybar/config'

# logout
alias lg='sudo pkill -u $USER'

# Git
alias master="git checkout master"
alias push="git push"

# Shortcuts
alias g="git"
alias vim="nvim"
alias v="nvim"
