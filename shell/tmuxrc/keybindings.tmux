# unbind C-b
# set -g prefix ^A
# bind a send-prefix

# title A
unbind A
bind A command-prompt "rename-window %%"

# windows ^W w
unbind ^W
bind ^W list-windows
unbind w
bind w list-windows

# kill K k
unbind K
bind K confirm-before "kill-window"
unbind k
bind k confirm-before "kill-window"

# redisplay ^L l
unbind ^L
bind ^L refresh-client
unbind l
bind l refresh-client

# split -v |
unbind |
bind | split-window

# " windowlist -b
unbind '"'
bind '"' choose-window

setw -g mode-keys vi

# in copy mode…
bind -t vi-copy v begin-selection # `v` begins a selection. (movement keys to select the desired bits)
bind -t vi-copy y copy-selection # `y` copies the current selection to one of tmux's "paste buffers"
bind -t vi-copy V rectangle-toggle # `V` changes between line- and columnwise selection

bind -t vi-copy Y copy-end-of-line # ^1
bind + delete-buffer

# move x clipboard into tmux paste buffer
bind C-p run "tmux set-buffer \"$(xclip -o)\"; tmux paste-buffer"
# move tmux copy buffer into x clipboard
bind C-y run "tmux save-buffer - | xclip -i"

#unbind-key C-b
set-option -g prefix C-a
bind-key C-z send-prefix

# keybindings to make resizing easier
bind -r C-h resize-pane -L
bind -r C-j resize-pane -D
bind -r C-k resize-pane -U
bind -r C-l resize-pane -R