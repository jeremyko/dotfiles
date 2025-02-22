 if [ -f ~/.bashrc ]; then
     . ~/.bashrc
fi

#export LANG=ko_KR.UTF-8
#export LANG=C.UTF-8

ulimit -c unlimited 
ulimit -n unlimited 

export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/lib

alias g=git
alias la='ls -al'
alias ll='ls -l'
alias lrt='ls -lrt'
alias du1='du -h --max-depth=1'
alias lg='lazygit'

LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'

export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin
export MANWIDTH=120

PS1="\[\e[1;31m\]\u\[\e[m\]: \[\e[1;36m\]\w\[\e[m\]# "

mygrep () { grep -rnI --color "$1" "${2:-.}"; }

