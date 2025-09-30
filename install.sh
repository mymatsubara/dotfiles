#!/bin/bash
if [ -n "$BASH_SOURCE" ]; then
  SCRIPT_PATH="${BASH_SOURCE[0]}"
elif [ -n "$ZSH_VERSION" ]; then
  SCRIPT_PATH="${(%):-%N}"
else
  SCRIPT_PATH="$0"
fi
DOTFILES_DIR="$(realpath "$(dirname "${SCRIPT_PATH}")")"

LOAD_BASHRC_DM="source $DOTFILES_DIR/.bashrc"

touch ~/.bashrc
touch ~/.zshrc

# Add source line to ~/.bashrc if it doesn't already exist
if ! grep -Fxq "$LOAD_BASHRC_DM" ~/.bashrc; then
    echo "$LOAD_BASHRC_DM" >> ~/.bashrc
    source $DOTFILES_DIR/.bashrc
fi

# Add source line to ~/.zshrc if it doesn't already exist
if ! grep -Fxq "$LOAD_BASHRC_DM" ~/.zshrc; then
    echo "$LOAD_BASHRC_DM" >> ~/.zshrc
    source $DOTFILES_DIR/.bashrc
fi
