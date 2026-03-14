
eval "$(/opt/homebrew/bin/brew shellenv)"

# alias
alias expose='ngrok http'

# git commands
alias gbs='git branch -r | grep'
alias grhc='git reset --hard origin/$(git branch --show-current)'
alias grb="git fetch -p && git branch -vv | grep ': gone]' | awk '{print $1}' | xargs git branch -D"
# Git stats function - usage: gstats "Author Name"
gstats() {
    if [ -z "$1" ]; then
        echo "Usage: gstats \"Author Name\""
        return 1
    fi
    git log --author="$1" --pretty=tformat: --numstat | awk '{ add += $1; subs += $2; loc += $1 - $2 } END { printf "added lines: %s, removed lines: %s, total lines: %s\n", add, subs, loc }'
}
if command -v ngrok &>/dev/null; then
    eval "$(ngrok completion)"
fi

# ssh connections alias
alias stage-orc='ssh -i ~/.ssh/fin_resources ubuntu@3.7.46.100'
alias sandbox-orc='ssh -i ~/.ssh/fin_resources ubuntu@13.233.184.8'
alias prod-orc='ssh -i ~/.ssh/fin_resources ubuntu@3.110.213.135'

# nano config
export EDITOR=/usr/local/bin/nano
export VISUAL="$EDITOR"