gp() {
    git add .
    if [ -z "$1" ]; then
        git commit -m "Update at $(date '+%Y-%m-%d %H:%M:%S')"
    else
        git commit -m "$1"
    fi
    git push
}
