# Import additional files
source $XDG_CONFIG_HOME/fish/aliases.fish

# Env Variables
set -x EDITOR "nvim"
set -x TERMINAL "alacritty"
set -x BROWSER "brave"
set -x READER "zathura"
set -x FILE_EXPLORER "n"

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

# NNN Config
set NNN_PLUG_UPDATE 'u:getplugs'
set NNN_PLUG_FZOPEN 'f:fzopen'
set NNN_PLUG_DRAGON 'd:dragdrop'
set NNN_PLUG_SEDIT 'e:suedit'
set NNN_PLUG_CHMOX 'x:togglex'
set NNN_PLUG_PREVIEW 'p:preview-tui'
set NNN_PLUG_IMGVIEW 'v:imgview'
set NNN_PLUG_SETBG 'b:!setbg $nnn'

set -x NNN_PLUG "$NNN_PLUG_UPDATE;$NNN_PLUG_FZOPEN;$NNN_PLUG_DRAGON;$NNN_PLUG_SEDIT;$NNN_PLUG_CHMOX;$NNN_PLUG_PREVIEW;$NNN_PLUG_IMGVIEW;$NNN_PLUG_SETBG"
set -x NNN_ARCHIVE "\\.(7z|a|ace|alz|arc|arj|bz|bz2|cab|cpio|deb|gz|jar|lha|lz|lzh|lzma|lzo|rar|rpm|rz|t7z|tar|tbz|tbz2|tgz|tlz|txz|tZ|tzo|war|xpi|xz|Z|zip)"
set -x NNN_FIFO "/tmp/nnn.fifo"

function n --wraps nnn --description 'support nnn quit and change directory'
    # Block nesting of nnn in subshells
    if test -n "$NNNLVL"
        if [ (expr $NNNLVL + 0) -ge 1 ]
            echo "nnn is already running"
            return
        end
    end

    # The default behaviour is to cd on quit (nnn checks if NNN_TMPFILE is set)
    # To cd on quit only on ^G, remove the "-x" as in:
    #    set NNN_TMPFILE "$XDG_CONFIG_HOME/nnn/.lastd"
    if test -n "$XDG_CONFIG_HOME"
        set -x NNN_TMPFILE "$XDG_CONFIG_HOME/nnn/.lastd"
    else
        set -x NNN_TMPFILE "$HOME/.config/nnn/.lastd"
    end

    nnn $argv

    if test -e $NNN_TMPFILE
        source $NNN_TMPFILE
        command rm $NNN_TMPFILE
    end
end
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
