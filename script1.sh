#!/bin/bash
# Script 1: System Identity Report
# Author: Sayna Patel | Course: Open Source Software
# Purpose: Displays system information and OS license

# --- Variables ---
STUDENT_NAME="Sayna Patel"
SOFTWARE_CHOICE="Linux Kernel"

# --- Gather system info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')
DATE_TIME=$(date '+%d %B %Y, %H:%M:%S')

# --- Display report ---
echo "=================================="
echo "  Open Source Audit — $STUDENT_NAME"
echo "=================================="
echo "Software Choice : $SOFTWARE_CHOICE"
echo "Distro          : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "Logged in as    : $USER_NAME"
echo "Home Directory  : $HOME"
echo "System Uptime   : $UPTIME"
echo "Date & Time     : $DATE_TIME"
echo "----------------------------------"
echo "License: The Linux Kernel is licensed under GPL v2"
echo "=================================="

