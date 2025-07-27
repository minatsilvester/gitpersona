set -e

# Determine the absolute path to the repo
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BIN_TARGET="$SCRIPT_DIR/bin/gitpersona"
LINK_NAME="$HOME/bin/gitpersona"

# Ensure bin/gitpersona is executable
chmod +x "$BIN_TARGET"

# Ensure $HOME/bin exists
mkdir -p "$HOME/bin"

# Create or update the symlink
ln -sf "$BIN_TARGET" "$LINK_NAME"

# Confirm installation
echo "✅ gitpersona installed!"
echo "🔗 Symlink: $LINK_NAME → $BIN_TARGET"

# Check if $HOME/bin is in PATH
if ! echo "$PATH" | grep -q "$HOME/bin"; then
  echo "⚠️  Warning: $HOME/bin is not in your PATH."
  echo "👉 Add the following to your shell profile:"
  echo '   export PATH="$HOME/bin:$PATH"'
fi