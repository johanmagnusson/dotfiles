# Re-assert the PATH order zshenv set. macOS /etc/zprofile runs path_helper
# *after* zshenv, which rebuilds PATH with /usr/bin etc. first and demotes
# Homebrew & co. Re-prepending the captured PATH (typeset -gU dedups) restores
# the intended order while keeping the extra dirs path_helper adds.
if [[ -n "$_PATH_FROM_ZSHENV" ]]; then
  export PATH="$_PATH_FROM_ZSHENV:$PATH"
  unset _PATH_FROM_ZSHENV
fi

# Migrated from the previous unmanaged ~/.zprofile
# Workaround for spaces in the JetBrains Toolbox scripts path
export PATH="$PATH:$HOME/.bin/jetbrains-toolbox-scripts"
