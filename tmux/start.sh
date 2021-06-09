#!/bin/sh

session="work"

tmux has-session -t $session 2>/dev/null

if [ $? != 0 ]; then
  # set up tmux
  mainWindowName="picpay"
  secondWindowName="personal"
  thirdWindowName="other"

  # create a new tmux session and rename window
  tmux new-session -d -s $session 
  tmux rename-window -t $session $mainWindowName
  tmux send-keys "wd pp" C-m
  
  # Split pane 1 horizontal by 85%
  tmux splitw -h -p 85
  tmux send-keys "wd pp" C-m
  tmux send-keys "nvim" C-m
  
  # Select pane 0
  tmux selectp -t 0
  
  # create a new window 
  tmux new-window -t $session:1 -n $secondWindowName
  tmux splitw -h -p 85
  tmux selectp -t 0
  
  # create a new window 
  tmux new-window -t $session:2 -n $thirdWindowName
  
  # return to main vim window
  tmux select-window -t $session:0
  tmux send-keys "clear" C-m
fi

# Finished setup, attach to the tmux session!
tmux attach-session -t $session
