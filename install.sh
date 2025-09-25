#!/bin/bash
DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
LOAD_BASHRC_DM="source $DOTFILES_DIR/.bashrc"

touch ~/.bashrc

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
