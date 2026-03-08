# Dotfiles

Version-controlled shell and editor config.

## Contents

- **zshrc** — Zsh config (Zap, Powerlevel10k, fzf, history search)

## Setup

1. Symlink into `$HOME` (already done if you ran `install.sh`):
   ```bash
   ln -sf ~/.dotfiles/zshrc ~/.zshrc
   ```
2. Install fzf (for Ctrl+R history search and tab completion):
   - Debian/Ubuntu: `sudo apt install fzf`
   - Or from source: <https://github.com/junegunn/fzf#installation>
3. Restart Zsh: `exec zsh`
4. Run Powerlevel10k wizard: `p10k configure` (optional; install MesloLGS Nerd Font first for best icons)

## Font (Powerlevel10k)

For full Powerlevel10k styles and icons, install **MesloLGS Nerd Font**:

- <https://github.com/romkatv/powerlevel10k#fonts>
- Then set your terminal font to "MesloLGS NF".

## Plugins (Zap)

- **zsh-autosuggestions** — suggests commands from history
- **zsh-syntax-highlighting** — colours valid/invalid syntax
- **supercharge** — extra key bindings and helpers
- **Aloxaf/fzf-tab** — fzf-style tab completion
- **zap-zsh/fzf** — fzf key bindings (Ctrl+R history, Ctrl+T file finder)
- **romkatv/powerlevel10k** — prompt theme
