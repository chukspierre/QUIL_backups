#!/bin/bash

# Create a new folder in the $HOME directory with the current date as the name
BACKUP_DIR="$HOME/$(date +%Y-%m-%d)"
mkdir -p "$BACKUP_DIR"

# Files and directories to back up
CONFIG_FILE="$HOME/ceremonyclient/node/.config/config.yml"
KEYS_FILE="$HOME/ceremonyclient/node/.config/keys.yml"
STORE_DIR="$HOME/ceremonyclient/node/.config/store"

# Copy files and directories to the backup directory
cp "$CONFIG_FILE" "$BACKUP_DIR"
cp "$KEYS_FILE" "$BACKUP_DIR"
cp -r "$STORE_DIR" "$BACKUP_DIR"

# Delete folders older than 21 days
find "$HOME" -maxdepth 1 -type d -name "????-??-??" -mtime +10 -exec rm -rf {} \;
