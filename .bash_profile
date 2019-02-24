export BLOCKSIZE=1k

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation

alias la='ls -A'
alias l='ls -ltrhA'
alias gl='ls|grep --color'
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation

alias less='less -FSRXc'                    # Preferred 'less' implementation

alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias edit='subl'                           # edit:         Opens any file in sublime editor
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'

source ~/.bash/git-prompt.sh # Show git branch name at command prompt
export GIT_PS1_SHOWCOLORHINTS=true # Option for git-prompt.sh to show branch name in color

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="@ \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

export SBT_OPTS="-Xmx4G -Xss1G -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -Duser.timezone=GMT"
