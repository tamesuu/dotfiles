# for homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

ssh-add -K ~/.ssh/id_ed25519

# git
alias g='git'
alias gs='git status'
alias gc='git commit'
alias ga='git add'

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH=~/.nodenv/versions/16.13.1/bin:$PATH
