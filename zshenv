ZCONFIG_ENV="$HOME/src/github.com/johanmagnusson/dotfiles/zsh/env"

# Tool/env configs that should be available to non-interactive shells too
for config in $ZCONFIG_ENV/*.zsh(N); do
  source "$config"
done

source "$HOME/.cargo/env"
source "$HOME/.deno/env"

export XDG_CONFIG_HOME="$HOME/.config"

export MANWIDTH=80
export LSCOLORS='Axhxxxxxxxxxxxxxxxxx'

export EDITOR=vim
export VISUAL=vim
