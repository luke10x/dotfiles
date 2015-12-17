# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

alias tmux="TERM=screen-256color-bce tmux attach"
alias mount='mount |column -t'
alias h='history'
alias j='jobs -l'
alias tb="nc termbin.com 9999"

[[ $TMUX = "" ]] && export TERM='xterm-256color'
export JDK_HOME=/opt/icedtea-bin-7.2.6.1
export MAVEN_OPTS="-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=4000,server=y,suspend=n"

export VISUAL=vim
export EDITOR=vim
export ENVIRONMENT=DEVELOPMENT
