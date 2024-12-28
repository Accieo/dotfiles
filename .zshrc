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
# Golang path
export GOPATH="$HOME/.go"
# Add Rust to path
export PATH="/opt/homebrew/opt/rustup/bin/:$PATH"
# Set eza config dir
export EZA_CONFIG_DIR="$HOME/.config/eza"

# -- Plugins
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# -- Functions
venvacth() {
	venvdir=$(find . -maxdepth 3 -path "*/bin/activate" -type f 2>/dev/null)
	if [[ -z "$venvdir" ]]; then
		echo "venv not found in current folder"
	else
		source "$venvdir"
	fi
}

# -- Aliases
alias vim='nvim'
alias fvim='nvim $(fzf)'
alias cfg='vim $HOME/.zshrc'
alias python='python3.12'
alias pip='pip3'
alias venvact='source $HOME/Development/.venvs/main/bin/activate'
alias ls='eza -lh --sort=filename --sort=type --icons'
alias jl='venvact && jupyter-lab'
alias startdb='LC_ALL="C" /opt/homebrew/opt/postgresql@15/bin/postgres -D /opt/homebrew/var/postgresql@15'

# -- Zsh
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/mewtwo.json)"
