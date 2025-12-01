#!/bin/sh
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
exec nmtui
