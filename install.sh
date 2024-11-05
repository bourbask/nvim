#!/bin/bash

# Set source directory (the current project's nvim folder)
SOURCE_DIR="$(pwd)"

# Determine destination based on the OS
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    DEST_DIR="$HOME/.config/nvim"
elif [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "win32" ]]; then
    DEST_DIR="/c/Users/KREDG/AppData/Local/nvim"
else
    echo "Unsupported OS: $OSTYPE"
    exit 1
fi

# Create the destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Copy the content of nvim folder to the destination
echo "Copying nvim configuration to $DEST_DIR..."
cp -r "$SOURCE_DIR/"* "$DEST_DIR"

# Confirm completion
echo "nvim configuration successfully copied to $DEST_DIR"
