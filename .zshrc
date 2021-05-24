# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
 export ZSH_DISABLE_COMPFIX=true
export ZSH=~/.oh-my-zsh
HOME=$(echo ~)

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
#ZSH_THEME="pygmalion"
#ZSH_THEME="superjarin"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
#export GOPATH=/Users/xjiang296/work/go:/Users/xjiang296/blockgraph/bg-signal-go:/Users/xjiang296/blockgraph/bg-query-go:/Users/xjiang296/blockgraph/bg-signal-simulator:/Users/xjiang296/blockgraph/bg-segment-server
#export GOPATHBIN=/Users/xjiang296/work/go/bin:/Users/xjiang296/blockgraph/bg-signal-go/bin:/Users/xjiang296/blockgraph/bg-query-go/bin:/Users/xjiang296/blockgraph/bg-signal-simulator/bin:/Users/xjiang296/blockgraph/bg-segment-server/bin

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
###################these config only on freewheel mac #####################
# alias gopa="$GOPATH"
# export adr=/Users/xjiang296/work/common/src/go/src/audience_data_right
# alias adr="$adr"

# export bgraph=$HOME/blockgraph
# alias bgraph="$bgraph"

# export k8s=/Users/xjiang296/work/go/src/k8s
# alias k8s="$k8s"

# export gotutor=/Users/xjiang296/go/src/github.com/fatih/vim-go-tutorial

# export hyper=/Users/xjiang296/work/common/src/go/src/audience_data_right/docker-compose-files/hyperledger/1.0
# alias hyper="$hyper"

# export blockbench=/Users/xjiang296/work/blockbench
# alias blockbench="$blockbench"
#######################################################################

## add GOPATH to PATH wich a precheck
if [[ ! $PATH =~ "$GOPATHBIN" ]]; then
	export PATH=$PATH:$GOPATHBIN
fi


#if [[ ! $PATH =~ "/Users/xjiang296/Library/Python/2.7/bin" ]]; then
	#export PATH=$PATH:/Users/xjiang296/Library/Python/2.7/bin
#fi
# echo $PATH | grep $GOPATH || PATH=$PATH:$GOPATH/bin
#
if [[ ! $PATH =~ "sonar" ]]; then
	export PATH=$PATH:/Users/xjiang296/sonar-scanner-3.1.0.1141-macosx/bin
fi

alias ex="exit"

## docker 
alias dps="docker ps"
alias dpsn="docker ps --format \"{{.Names}}\""

#alias ctags="'brew --prefix' /bin/ctags"

##
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.br branch
git config --global alias.ad add
git config --global alias.st status
git config --global alias.pl "pull origin master"
git config --global alias.ps "push origin master"
git config --global alias.last 'log -1'
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
#. /Users/xjiang296/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh
#. /usr/local/bin/powerline

export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

#. /Users/xjiang296/Library/Python/3.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh
#. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

# use 'foo' instead 'cd foo' to change dir 
setopt AUTO_CD

##########gcloud#############
alias gcloud="~/google-cloud-sdk/bin/gcloud"

alias stgdev3="ssh stgdev03.stg.fwmrm.net"
alias stgdev1="ssh stgdev01.stg.fwmrm.net"

#alias bgdev="ssh -i ~/.ssh/bg-dev.pem centos@34.201.76.94"

export PATH=$PATH:$HOME/bin

[[ ! $PATH =~ $HOME/.local/bin ]] && export PATH=$PATH:$HOME/.local/bin
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

#export PYTHONPATH=/usr/local/lib/python2.7/site-packages/

# kubeconfig
[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases
source <(kubectl completion zsh)
source <(helm completion zsh)

#helm 
alias hrm="helm delete --purge"
alias hls="helm ls"

#dir motion 
alias up="cd .." 
alias up2="cd ../../"
alias sw="cd $OLDPWD"

alias ssm="aws ssm start-session --target"

alias cicd="cd ~/cicd/common/helm/forecast/engine_simulation"
export PATH="/usr/local/opt/terraform@0.11/bin:$PATH"

#postgres
alias pcli="pgcli -h 127.0.0.1 -U postgres -d blockgraph_participant"
export PATH="/usr/local/opt/go@1.14/bin:$PATH"
ss(){
	iid=$3
	[[ "$iid" == "" ]] && iid="1"
	Iid=$(aws ec2 describe-instances --filters "Name=tag:Name,Values=aerospike-${2}-${1}-${iid}" --query "Reservations[*].Instances[*].InstanceId" --output=text)
	ssm $Iid
}

#run welcome
toilet -f smmono9 -F metal Hello! 
toilet -F border -F metal Xinyang -f mono9
fortune | cowsay
