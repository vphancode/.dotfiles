#!/bin/bash
#

# Automate tmux initaliazation for my work
# C-m as Enter pressed
#

session1="notes"
session2="code"

exist_session=$(tmux list-session | grep $session1)

if [  "$exist_session" = "" ]; then
    # create new session with name as session1 variable
    tmux new-session -d -s $session1

    # rename the current window
    tmux rename-window -t 1 'hugo-server'
    tmux send-key -t 'hugo-server' 'clear' C-m

    # start hugo-server
    tmux send-key -t 'hugo-server' 'cd ~/Desktop/github/myblog' C-m 'hugo server' C-m

    # setup writing window
    tmux new-window -t $session1:2 -n 'writing'
    tmux send-key -t 'writing' 'cd ~/Desktop/github/myblog' C-m 'clear' C-m
fi

exist_session=$(tmux list-session | grep $session2)
if [  "$exist_session" = "" ]; then
    # create session2
    session2="experiment"
    tmux new-session -d -s $session2

    # rename window as code
    tmux rename-window -t 1 'code'
    tmux send-key -t 'code' 'cd ~/Desktop/github' C-m 'clear' C-m

    # attach session code
    tmux attach-session -t $session2
    tmux send-key -t 'code' 'clear' C-m C-m
fi
