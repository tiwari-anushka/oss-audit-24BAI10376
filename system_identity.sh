#!/bin/bash
# Script 1: System Identity Report[cite: 1]
# Author: Anushka | OSS Project[cite: 1]

# --- Variables ---
# Define the student name and the specific software being audited[cite: 1]
STUDENT_NAME="Anushka"[cite: 1]
SOFTWARE_CHOICE="MySQL"[cite: 1]

# --- System Info ---
# Gather system data using standard Linux commands[cite: 1]
KERNEL=$(uname -r) # Retrieves the current kernel version[cite: 1]
USER_NAME=$(whoami) # Identifies the currently logged-in user[cite: 1]
UPTIME=$(uptime -p) # Shows how long the system has been running in a pretty format[cite: 1]
DATE=$(date) # Captures the current system date and time[cite: 1]
# Extract the distribution name from the os-release file[cite: 1]
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')[cite: 1]

# --- Display ---
# Output the gathered information into a structured text report[cite: 1]
echo "======================================"[cite: 1]
echo " Open Source Audit — $STUDENT_NAME"[cite: 1]
echo "======================================"[cite: 1]
echo "Software : $SOFTWARE_CHOICE"[cite: 1]
echo "Kernel   : $KERNEL"[cite: 1]
echo "User     : $USER_NAME"[cite: 1]
echo "Uptime   : $UPTIME"[cite: 1]
echo "Date     : $DATE"[cite: 1]
echo "Distro   : $DISTRO"[cite: 1]
echo "License  : GPL (GNU General Public License)"[cite: 1]
echo "======================================"[cite: 1]
