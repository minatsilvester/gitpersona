switch_profile() {
  local profile="$1"
  local path="$PROFILE_DIR/$profile.gitconfig"

  if [ ! -f "$path" ]; then
    echo "❌ Profile '$profile' not found."
    return 1
  fi

  # Remove existing user.* sections from global config
  git config --global --unset-all user.name 2>/dev/null
  git config --global --unset-all user.email 2>/dev/null

  # Apply selected profile
  while IFS= read -r line; do
    if [[ $line =~ name\ =\ (.*) ]]; then
      git config --global user.name "${BASH_REMATCH[1]}"
    elif [[ $line =~ email\ =\ (.*) ]]; then
      git config --global user.email "${BASH_REMATCH[1]}"
    fi
  done < "$path"

  echo "🔁 Switched to '$profile' profile."
}
