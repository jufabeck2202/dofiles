[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
# Load alias files:
for file in ~/.{bash_prompt,aliases,docker-aliases}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

#Git auto-complete
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi


# Setting PATH for Python 3.7
# PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
# export PATH
export GOPATH=/Users/julianbeck/Documents/Programming/GoWorkspace
export PATH="$PATH:$HOME/dotfiles/bin"
export PATH="$PATH:$(yarn global bin)"



# added by Anaconda3 2019.03 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/julianbeck/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/julianbeck/anaconda3/etc/profile.d/conda.sh" ]; then
# . "/Users/julianbeck/anaconda3/etc/profile.d/conda.sh"  # commented out by conda initialize
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/julianbeck/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/julianbeck/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/julianbeck/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/julianbeck/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/julianbeck/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
eval "$(pipenv --completion)"
eval "$(pyenv init - --no-rehash)"

export PATH="$HOME/.fastlane/bin/fastlane_lib:$PATH"
export PATH="$HOME/.fastlane/bin:$PATH"
export PATH="$PATH:/Users/julianbeck/Documents/Programming/flutter/sdk/flutter/bin"
export GOROOT=/usr/local/go
export GOPATH=$HOME/Users/julianbeck/Documents/Programming/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

clear

