#!/bin/sh
arg=$1
case $arg in
	"up")
	amixer -q set Master $(($(amixer sget Master | grep -oP -m1 '[0-9]{1,3}%' | sed 's/%//')+5))%
	;;
	"down")
	amixer -q set Master $(($(amixer sget Master | grep -oP -m1 '[0-9]{1,3}%' | sed 's/%//')-5))%
	;;
	"mute")
	amixer -q set Master mute
	;;
	"unmute")
	amixer -q set Master unmute
	;;
esac
