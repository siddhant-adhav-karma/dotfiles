#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# nmtui 
export NEWT_COLORS='
root=white,black
roottext=lightgray,black

border=lightgray,black
title=brightwhite,black

window=lightgray,black
windowtext=lightgray,black

textbox=lightgray,black
textboxborder=lightgray,black

entry=white,black
entryborder=lightgray,black

listbox=lightgray,black
actlistbox=brightwhite,blue

sellist=lightgray,black
actsellist=brightwhite,blue

checkbox=lightgray,black
actcheckbox=brightwhite,blue

button=lightgray,black
actbutton=brightwhite,blue
compactbutton=lightgray,black
actcompactbutton=brightwhite,blue

label=lightgray,black

helpline=lightgray,black
emptyscrollbar=lightgray,black
fullscrollbar=brightwhite,black
'

alias vim='nvim'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

cx() {
  if [ -z "$1" ]; then
    echo "Usage: cx <file.cpp> [g++ options]"
    return 1
  fi
  src="$1"
  out="${src%.cpp}"
  g++ "$src" -o "$out" "${@:2}" || return 1
  ./"$out"
  rm "$out"
}
