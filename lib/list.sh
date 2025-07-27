list_profiles() {
  echo "📜 Available profiles:"
  for file in "$PROFILE_DIR"/*.gitconfig; do
    [ -e "$file" ] || continue
    profile=$(basename "$file" .gitconfig)
    echo "  - $profile"
  done

  echo -n "🔎 Current profile email: "
  git config --global user.email
}