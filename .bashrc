alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -la'

alias 'gitcm'='git commit -m'
alias 'gitcam'='git commit -am'
alias 'gitp'='git pull && git push'
alias 'gitstat'='git fetch && git status'
alias 'gitpudn'='git pull upstream develop --no-edit && git pull origin develop && git push origin develop' #could stand for "git pull upstream default" or "git pull upstream downstream"

#note that for git bash on windows, some aliases are in: "C:\Program Files\Git\etc\profile.d\aliases.sh"
