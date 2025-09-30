#!/bin/bash

# Setup envs
export DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# Remove aliases
unalias gcp 2&>/dev/null

# Set up PATH
export PATH="$DOTFILES_DIR/scripts:$PATH"
