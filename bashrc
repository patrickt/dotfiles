alias g="git"
# alias ls="exa"
# alias cat="bat -p"

# codespaces, inexplicably, overwrites my gitconfig, and I can't get it not to do that
# so I have no choice but to do this bullshit
git config --global alias.co checkout
git config --global alias.st status
git config --global alias.br branch
git config --global --bool push.autoSetupRemote true

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# eval "$(direnv hook bash)"
