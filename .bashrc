alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -la'

alias 'gitcm'='git commit -m'
alias 'gitcam'='git commit -am'
alias 'gitp'='git pull && git push'
alias 'gitstat'='git fetch && git status'
alias 'gitWhichRemote'='git rev-parse --abbrev-ref --symbolic-full-name @{u}'
alias 'gitpumn'='git pull upstream main --no-edit' #could stand for "git pull upstream main"
alias 'gitpumnpp'='git pull upstream main --no-edit && git pull origin main && git push origin main' #for personal use - not intended for widespread

#note that for git bash on windows, some aliases are in: "C:\Program Files\Git\etc\profile.d\aliases.sh"
