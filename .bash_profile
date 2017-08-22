alias ls="ls -G"
export CLICOLOR=1
export LSCOLORS=bxfxhxhxgxhxhxgxgxbxbx

PATH=$PATH:$GOPATH/bin

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export adr=/Users/xyjiang/work/common/src/go/src/audience_data_right
#export hyper=~/data/common/src/go/src/audience_data_right/hyperledger/docker-compose-files/hyperledger/1.0/
#export gotutor=/Users/xyjiang/go/src/github.com/fatih/vim-go-tutorial


alias l='ls -CF'
alias la='ls -AFh'
alias ll='ls -lhAF'

alias grep='grep --color'
