export JAVA_HOME=$(/usr/libexec/java_home)
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

#
alias mvim='open -a /Applications/MacVim.app "$@"'

export PATH=$PATH:~/play-2.2.1

# rbenv Setting
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# added by Anaconda3 5.0.0 installer
export PATH="/anaconda3/bin:$PATH"

export EDITOR='vim'

export NODE_PATH=`npm root -g`

export PATH=~/.local/bin:$PATH
