alias ls="ls --color"
alias vi="nvim"
alias vim="nvim"

function parse_git_dirty {
  [[ $(git status --porcelain 2> /dev/null) ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ (\1$(parse_git_dirty))/"
}
export PS1="\[\e[32m\]\w\$(parse_git_branch)\[\e[m\] \[\e[31m\]»\[\e[m\] "
export IP=$(cat /etc/resolv.conf | grep nameserver | awk '{ print $2 }')
. "$HOME/.cargo/env"
