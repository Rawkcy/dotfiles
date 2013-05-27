alias myip=ifconfig | grep 'int ' | grep -v 127.0.0.1 | cut -d\  -f2
alias myip=ifconfig | grep 'inet ' | grep -v 127.0.0.1 | 
   cut -d\   -f2

alias myip=ifconfig | grep 'inet ' | grep -v 127.0.0.1 | 
   cut -d\   -f2

# vagrant ssh
alias vts='vagrant ssh'
# loo servers
alias el='ssh a2guo@ecelinux'
alias al='ssh a2guo@uwasic1'

#git shortcuts
alias brandate='for k in `git branch|perl -pe s/^..//`;do echo -e `git show --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $k|head -n 1`\\t$k;done|sort -r'

# bash alias
alias ls='ls -G'
alias ll='ls -lG'

# pretty terminal colour configs etc.
function __git_ps1 ()
{
    local b="$(git symbolic-ref HEAD 2>/dev/null)";
    if [ -n "$b" ]; then
        printf " (%s)" "${b##refs/heads/}";
    fi
}
WHITE="\[\033[0;0m\]"
YELLOW="\[\033[0;33m\]"
CYAN="\[\033[0;36m\]"
RED="\[\033[0;31m\]"
PS1="$RED\W$YELLOW\$(__git_ps1) #$WHITE "
