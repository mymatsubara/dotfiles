#!/bin/bash
# Setup envs
if [ -n "$BASH_SOURCE" ]; then
  SCRIPT_PATH="${BASH_SOURCE[0]}"
elif [ -n "$ZSH_VERSION" ]; then
  SCRIPT_PATH="${(%):-%N}"
else
  SCRIPT_PATH="$0"
fi
export DOTFILES_DIR="$(realpath "$(dirname "${SCRIPT_PATH}")")"

# Remove aliases
unalias gcp 2&>/dev/null

# Set up PATH
export PATH="$DOTFILES_DIR/scripts:$PATH"
