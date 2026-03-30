#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

# Check MySQL config directory
MYSQL_DIR="/etc/mysql"

echo "----------------------"
if [ -d "$MYSQL_DIR" ]; then
    PERMS=$(ls -ld $MYSQL_DIR | awk '{print $1, $3, $4}')
    echo "MySQL Config Directory: $MYSQL_DIR => Permissions: $PERMS"
else
    echo "MySQL config directory not found."
fi
