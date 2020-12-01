# Mysy's Dotfiles

These are the dotfiles deployed by [LARBS](https://github.com/mysy00/LARBS).

- Very useful scripts are in `~/.local/bin/`
- Settings for:
	- nvim (text editor)
	- fish (default shell)
	- zsh (backup shell)
	- bspwm (window manager)
	- polybar (status bar)
	- sxhkd (general key binder)
	- ranger (file manager)
	- mpd/ncmpcpp (music)
	- feh (image/gif viewer, wallpaper setter)
	- picom (window compositor with kawase blur)
	- and more, just check out `.config` directory
- I try to minimize what's directly in `~` so:
	- All configs that can be in `~/.config/` are.
	- Some environmental variables have been set in `~/.zprofile` to move configs into `~/.config/`

## Install these dotfiles

Use [LARBS](https://github.com/mysy00/LARBS) to autoinstall everything:

```
git clone https://github.com/mysy00/LARBS
cd LARBS
sh larbs.sh
```

or clone the repo files directly to your home directory and install [the prerequisite programs](https://github.com/mysy00/LARBS/blob/master/progs.csv).

## Credits
[Luke Smith](https://lukesmith.xyz) Some of the dotfiles (maybe even most of them) are based on his voidrice. Love that guy, check him out!
