# Gradle wrapper function
# Automatically uses ./gradlew if present in current or parent directories
# (within git repository boundaries), otherwise falls back to globally installed gradle
gradle() {
  local dir="$PWD"
  local git_root

  # Find git repository root to establish search boundary
  git_root="$(git rev-parse --show-toplevel 2>/dev/null)"

  # If not in a git repo, only check current directory
  if [[ -z "$git_root" ]]; then
    if [[ -x "./gradlew" ]]; then
      ./gradlew "$@"
      return $?
    fi
    command gradle "$@"
    return $?
  fi

  # Search for gradlew in current and parent directories within git repo
  while [[ "$dir" != "/" ]]; do
    if [[ -x "$dir/gradlew" ]]; then
      "$dir/gradlew" "$@"
      return $?
    fi

    # Stop at git repository root boundary
    if [[ "$dir" == "$git_root" ]]; then
      break
    fi

    dir="$(dirname "$dir")"
  done

  # Fall back to global gradle
  command gradle "$@"
}
