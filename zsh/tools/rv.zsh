eval "$(rv shell init zsh)"
eval "$(rv shell completions zsh)"

# Enable local binstubs for `.git/safe` via preexec hook so it re-prepends
# after rv rebuilds $PATH on every command.
# https://thoughtbot.com/blog/git-safe
_git_safe_binstubs_hook() {
  export PATH=".git/safe/../../bin:$PATH"
}
add-zsh-hook preexec _git_safe_binstubs_hook
_git_safe_binstubs_hook
