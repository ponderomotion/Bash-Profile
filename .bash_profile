# Dan's Bashrc V1.1   

# make grep output pretty and show line numbers
alias grep='grep --color=auto -n'

# Mac specific stuff
platfrm=`uname`

if [[ "$platfrm" == 'Darwin' ]]; then
  alias ls='ls -G'
	export LSCOLORS=dxfxcxdxbxegedabagacad
	export PATH=/opt/local/bin:/opt/local/sbin:$PATH
	alias gfortran='/opt/local/bin/gfortran-mp-4.4'
	export FC=gfortran
fi

# Cuda Stuff
export PATH=/usr/local/cuda/bin:$PATH  
export DYLD_LIBRARY_PATH=/usr/local/cuda/lib:$DYLD_LIBRARY_PATH 

# Easy extract
extract () {
  if [ -f $1 ] ; then
    case $1 in
        *.tar.bz2)   tar xvjf $1    ;;
        *.tar.gz)    tar xvzf $1    ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       rar x $1       ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xvf $1     ;;
        *.tbz2)      tar xvjf $1    ;;
        *.tgz)       tar xvzf $1    ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)           echo "don't know how to extract '$1'..." ;;
    esac
else
    echo "'$1' is not a valid file!"
fi
}

# Make prompt look cool and enable dynamic switching
# e.g. >prompt basic
PS1="\\[$(tput setaf 1)\\]\\u\\[$(tput sgr0)\\]@\\h\\[$(tput setaf 7)\\]:\\w\\[\
$(tput sgr0)\\]> " 

prompt () {
    [[ $# = 1 ]] || exit 255
    mode="$1"

    case "$mode" in
    none)
        export PS1=""
        ;;
    off)
        export PS1="$ "
        ;;
    date)
        export PS1="[\t]\$ "
        ;;
    basic)
        export PS1="\u:\w$ "
        ;;
    full)
        export PS1="[\t]\u:\w$ "
        ;;
    custom)
        export PS1="\\[$(tput setaf 1)\\]\\u\\[$(tput sgr0)\\]@\\h\\[$(tput setaf 7)\\]:\\w\\[\
$(tput sgr0)\\]> "
		;;
    esac
}

# separate commands with timestamp
export PROMPT_COMMAND='q="- $(date +%T)"; while [[ ${#q} -lt $COLUMNS ]]; do q="${q:0:1}$q"; done; echo -e "\033[0;90m$q";'
