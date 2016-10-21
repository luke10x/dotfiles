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
if [ -d "$HOME/bin/scripts" ] ; then
    PATH="$HOME/bin/scripts:$PATH"
fi
#if [ -d "$HOME/.gem/ruby/2.0.0/bin" ] ; then
    #PATH="$HOME/.gem/ruby/2.0.0/bin:$PATH"
#fi
if [ -d "$HOME/workspace/gocode" ] ; then
    GOPATH=$HOME/workspace/gocode
fi
if [ -d "$GOPATH/bin" ] ; then
    PATH=$PATH:$GOPATH/bin
fi

alias tmux="tmux attach ||  tmux"
alias mount='mount |column -t'
alias h='history'
alias j='jobs -l'
alias tb="nc termbin.com 9999"
alias screengur="scrot -se 'imgurbash.sh \$f'"
alias mostmem="ps -e -o pid,vsz,comm= | sort -n -k 2"

force_color_prompt=yes
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  alias dir='dir --color=auto'
  alias vdir='vdir --color=auto'

  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi
[[ $TMUX = "" ]] && export TERM='xterm-256color'
export PS1='\[\033]0;\u@\h:\w\007\]\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '

export JDK_HOME=/opt/icedtea-bin-7.2.6.1
export MAVEN_OPTS="-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=4000,server=y,suspend=n"

export VISUAL=vim
export EDITOR=vim
export ENVIRONMENT=DEVELOPMENT
