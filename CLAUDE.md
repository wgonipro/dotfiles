# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Purpose

Personal dotfiles for macOS. Files are manually symlinked (or copied) to their expected locations — there is no automated install script yet (`setup/init.sh` is a TODO placeholder).

## File Locations

| File in repo | Symlink target |
|---|---|
| `.zshrc` | `~/.zshrc` |
| `.vimrc` | `~/.vimrc` |
| `.gitconfig` | `~/.gitconfig` |
| `.config/tmux/tmux.conf` | `~/.config/tmux/tmux.conf` |
| `.config/sesh/sesh.toml` | `~/.config/sesh/sesh.toml` |
| `.config/starship.toml` | `~/.config/starship.toml` |
| `nushell/config.nu` | `~/.config/nushell/config.nu` |
| `nushell/env.nu` | `~/.config/nushell/env.nu` |

## Shell Stack

- **Primary shell**: zsh with vi mode, zsh-autosuggestions, zsh-syntax-highlighting, zoxide, starship prompt
- **Secondary shell**: Nushell (`nushell/`) with starship and zoxide
- **Terminal multiplexer**: tmux with TPM (prefix: `Ctrl-A`); `K` opens sesh session picker via gum
- **Session manager**: sesh (sessions defined in `.config/sesh/sesh.toml`)
- **Directory jumping**: zoxide (`z` command)
- **ls replacement**: eza with icons and git status

## Key Tooling

- **Package manager**: Homebrew (arm: `/opt/homebrew/bin`, intel: `/usr/local`)
- **Node**: nvm
- **Python**: pyenv
- **Ruby**: rbenv
- **Go**: gvm
- **Vim plugins**: vim-plug (`~/.vim/autoload/plug.vim` auto-bootstrapped on first launch); run `:PlugInstall` inside vim after changes to `.vimrc`

## tmux Plugins (managed by TPM)

Install/update with `prefix + I` inside tmux. Key plugins:
- `tmux-yank` — system clipboard integration
- `tmux-continuum` — session persistence (auto-restore on)
- `tmux-floax` — floating pane (`prefix + p`)
- `tmux-sessionx` — session picker with zoxide mode
- `catppuccin-tmux` — theme
- `tmux-fzf-url` — open URLs from terminal history
