alias ls="ls --color"
alias vi="nvim"

function parse_git_dirty {
  [[ $(git status --porcelain 2> /dev/null) ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ (\1$(parse_git_dirty))/"
}
export PS1="\[\e[32m\]\w\$(parse_git_branch)\[\e[m\] \[\e[31m\]»\[\e[m\] "
export IP=$(ip route show | grep -i default | awk '{ print $3}')
export PATH=$PATH:/usr/local/bin/nvim-linux-x86_64/bin
export PATH=$PATH:/usr/local/bin/node-v22.14.0-linux-x64/bin
export PATH=$PATH:/usr/local/bin/go/bin
export PATH=$PATH:/usr/local/bin/protoc/bin
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin
