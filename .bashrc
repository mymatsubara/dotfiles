#!/bin/bash

# Setup envs
export DOTFILES_DIR=$(dirname $(readlink -f "$0"))

# Remove aliases
ualias gcp 2&>/dev/null

# Set up PATH
export PATH="$PATH:$DOTFILES_DIR/scripts"
