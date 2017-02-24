#!/bin/sh

# cd ~/Desktop && ln -s $GOPATH/src/github.com/rms1000watt/rms1000watt.github.io/hugo/open-rms1000watt.sh

RMS1000WATT_DIR="$GOPATH/src/github.com/rms1000watt/rms1000watt.github.io/hugo"

open_term()
{
    DIR=$1
    CMD=$2

    osascript <<EOF
    tell application "iTerm2"
      create window with default profile
        tell current session of current window
            write text "cd $DIR"
            write text "$CMD"
      end tell
    end tell
EOF
}

subl $RMS1000WATT_DIR
open $RMS1000WATT_DIR
open_term $RMS1000WATT_DIR
open_term $RMS1000WATT_DIR "hugo serve"
sleep 2
open "http://localhost:1313"