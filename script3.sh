#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Sayna Patel | Course: Open Source Software
# Purpose: Loops through system directories and reports
#          their size, owner and permissions

# --- List of important directories to audit ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=================================="
echo "   Directory Audit Report"
echo "=================================="

# --- Loop through each directory ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions, owner and group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        # Get size of directory
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "📁 $DIR"
        echo "   Permissions : $PERMS"
        echo "   Size        : $SIZE"
        echo "----------------------------------"
    else
        echo "❌ $DIR does not exist on this system"
        echo "----------------------------------"
    fi
done

# --- Check Linux Kernel config directory ---
echo ""
echo "--- Linux Kernel Config Check ---"
KERNEL_CONFIG="/boot"
if [ -d "$KERNEL_CONFIG" ]; then
    PERMS=$(ls -ld $KERNEL_CONFIG | awk '{print $1, $3, $4}')
    echo "✔ Kernel boot directory found!"
    echo "  Location    : $KERNEL_CONFIG"
    echo "  Permissions : $PERMS"
else
    echo "❌ Kernel config directory not found."
fi
echo "=================================="
