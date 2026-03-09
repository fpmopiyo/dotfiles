#!/usr/bin/env bash
# Symlink dotfiles into $HOME. Run from ~/.dotfiles.

set -e
DOTFILES_DIR="${DOTFILES_DIR:-$HOME/.dotfiles}"
cd "$DOTFILES_DIR"

ln -sf "$DOTFILES_DIR/zshrc" "$HOME/.zshrc"
echo "Linked zshrc -> ~/.zshrc"

[[ -f "$DOTFILES_DIR/p10k.zsh" ]] && ln -sf "$DOTFILES_DIR/p10k.zsh" "$HOME/.p10k.zsh" && echo "Linked p10k.zsh -> ~/.p10k.zsh"

# Optional: install fzf for history search (Ctrl+R) and tab completion
if ! command -v fzf &>/dev/null; then
  if command -v apt-get &>/dev/null; then
    echo "Installing fzf (sudo apt install fzf)..."
    sudo apt-get update -qq && sudo apt-get install -y fzf
  else
    echo "Install fzf for Ctrl+R history search: https://github.com/junegunn/fzf#installation"
  fi
fi

echo "Done. Run: exec zsh"
