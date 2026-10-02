export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$HOME/.local/share/fnm:$PATH"

if command -v omarchy-update >/dev/null; then alias up='omarchy-update'
elif command -v pacman >/dev/null; then alias up='sudo pacman -Syu'
else alias up='sudo apt update && sudo apt upgrade -y'
fi
