add_profile() {
  echo "Enter profile name(eg: WORK, PERSONAL):"
  read -r name

  echo "Enter Git user.name:"
  read -r username

  echo "Enter Git user.email:"
  read -r email

  profile_path="$BASE_DIR/profiles/$name.gitconfig"

  cat > "$profile_path" <<EOF
[user]
	name = $username
	email = $email
EOF

  echo "✅ Profile '$name' saved."
}