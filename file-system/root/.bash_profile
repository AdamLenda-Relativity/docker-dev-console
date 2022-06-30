# EDITOR=nano sudo visudo
# Change the following line: (:i to insert + esc to go back + :w to save + :q to quit)
# Defaults     env_reset
# to:
# Defaults     env_reset,timestamp_timeout=960 # in minutes


export PATH=$PATH:.
# export PATH=$PATH:/usr/bin

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Bash
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx # dark background
alias ls='ls -laghFG'
alias cd..='cd ..'

# Grep
alias grep='grep -n'
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;35;40'

# Git
. /usr/git-extensions/git-completion.bash
. /usr/git-extensions/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
#export PS1='\w$(__git_ps1 " (%s)")\$ '
#export PS1="\[\033[38m\]\u\[\033[32m\] \w \[\033[31m\]\`__git_ps1 -e \"print (%x{git branch 2> /dev/null}.split(%r{\n}).grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[37m\]$\[\033[00m\] "
# export PS1="\[\033[38m\]\u\[\033[32m\] \w \[\033[31m\]\`__git_ps1 -e \"print (%x{git branch 2> /dev/null}.split(%r{\n}).grep(/^\*/).first $"
function __ajl_showLnBreak {
    CHAR=${1}
    WIDTH=$(tput cols)
    if [ -z "${1}" ]; then CHAR="="; fi
    printf -v spaces '%*s' ${WIDTH} '';
    printf '%s\n' ${spaces// /${CHAR}}
}

# configure shell prompt
# PS1="\t \u@\h:\W\$(__git_ps1)\$ "
PS1="\$(__ajl_showLnBreak)\n\$(pwd)\n\[\033[7m\]\t \u@\h\[\033[0m\] \$(__git_ps1 "%s") $ "
git config --global color.ui true
git config --global format.pretty oneline
git config --global core.autocrl input
git config --global core.fileMode true
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

printf "Bash profile loaded\n"