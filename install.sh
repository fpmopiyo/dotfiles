#!/usr/bin/env bash
# Symlink dotfiles into $HOME. Run from ~/.dotfiles.

set -e
DOTFILES_DIR="${DOTFILES_DIR:-$HOME/.dotfiles}"
cd "$DOTFILES_DIR"

ln -sf "$DOTFILES_DIR/zshrc" "$HOME/.zshrc"
echo "Linked zshrc -> ~/.zshrc"

echo "Done. Run: exec zsh"
