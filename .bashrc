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

# Local changes fro this PC go here
if [[ -f "$HOME/.bashrc.local" && -r "$HOME/.bashrc.local" ]] ; then
    source "$HOME/.bashrc.local"
fi

# Put your fun stuff here.
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/bin/scripts" ] ; then
    PATH="$HOME/bin/scripts:$PATH"
fi

# export PATH=$HOME/local/bin:$PATH

if [ -d "$HOME/workspace/go" ] ; then
    GOPATH=$HOME/workspace/go
fi

if [ -d "$HOME/.virtualenv/" ] ; then
    source $HOME/.virtualenv/bin/activate
fi

if [ -d "$HOME/.nodeenv/" ] ; then
    source $HOME/.nodeenv/bin/activate
fi

if [ -d "$GOPATH/bin" ] ; then
    PATH=$PATH:$GOPATH/bin
fi

if [ -d "$HOME/opt/go" ] ; then
    PATH=$PATH:$HOME/opt/go/bin
fi

if [ -d "$HOME/opt/neovim/bin" ] ; then
    PATH=$PATH:$HOME/opt/neovim/bin
fi

if [ -d "$JDK_HOME/bin" ] ; then
    PATH="$JDK_HOME/bin:$PATH"
fi

if [ -d "$MAVEN_HOME/bin" ] ; then
    PATH="$MAVEN_HOME/bin:$PATH"
fi

if [ -d "$GRADLE_HOME/bin" ] ; then
    PATH="$GRADLE_HOME/bin:$PATH"
fi


alias tmux="tmux attach ||  tmux"
alias mount='mount |column -t'
alias h='history'
alias j='jobs -l'
alias tb="nc termbin.com 9999"
alias screengur="scrot -se 'imgurbash.sh \$f'"
alias mostmem="ps -e -o pid,vsz,comm= | sort -n -k 2"
alias docker-sync='rsync -e "docker exec -i" --blocking-io -avz --delete --no-perms --no-owner --no-group --checksum --no-times --itemize-changes'

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
export PS1='$(if [ "$DOCKER_HOST" ]; then echo "($DOCKER_HOST) "; fi)\[\033]0;\u@\h:\w\007\]\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '

export VISUAL=vim
export EDITOR=vim
export ENVIRONMENT=DEVELOPMENT
export DOCKER_API_VERSION=1.25 # 1.22 for the new stuff

