#!/bin/bash

SESSIONNAME=work
TMUX=/usr/bin/tmux

$TMUX has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ];
then
    $TMUX new-session -d -s $SESSIONNAME

    $TMUX new-window -t $SESSIONNAME:0
    $TMUX rename-window -t $SESSIONNAME:0 Main
fi

$TMUX attach-session -t $SESSIONNAME
