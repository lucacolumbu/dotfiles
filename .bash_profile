export DYLD_LIBRARY_PATH=/Library/PostgreSQL/9.0/lib/
export PATH="/usr/local/bin:/Library/PostgreSQL/9.0/bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

source ~/.git-completion.bash

parse_git_branch(){ git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'; }
export PS1='\w $(parse_git_branch)\$ '

LSCOLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS
alias 'ls'='ls -G'

export EDITOR="vim"

