# Fast Node Manager
eval "$(fnm env --use-on-cd)"

# PNPM (PNPM_HOME comes from 00-<os>.zsh)
case ":$PATH:" in
  (*":$PNPM_HOME:"*) ;;  # already in PATH
  (*) export PATH="$PNPM_HOME:$PATH" ;;
esac
alias p='pnpm'

# Bun
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
alias b='bun'
