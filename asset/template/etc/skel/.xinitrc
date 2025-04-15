#!/bin/sh


##
## ~/.xinitrc
##
## Executed by startx (run your window manager from here)
##


if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for run_file in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "${run_file}" ] && . "${run_file}"
	done
	unset run_file
fi
