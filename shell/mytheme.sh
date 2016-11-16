# Default Theme

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


function set_left_on_laptop(){
    if [ -z $TMUX_POWERLINE_LEFT_STATUS_SEGMENTS ]; then
        TMUX_POWERLINE_LEFT_STATUS_SEGMENTS=(
            "tmux_session_info 148 234" \
            "lan_ip 24 255 ${TMUX_POWERLINE_SEPARATOR_RIGHT_THIN}" \
            "wan_ip 24 255" \
        )
    fi
}

function set_right_on_laptop(){
    if [ -z $TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS ]; then
        TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS=(
            "load 237 167" \
            "battery 137 127" \
            "date_day 235 136" \
            "date 235 136 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
            "time 235 136 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
        )
    fi
}

function set_left_elsewhere(){
    if [ -z $TMUX_POWERLINE_LEFT_STATUS_SEGMENTS ]; then
        TMUX_POWERLINE_LEFT_STATUS_SEGMENTS=(
            # "tmux_session_info 148 234" \
                "weather 235 136" \
                    "hostname 33 0 ${TMUX_POWERLINE_SEPARATOR_RIGHT_THIN}" \
                    "wan_ip 24 255 ${TMUX_POWERLINE_SEPARATOR_RIGHT_THIN}" \
                    "lan_ip 24 255"  \
                    "vcs_branch 33 0" \
            "vcs_modified 24 34" \
        )
    fi
}

function set_right_elsewhere(){
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
myhost=$(hostname);

if [ $myhost == "LittleBlackBook" ]; then
    set_left_on_laptop
    set_right_on_laptop
else
    set_left_elsewhere
    set_right_elsewhere
fi
