#!/usr/bin/env bash

# basic settings
WORKSPACE="$HOME/workspace"
GOWORK="$WORKSPACE/golang/src"

echo "# 1. Create directorys."
mkdir -p $HOME/workspace/golang/src
mkdir -p $HOME/go
mkdir -p $WORKSPACE/research
mkdir -p $GOWORK/github.com/colin404
mkdir -p $WORKSPACE/github.com/colin404

echo "# 2. Copy .bashrc"
cp -f bashrc $HOME/.bashrc

echo "# 3. Copy .bash_profile"
cp -f bash_profile $HOME/.bash_profile


cat << 'EOF'
To completely finish the linux configure, you may need to configure the following items:

1. install and configure `go`: https://golang.org/dl/ (install dir: $HOME/go/go1.x.x)
2. install and configure `git`: https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.9.5.tar.gz
3. install and configure `neovim`: https://github.com/neovim/neovim
4. install and configure `SpaceVim`: https://github.com/marmotedu/marmotVim
EOF
