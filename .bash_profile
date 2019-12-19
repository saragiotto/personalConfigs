export PS1="[\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h: \[\033[33;1m\]\w\[\033[m\]\]]$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='clear; ls -GFhl'

export PATH="$HOME/.cargo/bin:$PATH:/usr/local/sbin"
source /Users/leonardo/.rvm/scripts/rvm

#autocomplete for git branch names
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

export PYTHONDONTWRITEBYTECODE=1
