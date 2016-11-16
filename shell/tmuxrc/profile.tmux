# set -g default-command $SHELL

set -g default-path "~"

set -g status-bg $DARK
set -g status-fg $LIGHT
set -g status-interval 2
set -g status-utf8 on
set-option -g status-justify "centre"
set -g status-left-length 256
set -g status-right-length 256
set -g message-bg $ACCENT
set -g message-fg white

# set-option -g allow-rename off

# set-option -g monitor-activity on
# set-option -g visual-activity on

set -g default-terminal "xterm-256color"

set-window-option -g window-status-current-format "#[fg=colour235, bg=colour27]⮀#[fg=colour255, bg=colour27] #I ⮁ #W #[fg=colour27, bg=colour235]⮀"

set -g status-left '#(~/bin/tmux-powerline/powerline.sh left)'
set -g status-right '#(~/bin/tmux-powerline/powerline.sh right)'
