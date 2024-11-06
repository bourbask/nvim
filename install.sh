#!/bin/bash

# Set source directory (the current project's nvim folder)
SOURCE_DIR="$(pwd)"

# Determine destination based on the OS
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    DEST_DIR="$HOME/.config/nvim"
    SYNC_CMD="rsync -av --delete \"$SOURCE_DIR/\" \"$DEST_DIR/\""
elif [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "win32" ]]; then
    DEST_DIR="/c/Users/KREDG/AppData/Local/nvim"
    SYNC_CMD="robocopy \"$SOURCE_DIR\" \"$DEST_DIR\" /MIR /NFL /NDL /NJH /NJS /nc /ns /np"
else
    echo "Unsupported OS: $OSTYPE"
    exit 1
fi

# Create the destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Run the sync command
echo "Synchronizing nvim configuration to $DEST_DIR..."
eval "$SYNC_CMD"

# Confirm completion
echo "nvim configuration successfully synchronized to $DEST_DIR"
