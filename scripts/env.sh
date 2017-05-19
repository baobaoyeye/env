
#set export value
export HOME=/home/work

umask 0022
export TERM=xterm-256color
#export LC_CTYPE=en_US.UTF-8
#export LC_ALL=en_US.UTF-8
#export LANG=en_US.UTF-8

export PS1='\[\e[34;40m\][\A \[\e[31;40m\]MY \[\e[37m\]\w]\$ \[\e[m\]'
LS_COLORS='di=34:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90:*.cc=37:*.c=37:*.cpp=37:*.h=92:*.o=94'
export $LS_COLORS

wp="${HOME}workspace"

# useful alias to jump into dir or extends commands
alias ls='ls --color'
alias to_google='cd ${wp}/google'
alias to_baidu='cd ${wp}/baidu'
alias to_facebook='cd ${wp}/facebook'
alias to_my='cd ${wp}/baobaoyeye'
alias to_tera='cd ${wp}/baobaoyeye/tera'
alias to_code_practices='cd ${wp}/baobaoyeye/code_practices'

alias findx='find . ! -name "*svn*" -and ! -name "*_test*" -and ! -name "*cscope*" | xargs grep --color -nE'
alias path_of_ftp='printf "wget ftp://%s%s/%s\n" `hostname` `pwd`'
alias cscopex='find . ! -name "*_test*" -and -name "*.cc" -or -name "*.h" -or -name "*.proto" > cscope.files && cscope -bkq -i cscope.files'
alias pof='path_of_ftp'

EDITOR=vi; export EDITOR
export SVN_EDITOR=vim

# - set your gcc path 
PATH=/opt/compiler/gcc-4.8.2/bin:$PATH
PATH=/opt/compiler/gcc-4.8.2/bin/g++:$PATH
export PATH


# - set your http proxy, if you need it

# http_proxy=*:*:*:*:3128
# https_proxy=$http_proxy

# export http_proxy https_proxy
# - end of http proxy
