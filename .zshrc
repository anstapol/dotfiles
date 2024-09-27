# ================================
# Powerlevel10k Instant Prompt
# ================================
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ================================
# Oh My Zsh Configuration
# ================================
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set the theme to Powerlevel10k.
ZSH_THEME="powerlevel10k/powerlevel10k"

# Enable plugins.
plugins=(
  alias-finder
  aliases
  docker
  docker-compose
  git
  laravel-sail
  nvm
  web-search
  yarn
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Load Oh My Zsh.
source "$ZSH/oh-my-zsh.sh"

# Zstyle config
zstyle ':omz:plugins:alias-finder' autoload yes
zstyle ':omz:plugins:alias-finder' longer yes
zstyle ':omz:plugins:alias-finder' exact yes
zstyle ':omz:plugins:alias-finder' cheaper yes
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

# ================================
# Powerlevel10k Configuration
# ================================
# Load Powerlevel10k configuration if it exists.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

