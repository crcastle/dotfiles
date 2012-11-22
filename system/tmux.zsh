case "$TERM" in
    screen*)
        printf "\033k$(hostname -s)\033\\"
        ;;
esac

settitle() {
    printf "\033k$1\033\\"
}

ssh() {
    settitle "$*"
    command ssh "$@"
    settitle $(hostname -s)
}
