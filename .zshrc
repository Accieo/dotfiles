# -- Config
export XDG_CONFIG_HOME="$HOME/.config"
# -- Exports
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# Add Python to Path
export PATH="/opt/homebrew/opt/python@3.12/bin:$PATH"
# Editor export
export EDITOR='nvim'
# Scripts path
export PATH="$HOME/Development/.scripts/:$PATH"
# Set ZSH comp dump path
export ZSH_COMPDUMP="$ZSH/cache/.zcompdump-$HOST"
# Set Jupyter config path
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME/jupyter"
# Set iPython config path
export IPYTHONDIR="$XDG_CONFIG_HOME/ipython"
# Set Gradle path
export GRADLE_USER_HOME="$HOME/.cache/gradle"
# Add postgresql to path
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
# Prevent bytecode from Python
export PYTHONDONTWRITEBYTECODE=1
# Golang path
export GOPATH="$HOME/.go"
# Add Rust to path
export PATH="/opt/homebrew/opt/rustup/bin/:$PATH"
# Set eza config dir
export EZA_CONFIG_DIR="$XDG_CONFIG_HOME/eza"
# Set models path
export AI_MODELS="$HOME/Development/Models"
# Docker baking
export COMPOSE_BAKE=true

# -- Plugins
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# -- Aliases
alias vim='nvim'
alias fvim='nvim $(fzf)'
alias cfg='vim $HOME/.zshrc'
alias python='python3.14'
alias pip='pip3'
alias ls='eza -lh --sort=filename --sort=type --icons'
alias startdb='LC_ALL="C" /opt/homebrew/opt/postgresql@15/bin/postgres -D /opt/homebrew/var/postgresql@15'
alias nfgpicker='$HOME/Development/Projects/nfg-picker/nfg-picker'
alias vid2ten='$HOME/Development/Scripts/compress-video.sh'

# -- Zsh
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"
eval "$(oh-my-posh init zsh --config $XDG_CONFIG_HOME/ohmyposh/theme.json)"
