alias g="git"
alias ls="exa"
alias cat="bat -p"

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

eval "$(direnv hook bash)"
