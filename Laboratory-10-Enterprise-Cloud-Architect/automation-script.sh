#!/bin/bash

# Configuration
BACKUP_DIR="/home/admin1/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/wordpress_backup_$TIMESTAMP.sql"
CONTAINER_NAME="cloudnova-db"

# Create backup directory if it does not exist
mkdir -p "$BACKUP_DIR"

# Perform MySQL Database Dump
docker exec "$CONTAINER_NAME" mysqldump -u wordpress_user -pwordpress_password wordpress > "$BACKUP_FILE"

# Logging output
if [ $? -eq 0 ]; then
    echo "[$TIMESTAMP] Backup successfully created: $BACKUP_FILE" >> "$BACKUP_DIR/backup.log"
else
    echo "[$TIMESTAMP] Backup FAILED!" >> "$BACKUP_DIR/backup.log"
fi
