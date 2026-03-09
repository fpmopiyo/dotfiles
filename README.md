# Dotfiles

Version-controlled shell and editor config.

## How to view this README

- **Terminal:** `cat ~/.dotfiles/README.md` or `less ~/.dotfiles/README.md`
- **Cursor/VS Code:** File → Open File… → `~/.dotfiles/README.md`, or open the folder `~/.dotfiles` and click README.md

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
4. Run the Powerlevel10k wizard (see below).

## Powerlevel10k setup wizard

The wizard customizes prompt style, icons, and layout. You can run it anytime:

```bash
p10k configure
```

- **First time:** It often starts automatically after you open a new Zsh session. If not, run the command above.
- **Later:** Run `p10k configure` again to change style, colors, or segments.
- **Font:** For the full set of styles and icons, install [MesloLGS Nerd Font](https://github.com/romkatv/powerlevel10k#fonts) and set your terminal font to “MesloLGS NF” before running the wizard.

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
