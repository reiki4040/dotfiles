# command alias ---------------
alias ls='ls -G'
alias ll='ls -l'
alias la='ls -lA'
alias ..='cd ..'
alias grep='grep --color'
alias vi='vim'
alias difff='diff -U 0 -N'
# --------------- command alias

# git -----------------
zstyle ':completion:*:*:git:*' script ~/.zsh/completion/git-completion.bash

# FPATHに`~/.zsh/completion`を追加
fpath=(~/.zsh/completion $fpath)

# シェル関数`compinit`の自動読み込み
autoload -Uz compinit && compinit -i
# ----------------- git

# starship -------------
# https://starship.rs/ja-JP/
eval "$(starship init zsh)"
# ------------- starship

# Go
export GOPATH="$HOME/go"
