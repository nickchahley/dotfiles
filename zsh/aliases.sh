### nikoli shell aliases
alias aliases='vim ~/.config/zsh/aliases.sh'
alias realias='source ~/.config/zsh/aliases.sh'
alias whichdistro='lsb_release -a'
alias pubip='curl ifconfig.me'
alias prename='perl-rename'
#alias thefuck='fuck'
alias vim='nvim' # Muscle memory is still vim
alias cvim='~/.config/nvim'
alias swc='nvim ~/.config/sway/config'

# Git
# copy the hash of the previous commit to system clipboard
alias lastci='git rev-parse --short HEAD | xclip -selection clipboard; echo SHA of last commit copied to clipboard'
alias editlastci='git rebase -i $(git rev-parse HEAD)'

# big tmp but not tmp
alias mgid='echo 260865097 | xclip -selection clipboard; echo McGill ID copied to clipboard'

# xrandr
alias screen_ds="xrandr --output eDP-1 --scale 0.83x0.83"
alias screen_dpl="xrandr --output DP-1 --mode 1920x1200 --scale 2x2 --pos 0x0 --output eDP-1 --pos 3840x1200 && ~/.fehbg"
alias screen_dpu="xrandr  --output eDP-1 --pos 0x2400 --primary --output DP-1 --mode 1920x1200 --scale 2x2 --pos 0x0 && ~/.fehbg"
alias labup="xrandr  --output eDP-1 --pos 0x2200 --primary --output DP-1 --mode 1920x1080 --scale 2x2 --pos 0x0 && ~/.fehbg"
alias lableft="xrandr --output DP-1 --mode 1920x1080 --scale 2x2 --pos 0x0 --output eDP-1 --pos 3840x1080 && ~/.fehbg"

# Nouveau Riche
alias scrot='scrot --select'
alias mu='mupdf'
alias fehf='feh --bg-fill'
alias feht='feh --bg-tile'
alias rsync='rsync --info=progress2'
alias rsync_changes='rsync --info=progress2 --delete -r'
alias isudo='sudo -i'
alias duh='du -h'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias whatmyip='dig +short myip.opendns.com @resolver1.opendns.com'
alias findi='find -iname' 
alias fgre'find * -regextype egrep -regex'
alias onlysplitlines="IFS=$'\n'"
alias osl="IFS=$'\n'"

# Dualshock 4
alias ds4='ds4drv --hidraw --led 000000'
alias ds4b='ds4drv --hidraw --led 00ffff'

# :(
alias encourage='cat "/home/nikoli/Documents/Nice Words/micheal_blough"'

# TODO learn to use this crazy shit
# for the pushd and popd commands that we shoud use but don't understand
alias dirs='dirs -v'

# set default audio dev to bluetooth headphones (airpods)
alias pablu='paswitch blue'
alias pablue='paswitch blue'

# Xclip: pipe output to clipboards {{{
	#		`v` executes v cmd first and then substitutes it in place
	#		ex:  
	#			pwd | c
	#			cd `v`
	alias c='xclip'                       # X clipboard only
	alias C='xclip -selection clipboard' # System clipboard
	alias v='xclip -o'
	alias V='xclip -o -selection clipboard'

	# symbolic link the clipboard item
	alias lns='ln -s "`xclip -o`"'

	# other operations involving the clipboard item
	alias ccd='cd "`xclip -o`"'
	alias cdc='cd "`xclip -o`"'
	alias mvc='mv "`xclip -o`" ./'
# }}}

# rice {{{
	alias pymux='pymux --truecolor'
	alias bbre='sudo /etc/init.d/bitlbee restart'
	alias dico='~/.local/bin/dico.sh'
	alias fbt='feh --bg-tile'
	alias fbf='feh --bg-fill'
	alias tcf='vim ~/.config/terminator/config'
	alias keycodes="xev | sed -ne '/^KeyPress/,/^$/p'"

	# openbox relevant
	alias obtheme='/home/nikoli/.local/share/themes'
	alias ob='cd ~/.config/openbox/'
	alias ocf='cd ~/.config/openbox/'
	alias orc='vim ~/.config/openbox/rc.xml'
	alias obrc='vim ~/.config/openbox/rc.xml'
	alias xrc='vim ~/.xsessionrc'
	alias autostart='vim ~/.config/openbox/autostart'
	alias fehbg='feh --bg-fill'
	alias aff='apt-file find'
	alias afl='apt-file list'
	alias afs='apt-file show' # alias for list
	alias ttt='cd /home/nikoli/.config/tint2/themes'
	alias tlpui='tlpui_run.sh'
	alias fixesc='setxkbmap -option caps:escape'
# }}}
# Navigation - cd aliases {{{
	alias dot="cd ~/.dotfiles"
	alias lbin="cd ~/.local/bin"
	alias lshare="cd ~/.local/share"
	alias lsh="cd ~/.local/share"
	alias lsrc="cd ~/.local/src"
	alias lsr="cd ~/.local/src"
	alias cbin="cd ~/.local/bin/cx"
	## Programming idioms and boilerplate templates
# }}}
# Shell convinience aliases -- isn't that what these this whole file is? {{{
	alias tarzip='tar -czvf'
	alias sudoe='sudo -E'
	alias sudoedit='sudo -E nvim'
	alias cp='cp -v'
	alias mv='mv -v'
	alias gwd="echo ${PWD/#$HOME/'~'}" # pwd result w/ '~'
	alias so='source'
	alias rpath='realpath'
	alias rp='realpath'
	alias rl='readlink'

	alias lsd='ls -d' # List directories only (ex. lsd L*)
# Package Management {{{
	# dpkg {{{
		is_installed () {
			dpkg -s "$@" | grep Status
		}

		is_installed_verbose () {
			for pkg in "$@"; do
				s="$(dpkg -s "$@" | grep Status )"
				echo "$pkg\t$s"
			done
		}
		alias doihave='is_installed'
		alias doihaves='is_installed_verbose'
	# }}}
	# Apt {{{
		alias addrepo='sudo add-apt-repository'
		alias badrepo='sudo add-apt-repository -r'
		alias agud='sudo apt update'
		alias agi='sudo apt install'
		alias agis='sudo apt install -s'
		alias agiy='sudo apt install -y'
		alias agug='sudo apt upgrade'
		alias agr='sudo apt remove'
		alias agar='sudo apt autoremove'
		# search for by keywoard
		alias agcs='apt-cache search'
		alias agfs='apt-file search'
		# purge: rm package and all config files
		alias agrp='sudo apt --purge remove'
		alias agpr='sudo apt --purge remove'
		alias agrpy='sudo apt --purge remove -y'
		alias agpry='sudo apt --purge remove -y'
	# }}}
# }}}
	# use for dank terminal {{{
		alias icanhas='touch'
		alias has='touch'
		alias donotwant='rm'
		alias dowant='cp -r'
		alias workpls='chmod +x'
		alias makework='chmod +x'
		alias kthxbai='sudo reboot'
		alias cya='sudo shutdown now'
		alias nh='echo "Nice hand."'
		alias ggwp='echo "Good game, well played"' 
	# }}}
# }}}
# Literal Trash Commands {{{
	# Using rm to move files to trash is like weed. It is common and pleasuring
	# but can be bad for you in the future. 
	# \rm : bypass alias you really need to use rm
	alias rm='echo "This is not the command you are looking for."; false'
	# trash from command line (vs always rm) from trash-cli
	alias tr='trash-put'
	alias trls='trash-list'
	alias tr-ls='trash-list'
	alias trrm='trash-empty'
	alias rmtr='trash-empty' #nicer to type vs trrm
	alias tr-rm='trash-empty'
	alias trrs='trash-restore'
	alias rstr='trash-restore'
	alias tr-rs='trash-restore'
# }}}
# Fortune {{{
	alias addfort='vim ~/.config/fortunes/nikoli && strfile ~/.config/fortunes/nikoli'
	alias addfortune='vim ~/.config/fortunes/nikoli && strfile ~/.config/fortunes/nikoli'
# }}}
# Misc {{{
	# Unicode char lookup : unidat | grep 'STRING'
	# now merged, b/c we can remember how to work a grep w/o a reminder
	alias unidat='cat ~/linux/UnicodeCharts/UnicodeData.txt | grep -i'
	# rebuild font cache (after putting new fonts into ~/.fonts)
	alias newfonts='fc-cache -f -v'
	alias buildfonts='fc-cache -f -v'
# }}}
# Executables {{{
	alias mp='setsid mupdf'
	alias ok='setsid okular'
	alias xo='xdg-open'
# }}}
# Music {{{
	alias tag='mid3v2' # mutagen based, id3 2.4 tags, play nice w/ scdl
	#alias scdl='scdl -c' # continue if music already exists
	#alias scdla='scdl --addtofile'
	alias ytdl='youtube-dl -x --audio-format mp3'
	alias mus='~/Music/'
	alias music='cd ~/Music/Library/'
	# iPod shuffle | LIVING IN THE DATABASE DATABASE DATABASE
	alias shuffle='python ~/Slab/Music/iPod/shuffle.py /media/nikoli/IPOD'
	# Lists of new / soon to be new music
	alias newmus='vim ~/Music/music.new'
	alias getmus='vim ~/Music/music.get'

	# cmus
# how to do currently playing?
	alias song="cmus-remote -C 'echo {}'" # path to currently SELECTED track
# }}}
# Help me with syntax! {{{
	alias pdfsyntax='cat ~/linux/PDF-Manipulation/pdftk/pdftk-examples'
	alias id3ref='cat ~/linux/Audio/id3v2-ref'
	alias tagref='cat ~/linux/Audio/id3v2-ref'
	alias soxclip='cat ~/linux/Audio/SoX/make-clip-with-sox'
# }}}
# vim: ft=bash: ts=2: sw=2: set nowrap:
