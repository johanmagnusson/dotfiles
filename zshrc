# Identify where this file is located
ZCONFIG="$HOME/src/github.com/johanmagnusson/dotfiles/zsh"

# Use emacs keybindings (Ctrl+A, Ctrl+E, etc.)
# Must be explicit since EDITOR=vim triggers vi mode
bindkey -e

# Bind special keys
bindkey "${terminfo[kdch1]}" delete-char           # Delete
bindkey '\e[H'  beginning-of-line                  # Home
bindkey '\eOH'  beginning-of-line                  # Home (alt)
bindkey '\e[F'  end-of-line                        # End
bindkey '\eOF'  end-of-line                        # End (alt)

# Core interactive components
source "$ZCONFIG/aliases.zsh"
source "$ZCONFIG/completions.zsh"
source "$ZCONFIG/history.zsh"

# Interactive tool-specific configs (prompts, completions)
for config in $ZCONFIG/tools/*.zsh(N); do
  source "$config"
done
