# To fix the broken symlink:
# ln -sf "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# theme setup
ZSH_THEME="spaceship"
SPACESHIP_TIME_SHOW=true

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# plugins
plugins=(
  sudo
  git
  history
  taskwarrior
  #tmux
  #tmuxinator
  zsh-autosuggestions
  zsh-completions
  colorize
  bundler
)

source $ZSH/oh-my-zsh.sh

# User configuration

# update time
export UPDATE_ZSH_DAYS=7

# set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Compilation flags
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# aliases
alias glances=/Users/tverdokhleb/Library/Python/2.7/bin/glances # glances
alias iftop=/usr/local/opt/iftop/sbin/iftop # iftop
alias tmux='tmux -u' # fix tmux utf8 prompt https://askubuntu.com/questions/410048/utf-8-character-not-showing-properly-in-tmux

# added by travis gem
[ -f /Users/tverdokhleb/.travis/travis.sh ] && source /Users/tverdokhleb/.travis/travis.sh

# fastlane
export PATH="$HOME/.fastlane/bin:$PATH"export PATH="/usr/local/opt/gettext/bin:$PATH"

# flutter
export PATH="$PATH:$HOME/flutter/bin"

# carthage auto-completion
autoload -U compinit
compinit -u

# pyenv - python version manager
eval "$(pyenv init --path)"
export PATH="$HOME/.local/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

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