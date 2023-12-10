# Plugins

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    # source from linuxbrew 
    source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    
    export PASSWORD_STORE_ENABLE_EXTENSIONS=true
    export PASSWORD_STORE_EXTENSIONS_DIR='/home/mark/.password-store/.extensions/'
    
    # start TMUX
    if [ -z "$TMUX" ]
      then
        tmux attach -t TMUX || tmux new -s TMUX
    fi

    # wslu
    export BROWSER=wslview

    # WSL specific Aliases
    alias et="et.exe -l1 -i"
    alias -g w~="/mnt/c/Users/mark"
    alias -g downloads="/mnt/c/Users/mark/Downloads/"

elif [[ "$OSTYPE" =~ "darwin" ]]; then
    # source from .zsh
    source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
    source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    source ~/.zsh/pass-zsh-completion/pass-zsh-completion.plugin.zsh    

    # setup pyenv
    export PYENV_ROOT="$HOME/.pyenv"
    command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
    
    # enable direnv
    eval "$(direnv hook zsh)"

else
    echo "Unsupported operating system"
fi

# enable homebrew completions
if type brew &>/dev/null
  then
    FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

# set variables
export LANG="en_GB.UTF-8"
export PATH="$HOME/bin:$PATH"

# Aliases
alias r="radian "
alias c="clear"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias pass='PASSWORD_STORE_ENABLE_EXTENSIONS=true pass '
alias vim="nvim "
alias -g hpc="hpcjeff1@login-cpu.hpc.cam.ac.uk"
alias -g hpc-wk="hpcjeff1@login-cpu.hpc.cam.ac.uk:/home/hpcjeff1/rds/hpc-work/"

# Starship prompt
eval "$(starship init zsh)"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/mark/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/mark/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/mark/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/mark/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

