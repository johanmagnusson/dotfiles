# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal dotfiles repository managed with [rcm](https://github.com/thoughtbot/rcm) for macOS. The configuration uses [starship](https://starship.rs/) for prompt management and includes tool-specific configurations for various development environments.

## Setup and Management

The repository uses `rcm` to manage dotfiles. The `rcrc` file excludes `zsh` and `README` from symlinking.

### Deploying changes

After modifying any dotfiles:
```shell
rcup
```

This will symlink all configuration files from `~/.dotfiles` to their proper locations in `$HOME`.

## Architecture

### Core Structure

- **Root-level files**: Direct configuration files (gitconfig, zshrc, zshenv, inputrc, psqlrc, .editorconfig) that get symlinked to `$HOME` by rcm
- **zsh/**: Shell configuration split into modular components (NOT symlinked by rcm, sourced directly from ~/.dotfiles/zsh)
- **config/**: XDG-style configuration directory (currently contains starship.toml)

### ZSH Configuration Loading

The shell initialization follows this sequence:

1. **zshenv** (loaded first): Sets up environment variables and sources cargo/deno environments
2. **zshrc** (loaded for interactive shells): Sources all zsh configs in this order:
   - `zsh/aliases.zsh` - Shell aliases
   - `zsh/completions.zsh` - ZSH completion system setup
   - `zsh/tools/*.zsh` - Tool-specific configurations (auto-loaded via glob pattern)

### Tool Configurations

Tool-specific configs in `zsh/tools/` handle initialization for:
- **starship.zsh**: Prompt initialization
- **homebrew.zsh**: Homebrew shellenv and PostgreSQL path setup
- **nodenv.zsh**: Node version management
- **rbenv.zsh**: Ruby version management with `.git/safe` binstub support
- **sdkman.zsh**: SDK management
- **gradle.zsh**: Gradle-specific configuration
- **lang.zsh**: Language environment settings
- **claude.zsh**: Claude-specific configuration
- **menti.zsh**: Mentimeter-specific configuration
- **tailscale.zsh**: Tailscale configuration

