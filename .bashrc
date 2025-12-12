alias dotgit='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ls="ls --color"
alias vi="nvim"

function parse_git_dirty {
  [[ $(git status --porcelain 2>/dev/null) ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2>/dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ (\1$(parse_git_dirty))/"
}
export PS1="\[\e[32m\]\w\$(parse_git_branch)\[\e[m\] \[\e[31m\]»\[\e[m\] "
