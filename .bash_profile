# Make shell look cool                                                          
PS1="\\[$(tput setaf 1)\\]\\u\\[$(tput sgr0)\\]@\\h\\[$(tput setaf 7)\\]:\\w\\[\
$(tput sgr0)\\]> "  

# make grep output pretty and show line numbers
alias grep='grep --color=auto -n'

# aliases
alias l='ls -G'

# Mac specific stuff
export LSCOLORS=dxfxcxdxbxegedabagacad
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
alias ls='ls -G'



