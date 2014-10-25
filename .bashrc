# alias
alias ls='ls -G'
alias ll='ls -l'
alias la='ls -lA'
alias ..='cd ..'
alias grep='grep --color'
alias vi='vim'

# git completion
test -f ~/.git-prompt.sh && . ~/.git-prompt.sh
test -f ~/.git-completion.bash && . ~/.git-completion.bash

# prompt message
GIT_PS1_SHOWDIRTYSTATE=1
PS1='\[\033[40;1;32m\]\u\[\033[2;32m\]@\[\033[0m\]\[\033[40;32m\]\h[\[\033[1;36m\]\w \[\033[31m\]$(__git_ps1 "[%s]")\[\033[00m\] \[\033[0m\]\[\033[40;2;37m\]`date +"%Y/%m/%d %H:%M:%S"`\[\033[0m\]]\\$: '
export PS1=$PS1

# for homebrew (/usr/local/bin occurs before /usr/bin.)
export PATH=/usr/local/bin:$PATH

# Golang
export GOPATH=~/go
export PATH="/usr/local/go/bin:$GOPATH/bin:$PATH"

# for tmuxinator
export EDITOR="/usr/bin/vim"
if [ -s ~/.tmuxinator/scripts/tmuxinator ]; then
  . ~/.tmuxinator/scripts/tmuxinator
fi

# tmux
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


if [ -f ~/dotfiles/.http_status ]; then
  . ~/dotfiles/.http_status
fi
