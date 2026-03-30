#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="mysql"

# Check if package is installed (Debian-based)
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|License|Description'
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement for description
case $PACKAGE in
    mysql)
        echo "MySQL: open source database powering millions of applications."
        ;;
    apache2)
        echo "Apache: web server that powers the open internet."
        ;;
    vlc)
        echo "VLC: open-source media player for all formats."
        ;;
    firefox)
        echo "Firefox: browser promoting an open web."
        ;;
    *)
        echo "Unknown package."
        ;;
esac
