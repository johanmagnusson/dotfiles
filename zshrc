# Identify where this file is located
ZCONFIG="$HOME/.dotfiles/zsh"

# Use emacs keybindings (Ctrl+A, Ctrl+E, etc.)
# Must be explicit since EDITOR=vim triggers vi mode
bindkey -e

# Bind special keys
bindkey "${terminfo[kdch1]}" delete-char           # Delete
bindkey '\e[H'  beginning-of-line                  # Home
bindkey '\eOH'  beginning-of-line                  # Home (alt)
bindkey '\e[F'  end-of-line                        # End
bindkey '\eOF'  end-of-line                        # End (alt)

# Core components
source "$ZCONFIG/aliases.zsh"
source "$ZCONFIG/completions.zsh"
source "$ZCONFIG/history.zsh"

# Load tool-specific configs
for config in $ZCONFIG/tools/*.zsh(N); do
  source "$config"
done

# Path updates, overriding any tool specific config
export PATH="$PATH:$HOME/.local/bin"
