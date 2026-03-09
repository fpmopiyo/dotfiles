# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# =============================================================================
# Zsh configuration — Zap + Powerlevel10k + fzf + history search
# Version-controlled in ~/.dotfiles
# =============================================================================

# -----------------------------------------------------------------------------
# Zap plugin manager (must be first)
# -----------------------------------------------------------------------------
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

# -----------------------------------------------------------------------------
# Plugins (order can matter: theme last so it takes effect)
# -----------------------------------------------------------------------------
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "zap-zsh/supercharge"
plug "Aloxaf/fzf-tab"                    # Tab completion via fzf (files, dirs, etc.)
plug "zap-zsh/fzf"                       # fzf helper (key bindings, etc.) — requires fzf binary
plug "romkatv/powerlevel10k"             # Theme (load last among plugins)

# -----------------------------------------------------------------------------
# Completion system
# -----------------------------------------------------------------------------
autoload -Uz compinit
compinit

# -----------------------------------------------------------------------------
# fzf key bindings (history search Ctrl+R, file finder Ctrl+T, etc.)
# Sources from first available location: git-install, Debian, or Arch
# Install fzf: https://github.com/junegunn/fzf#installation
# -----------------------------------------------------------------------------
if command -v fzf &>/dev/null; then
  if [[ -f ~/.fzf.zsh ]]; then
    source ~/.fzf.zsh
  elif [[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]]; then
    source /usr/share/doc/fzf/examples/key-bindings.zsh
    [[ -f /usr/share/doc/fzf/examples/completion.zsh ]] && source /usr/share/doc/fzf/examples/completion.zsh
  elif [[ -f /usr/share/fzf/key-bindings.zsh ]]; then
    source /usr/share/fzf/key-bindings.zsh
    [[ -f /usr/share/fzf/completion.zsh ]] && source /usr/share/fzf/completion.zsh
  fi
fi

# -----------------------------------------------------------------------------
# Powerlevel10k theme
# Run `p10k configure` after first load to run the style wizard.
# Recommended font: MesloLGS NF — see https://github.com/romkatv/powerlevel10k#fonts
# -----------------------------------------------------------------------------
# (Theme is loaded via plug above; config lives in ~/.p10k.zsh after wizard)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
