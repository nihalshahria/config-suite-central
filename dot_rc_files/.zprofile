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

# ssh connections alias
alias dev-helden='ssh -i ~/.ssh/ihrhelden-server-dev-stage.pem ubuntu@ec2-3-126-250-244.eu-central-1.compute.amazonaws.com'
alias stage-helden='ssh -i ~/.ssh/ihrhelden-server-dev-stage.pem ubuntu@ec2-3-126-250-244.eu-central-1.compute.amazonaws.com'
alias prod-helden='ssh -i ~/.ssh/ihrhelden-server-prod.pem ubuntu@ec2-52-29-174-7.eu-central-1.compute.amazonaws.com'

# nano config
export EDITOR=/usr/local/bin/nano
export VISUAL="$EDITOR"
