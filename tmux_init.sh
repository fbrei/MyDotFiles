#!/bin/bash

SESSIONNAME=work
TMUX=/usr/bin/tmux

$TMUX has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ];
then
    $TMUX new-session -d -s $SESSIONNAME

    $TMUX rename-window -t $SESSIONNAME:0 bash
fi
