#!/bin/bash
# Script 2: FOSS Package Inspector[cite: 2]

# Define the target package to inspect[cite: 2]
PACKAGE="mysql"[cite: 2]

# Check if package is installed (Debian-based)
# Uses dpkg to search for the 'ii' (installed) status for the package[cite: 2]
if dpkg -l | grep -q "^ii  $PACKAGE"; then[cite: 2]
    echo "$PACKAGE is installed."[cite: 2]
    # Display version, license, and description details from the package manager[cite: 2]
    dpkg -s $PACKAGE | grep -E 'Version|License|Description'[cite: 2]
else
    echo "$PACKAGE is NOT installed."[cite: 2]
fi

# Case statement for description
# Provides a custom description based on the value of the PACKAGE variable[cite: 2]
case $PACKAGE in[cite: 2]
    mysql)
        echo "MySQL: open source database powering millions of applications."[cite: 2]
        ;;
    apache2)
        echo "Apache: web server that powers the open internet."[cite: 2]
        ;;
    vlc)
        echo "VLC: open-source media player for all formats."[cite: 2]
        ;;
    firefox)
        echo "Firefox: browser promoting an open web."[cite: 2]
        ;;
    *)
        echo "Unknown package."[cite: 2]
        ;;
esac
