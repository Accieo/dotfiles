# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
export JUPYTER_CONFIG_DIR="$HOME/.config/jupyter"
# Set iPython config path
export IPYTHONDIR="$HOME/.config/ipython"
# Set Gradle path
export GRADLE_USER_HOME="$HOME/.cache/gradle"
# Add postgresql to path
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
# Prevent bytecode from Python
export PYTHONDONTWRITEBYTECODE=1
# Golang Path
export GOPATH="$HOME/.go"
# Add Rust to Path
export PATH="/opt/homebrew/opt/rustup/bin/:$PATH"

# -- Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# -- Plugins
plugins=(git zsh-autosuggestions)
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# -- Aliases
alias vim='nvim'
alias fvim='nvim $(fzf)'
alias cfg='vim $HOME/.zshrc'
alias python='python3.12'
alias pip='pip3'
alias venvact='source $HOME/Development/.venvs/main/bin/activate'
alias ls='eza -lh --sort=filename --sort=type --icons'
alias jl='venvact && jupyter-lab'
alias icat='kitty +kitten icat'
alias startdb='LC_ALL="C" /opt/homebrew/opt/postgresql@15/bin/postgres -D /opt/homebrew/var/postgresql@15'

# -- Zsh
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"
