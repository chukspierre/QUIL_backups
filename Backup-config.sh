#!/bin/bash

# Create a new folder in the $HOME directory with the current date as the name
BACKUP_DIR="$HOME/$(date +%Y-%m-%d)"
mkdir -p "$BACKUP_DIR"

# Directory to back up
CONFIG_DIR="$HOME/ceremonyclient/node/.config"

# Copy directory to the backup directory
cp -r "$CONFIG_DIR" "$BACKUP_DIR"

# Delete folders older than 10 days
find "$HOME" -maxdepth 1 -type d -name "????-??-??" -mtime +10 -exec rm -rf {} \;
