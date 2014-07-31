zle-line-init () {
	zle -K viins
	if [ $TERM = "rxvt-unicode-256color" ]; then
		echo -ne "\033[4 q"
	fi
}

zle -N zle-line-init

zle-keymap-select () {
	if [ $TERM = "rxvt-unicode-256color" ]; then
		if [ $KEYMAP = vicmd ]; then
			echo -ne "\033[1 q"
		else
			echo -ne "\033[4 q"
		fi
	fi
}

zle -N zle-keymap-select
