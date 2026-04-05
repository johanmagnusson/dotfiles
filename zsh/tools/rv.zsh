eval "$(rv shell init zsh)"
eval "$(rv shell completions zsh)"

# Enable local binstubs for `.git/safe`, added after rv init to take precedence
# https://thoughtbot.com/blog/git-safe
export PATH=".git/safe/../../bin:$PATH"
