### export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export JDK_HOME=$(/usr/libexec/java_home)

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=~/cocos2d-x-3.2/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# UNIX
alias rm='rm -i'
alias ll='ls -l'

# git
alias g='git'
alias gs='git status'
alias gc='git commit'
alias ga='git add'
alias gac='git commit -a'
alias tmuxg='tmux new-session \; source-file ~/.tmux.session.conf'

alias mux='tmuxinator'

#
alias mvim='open -a /Applications/MacVim.app "$@"'

export PATH=$PATH:~/play-2.2.1

# rbenv Setting
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

### # added by Anaconda3 5.0.0 installer
### export PATH="/anaconda3/bin:$PATH"

export EDITOR='vim'

export NODE_PATH=`npm root -g`
export PATH=~/.npm-global/bin:$PATH

export PATH=~/.local/bin:$PATH
. /anaconda3/etc/profile.d/conda.sh

ssh-add -K ~/.ssh/id_rsa


# for k8s
alias k=kubectl
# complete -F __start_kubectl k
export PATH="/usr/local/opt/mongodb-community@4.4/bin:$PATH"
