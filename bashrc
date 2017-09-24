#!/usr/bin/bash

export LC_ALL="zh_CN.UTF-8"

eval `dircolors ~/.dir_colors`

# set color options for terminal
export CLICOLOR=1
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;33;33m\]\w\[\033[1;33;32m\]\$>\[\033[1;37;37m\]'
unset LS_COLORS

# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
  . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


# alias
alias ls='ls --color'

function bypy() {
    python3 ~/.local/lib/python3.5/site-packages/bypy/bypy.py
}

function backlight() {
    xmodmap -e "add mod3 = Scroll_Lock"
    xmodmap -pm
}

function mygit() {
    cd ~/Documents/git/
}

function goagent() {
    python ~/soft/GoAgent-Always-Available/local/proxy.py
}

# github push/pull/clone projectname branch-name
function github() {
    git $1 git@github.com:dhqdqk/$2 $3
}

# gituser name "yourname"; gituser email "youremail"
function gituser() {
    git config --global user.$1 $2
}

# newssh "youremail" to create a new ssh-keygen
function newssh() {
    ssh-keygen -t rsa -b 4096 -C $1
}