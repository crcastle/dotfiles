case "$TERM" in
    screen*)
        printf "\033k$(hostname -s)\033\\"
        ;;
esac
