#!/bin/bash

REMOTE_NVIM_DIR="$HOME/.remote-nvim"

if [ ! -d "$REMOTE_NVIM_DIR/nvim-downloads" ]; then
  echo "Error: 'nvim-downloads' directory not found in $REMOTE_NVIM_DIR"
  exit 1
fi

FIRST_NVDIR=$(find "$REMOTE_NVIM_DIR/nvim-downloads" -mindepth 1 -maxdepth 1 -type d | head -n 1)

if [ -z "$FIRST_NVDIR" ]; then
  echo "Error: No directories found in 'nvim-downloads'."
  exit 1
fi

if [ -d "$FIRST_NVDIR/bin" ]; then
  cp -r "$FIRST_NVDIR/bin" "$HOME/.local/bin"
  echo "Copied 'bin' from $FIRST_NVDIR to $HOME/.local/bin"
else
  echo "Warning: 'bin' directory not found in $FIRST_NVDIR."
fi

if [ ! -d "$REMOTE_NVIM_DIR/workspaces" ]; then
  echo "Error: 'workspaces' directory not found in $REMOTE_NVIM_DIR"
  exit 1
fi


FIRST_WORKSPACE=$(find "$REMOTE_NVIM_DIR/workspaces" -mindepth 1 -maxdepth 1 -type d | head -n 1)

if [ -z "$FIRST_WORKSPACE" ]; then
  echo "Error: No directories found in 'workspaces'."
  exit 1
fi

shopt -s dotglob 
cp -r "$FIRST_WORKSPACE/"* "$HOME"
shopt -u dotglob
echo "Copied workspace folder '$FIRST_WORKSPACE' to $HOME"

echo "Setup completed successfully."
