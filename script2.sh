#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Sayna Patel | Course: Open Source Software
# Purpose: Checks if a package is installed and describes it

# --- Package to check ---
PACKAGE="linux-image-$(uname -r)"

# --- Check if package is installed ---
if dpkg -l $PACKAGE &>/dev/null; then
    echo "✔ $PACKAGE is installed."
    echo ""
    echo "--- Package Details ---"
    dpkg -l $PACKAGE | grep -E 'linux'
else
    echo "✘ $PACKAGE is NOT installed."
fi

echo ""
echo "--- Kernel Version Info ---"
uname -a

echo ""
echo "--- Open Source Philosophy ---"
# Case statement describing famous open source packages
case "linux" in
    linux)
        echo "Linux Kernel: The foundation everything else runs on."
        echo "License: GPL v2 — anyone can use, modify and share freely."
        ;;
    httpd)
        echo "Apache: The web server that built the open internet."
        ;;
    mysql)
        echo "MySQL: Open source at the heart of millions of apps."
        ;;
    firefox)
        echo "Firefox: A nonprofit fighting for an open web."
        ;;
    vlc)
        echo "VLC: Plays anything — built by students in Paris."
        ;;
esac
