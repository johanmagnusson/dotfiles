# History settings
HISTFILE=~/.zsh_history
HISTSIZE=10000000
SAVEHIST=10000000

# History options
setopt SHARE_HISTORY          # Share history between sessions
setopt INC_APPEND_HISTORY     # Add commands immediately
setopt HIST_IGNORE_DUPS       # Don't store duplicates
setopt HIST_IGNORE_SPACE      # Ignore commands starting with space

# Ensure Ctrl+R is bound to history search
bindkey '^R' history-incremental-search-backward
