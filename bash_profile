# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

# Kubectl shell completion
#source '/home/lk/.kube/completion.bash.inc'
#source '/home/lk/.git-completion.bash'
#source '/home/lk/.golangci-lint.bash'
