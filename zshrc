# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
setopt appendhistory autocd beep nomatch
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/damian/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# custom settings
autoload promptinit
promptinit
prompt fade green


# ~/.bashrc legacy
if [ -f /etc/bash_completion ]; then
	    . /etc/bash_completion
fi

xhost +local:root > /dev/null 2>&1

alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ls-la='ls -la'
alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias grep='grep --color=tty -d skip'
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano PKGBUILD'
alias cd..='cd ..'
alias ..='cd ..'
alias 4chan="wget -q -e robots=off -E -c -nd -nc -np -r -H -Dimages.4chan.org -Rhtml -A "jpg,png,jpeg" --directory-prefix "/home/damian/Desktop/obr" "
alias ip2="ipython2"
alias p2="python2"
alias ip3="ipython"
alias p3="python3"
alias h='history | grep $1'
alias c='clear'
alias mkdir='mkdir -pv'
alias scroff='xset dpms force off'
alias nemo='nemo --no-desktop'
alias xboxasmouse='sudo xboxdrv -w 0 --controller-slot 0 --detach-kernel-driver --mouse'

TERMINAL=gnome-terminal

# ex - archive extractor
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}


#Virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2
export VIRTUALENVWRAPPER_VIRTUALENV=virtualenv2
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/dev
source /usr/bin/virtualenvwrapper.sh


# prompt
BROWSER=/usr/bin/xdg-open
source ~/.autoenv/activate.sh
