### nikoli shell aliases

alias runs='cd /home/nikoli/cbsdeep/runs/denoising2D'
alias csb='cd "/home/nikoli/.miniconda3/envs/cbsdeep/lib/python3.6/site-packages/csbdeep"'
#alias thefuck='fuck'
alias tb='tensorboard --logdir'

# Muscle memory is still vim
alias vim='nvim'

alias p='"/home/nikoli/Clone/McGill/Courses/COMP 551/Project 4/COMP551-MP4.git"'
alias slab='cd "/run/media/nikoli/Slab"'
alias anno='"/home/nikoli/OneDrive/McGill/DJGroup/CTC/data/master/2018-06-18 - Received CTC Images/2016-12-15 - Sample #8122/A - low porosity 8 um filter"'
alias overlay='cd "/home/nikoli/Clone/McGill/DJGroup/CTC/ctc-scripts/git/imagej-overlay-annotation"'
alias fijid='"/home/nikoli/OneDrive/FIJI/Fiji.app/macros"'

# Git
	# copy the hash of the previous commit to system clipboard
	alias lastci='git rev-parse --short HEAD | xclip -selection clipboard; echo SHA of last commit copied to clipboard'
	alias editlastci='git rebase -i $(git rev-parse HEAD)'

# School {{{
	alias mgvpn='sudo openconnect securevpn.mcgill.ca -U nicholas.chahley@mail.mcgill.ca'
	alias mun='echo nicholas.chahley@mail.mcgill.ca | xclip -selection clipboard; echo McGill username copied to clipboard'
	alias mvpn='sudo openconnect securevpn.mcgill.ca'
	alias flow='cd /home/nikoli/Clone/McGill/Workflow'
	alias comp='cd /home/nikoli/Clone/McGill/Courses/COMP\ 551'
	alias bmde='cd /home/nikoli/Clone/McGill/Courses/Fall\ 2018/BMDE\ 508'
	alias neur='cd /home/nikoli/Clone/McGill/Courses/Fall\ 2018/NEUR\ 630'
	alias lit='cd /home/nikoli/Clone/McGill/DJGroup/Literature'
	alias util='cd /home/nikoli/Clone/McGill/DJGroup/CTC/ctc-scripts/utility'
	alias cdat='cd /home/nikoli/Clone/McGill/DJGroup/CTC/ctc-scripts/data/master'
	alias lab='cd /home/nikoli/Clone/McGill/DJGroup'
	alias thesis='cd /home/nikoli/Clone/McGill/DJGroup/Thesis'
	alias ml='cd /home/nikoli/Clone/McGill/DJGroup/CTC/ctc-scripts/machine_learning'
	alias mltl='cd /home/nikoli/Clone/McGill/DJGroup/CTC/ctc-scripts/machine_learning/Transfer-Learning'
	alias ctc='cd /home/nikoli/Clone/McGill/DJGroup/CTC/ctc-scripts/git'
	alias sanifiles='/home/nikoli/Clone/McGill/DJGroup/CTC/ctc-scripts/preprocessing/sanitize_filenames.py'

	# big tmp but not tmp
	alias mgid='echo 260865097 | xclip -selection clipboard; echo McGill ID copied to clipboard'
# }}}
# Conda {{{
	alias sa='source activate'
	alias sd='source deactivate'

	alias cni='conda install'
	alias cniy='conda install -y'
	alias cns='conda search'
	alias cnl='conda list'
# }}}
alias onedrive="onedrive --enable-logging"
alias proto="STEAM_COMPAT_DATA_PATH=~/.proton python2 ~/.local/share/Steam/steamapps/common/Proton\ 3.7/proton run"
alias pb='cd ~/.config/polybar'
alias desktop='cd ~/.local/share/applications'
alias fiji='cd /home/nikoli/Clone/FIJI/Fiji.app'
alias m4='cd /home/nikoli/.themes/Adapta-Openbox-Mystery4/openbox-3'
alias vimaft='cd ~/.vim/after/ftplugin'

# xrandr
alias screen_ds="xrandr --output eDP-1 --scale 0.83x0.83"
alias screen_dpl="xrandr --output DP-1 --mode 1920x1200 --scale 2x2 --pos 0x0 --output eDP-1 --pos 3840x1200 && ~/.fehbg"
alias screen_dpu="xrandr  --output eDP-1 --pos 0x2400 --primary --output DP-1 --mode 1920x1200 --scale 2x2 --pos 0x0 && ~/.fehbg"
alias labup="xrandr  --output eDP-1 --pos 0x2200 --primary --output DP-1 --mode 1920x1080 --scale 2x2 --pos 0x0 && ~/.fehbg"
alias lableft="xrandr --output DP-1 --mode 1920x1080 --scale 2x2 --pos 0x0 --output eDP-1 --pos 3840x1080 && ~/.fehbg"

# Nouveau Riche
alias scrot='scrot --select'
# alias p='phoronix-test-suites'
alias mu='mupdf'
alias fehf='feh --bg-fill'
alias feht='feh --bg-tile'
alias rsync='rsync --info=progress2'
alias isudo='sudo -i'
alias duh='du -h'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias whatmyip='dig +short myip.opendns.com @resolver1.opendns.com'
alias findi='find -iname' 
alias fg='find * -regextype egrep -regex'
alias onlysplitlines="IFS=$'\n'"
alias osl="IFS=$'\n'"

# Firefox
alias ffd='cd ~/.mozilla/firefox'
alias ffc='cd /home/nikoli/.mozilla/firefox/iliy032i.custom/chrome'
alias ffclear='\rm ~/.cache/mozilla/firefox/iliy032i.custom/startupCache/*'

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

# Editing text out of Vim are sad times.
#alias vim-anywhere='~/.vim-anywhere/bin/run'

# Copy and Paste Output of Command {{{
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
	## secondary drive (slab)
	alias vid='cd ~/Slab/Videos/'
	alias pics='cd ~/Slab/Pictures/'
	alias food='cd ~/Slab/Documents/Recipes/'
  alias emu='cd ~/Slab/Emulation/'
	alias droid='cd /home/nikoli/Slab/Android'
	alias kstm='cd /home/nikoli/Slab/Android/Kustom'
	## slab/doc
	alias doc='cd ~/Slab/Documents/'
	alias admin='cd ~/Slab/Documents/Admin/'
	alias money='cd ~/Slab/Documents/Admin/Financial/'
	alias rbc='cd ~/Slab/Documents/Admin/Financial/RBC'
	alias tax='cd ~/Slab/Documents/Admin/Financial/Tax'
	alias house='cd ~/Slab/Documents/Admin/Apartment'
	alias qc='cd ~/Slab/Documents/Admin/GOVT/Quebec'
	alias bike='cd ~/Slab/Documents/Sport/Bike/'
	alias bikes='cd ~/Slab/Documents/Bike/My\ Bikes/'
	alias mcgill='cd ~/Clone/School/McGill'
  alias djg='cd ~/Clone/McGill/DJGroup'
  alias lab='cd ~/Clone/McGill/DJGroup'
  alias ipn='cd ~/Clone/McGill/IPN'
# }}}
# Edit shell config files {{{
	alias aliases='vim ~/.config/zsh/aliases.sh && source ~/.config/zsh/aliases.sh'
	alias realias='source ~/.config/zsh/aliases.sh'
	alias zshcfg='vim ~/.config/zsh/zsh.cfg'
	alias zshrc='vim ~/.zshrc'
	alias zshpath='vim ~/.config/zsh/path.sh'
	alias vimrc='vim ~/.vim/vimrc'
	alias termcfg='vim ~/.config/terminator/config'
	alias nvimrc='nvim ~/.config/nvim/init.vim'
	alias ninit='nvim ~/.config/nvim/init.vim'
	alias ci3='nvim ~/.config/i3/config'
# }}}
# Shell convinience aliases -- isn't that what these this whole file is? {{{
	alias sudoe='sudo -E'
	alias sudoedit='sudo -E nvim'
	alias cp='cp -v'
	alias mv='mv -v'
	alias ll='ls -l'
	alias lh='ls -a'  # Show hidden files
	alias llh='ls -al'
	alias lhl='ls -al'
	alias lsd='ls -d' # List directories only (ex. lsd L*)
	alias gwd="echo ${PWD/#$HOME/'~'}" # pwd result w/ '~'
	alias so='source'
	alias rpath='realpath'
	alias rp='realpath'
	alias rl='readlink'
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
	# Pacman {{{
		# -S is for sync, makes sense
		alias pms='sudo pacman -S'
		alias pmsy='sudo pacman -S --noconfirm'
		# Update/upgrade
		alias pmsyy='sudo pacman -Syy' # update database (apud)
		alias pmsud='sudo pacman -Syyu'  # "sync database"
		alias pmsu='sudo pacman -Syyu'   # "sync update" (apug)
		# -R : remove 
		alias pmr='sudo pacman -R'      # leave dependencies installed
		alias pmrs='sudo pacman -Rs'    # rm dependencies
		alias pmrd='sudo pacman -Rs'    # rm dependencies
		alias pmrsc='sudo pacman -Rsc'  # + dependent (on rm'd) pkgs
		alias pmrall='sudo pacman -Rsc' # + dependent (on rm'd) pkgs
		# -Q : query
		alias pmqi='sudo pacman --query --info' # list pkg info (incl required by)
		alias pmq='sudo pacman --query --search'
	# }}}
	# yay : Arch User Repository package manager {{{
		alias yays='yay -S'   # sync AUR package
		alias yaysu='yay -Syu'   # update database and upgrade
		alias yayr='yay -Rns' # remove AUR package
	# }}}
	# Ubuntu/Debian --- out of use {{{
	# Apt {{{
		#alias addrepo='sudo add-apt-repository'
		#alias badrepo='sudo add-apt-repository -r'
		#alias agud='sudo apt-get update'
		#alias agi='sudo apt-get install'
		#alias agis='sudo apt-get -s install'
		#alias agiy='sudo apt-get install -y'
		#alias agug='sudo apt-get upgrade'
		#alias agr='sudo apt-get remove'
		#alias agar='sudo apt-get autoremove'
		## Search for by keywoard
		#alias ags='apt-cache search'
		#alias afs='apt-file search'
		## Purge: rm package and all config files
		#alias agrp='sudo apt-get --purge remove'
		#alias agpr='sudo apt-get --purge remove'
		#alias agrpy='sudo apt-get --purge remove -y'
		#alias agpry='sudo apt-get --purge remove -y'
	# }}}
	# Now w/ aptitude {{{
		#alias api='sudo aptitude install'
		#alias apiu='sudo aptitude install --add-user-tag'
		#alias apiuy='sudo aptitude install -y --add-user-tag'
		#alias apiyu='sudo aptitude install -y --add-user-tag'
		#alias apiy='sudo aptitude install -y'
		#alias apsh='aptitude show'
		#alias apse='aptitude search'
		#alias apud='sudo aptitude update'
		#alias apug='sudo aptitude safe-upgrade'
		#alias apdug='sudo aptitude dist-upgrade'
		#alias apr='sudo aptitude remove'
	# }}}
	# }}}
# }}}
	# use for dank terminal {{{
		alias icanhas='touch'
		alias kablamz='mkdir'
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
# }}}
# taskwarrior /GTD / workflow {{{
	# We read this once but have never used it {{{
		#tickle () {
			#deadline=$1
			#shift
			#inls +tickle wait:$deadline $@
		#}
		## tick tuesday Put out garbage
		## tick 2018-02-04 Drivers license apt
		#alias tick=tickle
		#alias think='tickle +1d'
	# }}}
	#alias in='task add +in' # should be okay since in is keyword, not command
	#alias taska='task next -in'   # "All", don't include inbox.
	#alias ta='task next -in'      # "All", don't include inbox.
	#alias taskk='task next +next' # "Killer kroc", only show next
	#alias tn='task next +next'
	#
	### too lazy to write 'pro:'
	#task_project () {
		## "${@:2}" all args starting from 2nd
		#task add pro:"$1" "${@:2}"
	#}
	#alias taskp=task_project
	#alias tasp=task_project

	# notes/lists {{{
		alias inls='vim workflow/in'
		alias next='vim workflow/next_actions'
		alias proj='vim workflow/project'
		alias waiting='vim workflow/waiting_for'
		alias maybe='vim workflow/maybe-someday'
		alias trig='vim workflow/trigger'
		alias trigger='vim workflow/trigger'
	# }}}
# }}}
# Games {{{
	# Path to steam workshop dirs
	alias darkestshop='cd /home/nikoli/.local/share/Steam/steamapps/workshop/content/262060'
	# launch stardew valley thru mod API -- allows UI shortcuts, etc
	alias stardew='cd /home/nikoli/.local/share/Steam/steamapps/common/Stardew\ Valley'
	alias runstardew='~/.local/share/Steam/steamapps/common/Stardew\ Valley/StardewModdingAPI.bin.x86_64'
	alias ddworkshop='/home/nikoli/.local/share/Steam/steamapps/workshop/content/262060'
	alias ddbig='/home/nikoli/.local/share/Steam/steamapps/workshop/content/262060/962313079/campaign/town/buildings/stage_coach'
# }}}
# Executables {{{
	alias mp='setsid mupdf'
	alias ok='setsid okular'
	alias xo='xdg-open'
	## tex engines
	alias ltex='pdflatex'
	alias xtex='xelatex'
	# bullshit I wrote
	alias wish='~/.local/bin/wishlist.py'
	alias sp='~/.local/bin/quick_spellcheck.sh'
	# Simplenote / vim {{{
		# Open gvim to simplenote list 
		alias snl='vim -c SimplenoteList'
		alias snls='vim -c SimplenoteList'
# }}}
	# iPython / Jupyter {{{
		alias jynb='jupyter-notebook'
		# disown and suppress output
		alias ynb='jupyter-notebook &>/dev/null & disown'
		# b/c matplotlib backends
		alias ipython='ipython --profile terminal'
	# }}}
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
	alias song="cmus-remote -C 'echo {}'" # path to currently SELECTED track
																				# how to do currently playing?
# }}}
# Help me with syntax! {{{
	alias pdfsyntax='cat ~/linux/PDF-Manipulation/pdftk/pdftk-examples'
	alias id3ref='cat ~/linux/Audio/id3v2-ref'
	alias tagref='cat ~/linux/Audio/id3v2-ref'
	alias soxclip='cat ~/linux/Audio/SoX/make-clip-with-sox'
# }}}
# vim: ft=bash: ts=2: sw=2: set nowrap:
