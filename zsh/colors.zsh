autoload -U colors && colors

# Easier aliases for the prompt colors.
for COLOR in BLACK RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
	eval PR_$COLOR='%{$fg_no_bold[${(L)COLOR}]%}'
	eval PR_BOLD_$COLOR='%{$fg_bold[${(L)COLOR}]%}'

	eval export PR_$COLOR
	eval export PR_BOLD_$COLOR
done

eval export PR_RESET='$reset_color'
