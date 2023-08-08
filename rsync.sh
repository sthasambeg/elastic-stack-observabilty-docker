#!/bin/bash

# Source and destination directories
SOURCE_DIR="/path/to/source/directory"
DESTINATION_DIR="/path/to/destination/directory"

# Rsync options:
# -a: archive mode (recursive copy with permissions, timestamps, etc.)
# -v: verbose mode (to see the progress)
# --delete: delete extraneous files in the destination directory
# --progress: show progress during the transfer
RSYNC_OPTIONS="-av --delete --progress"

# Perform the rsync operation
rsync $RSYNC_OPTIONS "$SOURCE_DIR/" "$DESTINATION_DIR/"

echo "Sync completed."
