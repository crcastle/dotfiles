case "$TERM" in
    screen*)
        printf "\033k$(hostname -s)\033\\"
        ;;
esac

settitle() {
    printf "\033k$1\033\\"
}

set_bg() {
  osascript -e "tell application \"iTerm\"
    set current_terminal to (current terminal)
    tell current_terminal
      set current_session to (current session)
      tell current_session
        set background image path to \"$1\"
      end tell
    end tell
  end tell"
}

on_exit() {
    set_bg
    settitle $(hostname -s)
}

ssh() {
  settitle $(echo $* | sed "s/.*@//" | sed "s/ .*//")
  set_bg "/Users/crcastle/Dropbox/Photos/Wallpapers/bear.png"
  trap on_exit INT
  trap on_exit EXIT
  command ssh "$@"
}
