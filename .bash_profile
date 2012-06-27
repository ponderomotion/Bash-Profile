# Make shell look cool                                                          
PS1="\\[$(tput setaf 1)\\]\\u\\[$(tput sgr0)\\]@\\h\\[$(tput setaf 7)\\]:\\w\\[\
$(tput sgr0)\\]> "  

# make grep output pretty
alias grep='grep -v grep | grep --color=auto'

# Mac specific stuff
alias ls=ls -G
export LSCOLORS=dxfxcxdxbxegedabagacad
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

