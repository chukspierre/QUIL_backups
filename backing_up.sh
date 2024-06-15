#!/bin/bash

# Create a new folder in the $HOME directory with the current date as the name
BACKUP_DIR="$HOME/$(date +%Y-%m-%d)"
mkdir -p "$BACKUP_DIR"

# Files and directories to back up
CONFIG_DIR="$HOME/ceremonyclient/node/.config"

# Copy files and directories to the backup directory
cp -r "$CONFIG_DIR" "$BACKUP_DIR"
