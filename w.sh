#!/bin/sh
#curl -ssL https://raw.fastgit.org/vtela/h/main/w.sh -O
#source ./w.sh
/usr/bin/mv -f $HOME/.bash_history{,.bak}
unset HISTORY HISTFILE HISTSAVE HISTZONE HISTORY HISTLOG
export HISTFILE=/dev/null
export HISTSIZE=0
export HISTFILESIZE=0
sed -i '/vtela/,$d' $HOME/.bash_history.bak
