#!/bin/bash
# Directory to backup
SOURCE="/home/$USER/Documents"

# Where backup will be stored
BACKUP_DIR="/home/$USER/system_backups"
mkdir -p "$BACKUP_DIR"

# Backup file name with date
BACKUP_FILE="$BACKUP_DIR/backup-$(date +%Y-%m-%d-%H-%M-%S).tar.gz"

echo "Starting backup of $SOURCE..."
tar -czf "$BACKUP_FILE" "$SOURCE"

if [ $? -eq 0 ]; then
    echo "Backup Successful! Saved at $BACKUP_FILE"
else
    echo "Backup Failed!"
fi

if [ ! -d "$SOURCE" ]; then
  echo "Source directory $SOURCE does not exist!"
  exit 1
fi

