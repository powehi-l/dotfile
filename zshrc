# Functions for PATH and project jump
source ~/.shell/functions.sh

# Configuration for oh-my-zsh
source ~/.zsh/zshrc

alias vim=nvim
alias goproxy='export http_proxy=http://127.0.0.1:29999 https_proxy=http://127.0.0.1:29999'
alias disproxy='unset http_proxy https_proxy'

export PATH=~/.linuxbrew/bin:~/.local_software/usr/bin:~/.local_software/bin:$PATH:~/.cargo/bin
export EDITOR=nvim

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/yongjun/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/yongjun/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/yongjun/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/yongjun/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

alias sby3i='ssh yongjun@10.98.36.218 -p 2222'
alias sby3o='ssh yongjun@115.233.223.42 -p 20039'
alias sby1i='ssh yongjun@10.98.36.102 -p 2222'
alias sby1o='ssh yongjun@115.233.223.42 -p 20030'
