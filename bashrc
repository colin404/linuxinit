# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Settings
stty -ixon

# User specific environment
# Basic envs
export WORKSPACE="$HOME/workspace"
export LANG="en_US.UTF-8"
export PS1="[\u@dev \W]\$ "
export EDITOR=vim

# Go envs
export GOVERSION=go1.14.4
export GO_INSTALL_DIR=$HOME/go
export GOROOT=$GO_INSTALL_DIR/$GOVERSION
export GOPATH=$WORKSPACE/golang
export GO111MODULE="on"
export GOPROXY=https://goproxy.cn,direct
export GOPRIVATE=github.com
#export GOPROXY="https://goproxy.io"
#export GOPROXY=https://proxy.golang.org,direct
#export GOSUMDB=off
export GOWORK="$WORKSPACE/golang/src"

# PATH env
export PATH=$GOROOT/bin:$GOPATH/bin:$PATH:/usr/local/bin:

# Other envs
export ETCDCTL_API=3
export GITHUB_TOKEN=""

# User specific alias
# Basic alias
alias vi='vim'
alias mg="cd $GOWORK"
alias wk="cd $WORKSPACE"
alias co="cd $GOWORK/github.com/colin404"
alias cow="cd $WORKSPACE/github.com/colin404"
alias r="cd $WORKSPACE/research"

# Others alias
alias g="cd $GOWORK/github.com"
alias k8s="cd $GOWORK/k8s.io"

# default entry folder
cd $WORKSPACE

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/__tabtab.bash ] && . ~/.config/tabtab/__tabtab.bash || true
