#!/bin/bash
# Script 3: Disk and Permission Auditor[cite: 5]

# Define an array of system directories to audit[cite: 5]
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")[cite: 5]

echo "Directory Audit Report"[cite: 5]
echo "----------------------"[cite: 5]

# Iterate through each directory in the array[cite: 5]
for DIR in "${DIRS[@]}"; do[cite: 5]
    # Check if the directory actually exists on the filesystem[cite: 5]
    if [ -d "$DIR" ]; then[cite: 5]
        # Extract permissions, owner, and group[cite: 5]
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')[cite: 5]
        # Calculate human-readable directory size, suppressing error messages[cite: 5]
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)[cite: 5]
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"[cite: 5]
    else
        echo "$DIR does not exist on this system"[cite: 5]
    fi
done

# Check MySQL config directory specifically[cite: 5]
MYSQL_DIR="/etc/mysql"[cite: 5]

echo "----------------------"[cite: 5]
if [ -d "$MYSQL_DIR" ]; then[cite: 5]
    # Audit the specific permissions for the MySQL configuration path[cite: 5]
    PERMS=$(ls -ld $MYSQL_DIR | awk '{print $1, $3, $4}')[cite: 5]
    echo "MySQL Config Directory: $MYSQL_DIR => Permissions: $PERMS"[cite: 5]
else
    echo "MySQL config directory not found."[cite: 5]
fi
