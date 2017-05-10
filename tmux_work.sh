#!/bin/bash

SESSIONNAME=work
TMUX=/usr/bin/tmux

$TMUX has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ];
then
    echo "TEST"
    $TMUX new-session -d -s $SESSIONNAME

    $TMUX new-window -t $SESSIONNAME:0
    $TMUX rename-window -t $SESSIONNAME:0 Splitscreen
    $TMUX split-window -h -t $SESSIONNAME:0

    $TMUX new-window -t $SESSIONNAME:1
    $TMUX rename-window -t $SESSIONNAME:1 Fullscreen
fi

$TMUX attach-session -t $SESSIONNAME:0
