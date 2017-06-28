set-option -g status-justify "centre"

run-shell "powerline-daemon -q"

set -g status-bg $DARK
set -g status-fg $LIGHT
set -g status-interval 2
set -g message-bg $ACCENT
set -g message-fg white

set-option -g monitor-activity on
set-option -g visual-activity on

set -g default-terminal "xterm-256color"

source "/usr/local/lib/python2.7/dist-packages/powerline/bindings/tmux/powerline.conf"

set-window-option -g window-status-current-format "#[fg=colour235, bg=colour27]⮀#[fg=colour255, bg=colour27] #I ⮁ #W #[fg=colour27, bg=colour235]⮀"
set -g status-left-length 90
set -g status-right-length 90
