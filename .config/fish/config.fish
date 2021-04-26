# Import additional files
source $XDG_CONFIG_HOME/fish/aliases.fish

# Custom prompt
set fish_greeting
starship init fish | source

# Use custom colors
if test -e $XDG_CACHE_HOME/wal/sequences
	cat $XDG_CACHE_HOME/wal/sequences
end

if test -e $XDG_CACHE_HOME/wal/colors.fish
	source $XDG_CACHE_HOME/wal/colors.fish
end

# Use zoxide for directory jumping
zoxide init fish --cmd j | source
