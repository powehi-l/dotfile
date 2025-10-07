if status is-interactive
    # Commands to run in interactive sessions can go here
end

# fzf --fish | source

alias sby3i='ssh yongjun@10.98.36.218 -p 2222'
alias sby3o='ssh yongjun@115.233.223.42 -p 20039'
alias sby1i='ssh yongjun@10.98.36.102 -p 2222'
alias sby1o='ssh yongjun@115.233.223.42 -p 20030'
alias sby2i='ssh yongjun@10.98.36.223 -p 52222'
alias sby2o='ssh yongjun@115.233.223.42 -p 20038'

alias unset='set --erase'
alias goproxy='export http_proxy=http://127.0.0.1:7890 https_proxy=http://127.0.0.1:7890'
alias disproxy='set -e http_proxy https_proxy'
alias vim=nvim

export EDITOR=nvim

set -l os_type (uname -s)

switch (uname -s)
    case Linux
        fish_add_path ~/.linuxbrew/bin
	fish_add_path ~/.linuxbrew/sbin
    case Darwin
        fish_add_path /opt/homebrew/bin
        fish_add_path /opt/homebrew/sbin
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test "$(uname)" = Linux
	if test -f /home/yongjun/miniconda3/bin/conda
	    eval /home/yongjun/miniconda3/bin/conda "shell.fish" "hook" $argv | source
	else
	    if test -f "/home/yongjun/miniconda3/etc/fish/conf.d/conda.fish"
	        . "/home/yongjun/miniconda3/etc/fish/conf.d/conda.fish"
	    else
	        set -x PATH "/home/yongjun/miniconda3/bin" $PATH
	    end
	end
else
	if test -f /opt/homebrew/Caskroom/miniconda/base/bin/conda
	    eval /opt/homebrew/Caskroom/miniconda/base/bin/conda "shell.fish" hook $argv | source
	else
	    if test -f "/opt/homebrew/Caskroom/miniconda/base/etc/fish/conf.d/conda.fish"
	        . "/opt/homebrew/Caskroom/miniconda/base/etc/fish/conf.d/conda.fish"
	    else
	        set -x PATH /opt/homebrew/Caskroom/miniconda/base/bin $PATH
	    end
	end
end
# <<< conda initialize <<<

# Added by `rbenv init` on 2025年 4月 2日 星期三 14时54分59秒 CST
# status --is-interactive; and rbenv init - --no-rehash fish | source

test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish
