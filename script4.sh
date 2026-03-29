#!/bin/bash
# Script 4: Log File Analyzer
# Author: Sayna Patel | Course: Open Source Software
# Purpose: Reads a log file and counts keyword occurrences

# --- Take log file and keyword as arguments ---
LOGFILE=${1:-"/var/log/dpkg.log"}
KEYWORD=${2:-"install"}
COUNT=0

echo "=================================="
echo "   Log File Analyzer"
echo "=================================="
echo "Log File : $LOGFILE"
echo "Keyword  : $KEYWORD"
echo "----------------------------------"

# --- Check if log file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "❌ Error: File $LOGFILE not found."
    exit 1
fi

# --- Read file line by line and count keyword ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo ""
echo "✔ Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo ""

# --- Print last 5 matching lines ---
echo "--- Last 5 matching lines ---"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo "=================================="
