# My Theme

if patched_font_in_use; then
  TMUX_POWERLINE_SEPARATOR_LEFT_BOLD="⮂"
  TMUX_POWERLINE_SEPARATOR_LEFT_THIN="⮃"
  TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD="⮀"
  TMUX_POWERLINE_SEPARATOR_RIGHT_THIN="⮁"
else
  TMUX_POWERLINE_SEPARATOR_LEFT_BOLD="◀"
  TMUX_POWERLINE_SEPARATOR_LEFT_THIN="❮"
  TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD="▶"
  TMUX_POWERLINE_SEPARATOR_RIGHT_THIN="❯"
fi

TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR=${TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR:-'235'}
TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR=${TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR:-'255'}

TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR=${TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR:-$TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD}
TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR=${TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR:-$TMUX_POWERLINE_SEPARATOR_LEFT_BOLD}


function set_left(){
    if [ -z $TMUX_POWERLINE_LEFT_STATUS_SEGMENTS ]; then
        TMUX_POWERLINE_LEFT_STATUS_SEGMENTS=(
            "weather 235 136" \
                "hostname 33 0 ${TMUX_POWERLINE_SEPARATOR_RIGHT_THIN}" \
                "wan_ip 24 255 ${TMUX_POWERLINE_SEPARATOR_RIGHT_THIN}" \
                "lan_ip 24 255"
            # "battery 137 0 ${TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD}"
        )
    fi
}

function set_right(){
    if [ -z $TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS ]; then
        TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS=(
            "rainbarf 118 0" \
                "mailcount 9 255" \
                "load 0 167" \
                "date 235 136 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
                "time 235 136 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
        )
    fi
}

# Format: segment_name background_color foreground_color [non_default_separator]
set_left
set_right
