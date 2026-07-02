# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme setup (disabled due starship theme)
# ZSH_THEME="spaceship"
# SPACESHIP_TIME_SHOW=true

# Command execution timestamp format in the history command output
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# oh-my-zsh plugins list
plugins=(
  # Essential
  sudo
  git
  eza
  history
  history-substring-search
  colorize
  copypath
  aliases
  alias-finder
  
  # Tool specific
  swiftpm
  bundler
  
  # Custom oh-my-zsh plugins
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-tab-title
  
  # Disabled here, setup below
  # zsh-completions
  
  # Tests
  #tmux
  #tmuxinator
)

# oh-my-zsh plugins setup

# zsh-tab-title setup
ZSH_TAB_TITLE_ONLY_FOLDER=true
ZSH_TAB_TITLE_DISABLE_AUTO_TITLE=false
ZSH_TAB_TITLE_ENABLE_CMD_AND_FOLDER_ONLY=true

# alias-finder setup
zstyle ':omz:plugins:alias-finder' autoload yes # disabled by default
zstyle ':omz:plugins:alias-finder' exact yes # disabled by default

# Custom plugins

# zsh-completions setup
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
autoload -U compinit && compinit

# oh-my-zsh setup before source

# Update time
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
zstyle ':omz:update' frequency 13

source $ZSH/oh-my-zsh.sh

# Aliases
alias lg='lazygit'

# User configuration after oh-my-zsh source

# Disabled due to 'zsh-tab-title' plugin
# ZSH_THEME_TERM_TITLE_IDLE="%~"

# Set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# fastlane
export PATH="$HOME/.fastlane/bin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"

# flutter
export PATH="$PATH:$HOME/flutter/bin"

# pyenv
eval "$(pyenv init --path)"
export PATH="$HOME/.local/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Ollama settings
# OLLAMA_FLASH_ATTENTION=1
# Enables Flash Attention — an optimized algorithm for computing attention in transformers. 
# Instead of storing the full attention matrix in memory at once, it processes it in chunks. 
# On Apple Silicon, this means faster inference and lower memory usage, especially at long 
# context lengths like the 32K you set.
export OLLAMA_FLASH_ATTENTION=1
# OLLAMA_KV_CACHE_TYPE=q8_0
# The KV (key-value) cache stores intermediate computations so the model doesn't recompute them on every token. 
# By default it uses f16 (full 16-bit float). Setting it to q8_0 compresses that cache to 8-bit, 
# which cuts its memory footprint roughly in half with negligible quality loss. 
# With a 32K context window, the KV cache can get large — this keeps it manageable.
export OLLAMA_KV_CACHE_TYPE=q8_0

# Ghostty $XDG_CONFIG_HOME setup
export XDG_CONFIG_HOME="$HOME/.config"

# Claude code settings
#
export CLAUDE_CODE_DISABLE_TERMINAL_TITLE=1
#
export CLAUDE_CODE_NO_FLICKER=1

# Starship theme setup
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

