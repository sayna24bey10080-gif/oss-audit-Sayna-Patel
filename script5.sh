#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Sayna Patel | Course: Open Source Software
# Purpose: Asks user 3 questions and generates a
#          personalised open source philosophy statement

echo "=================================="
echo "  Open Source Manifesto Generator"
echo "=================================="
echo ""
echo "Answer three questions to generate your manifesto."
echo ""

# --- Ask user 3 questions ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Get current date and username ---
DATE=$(date '+%d %B %Y')
USER=$(whoami)
OUTPUT="manifesto_${USER}.txt"

echo ""
echo "--- Generating your manifesto... ---"
echo ""

# --- Compose manifesto and save to file ---
echo "=================================="  > $OUTPUT
echo "  My Open Source Manifesto"        >> $OUTPUT
echo "  By: Sayna Patel"                 >> $OUTPUT
echo "  Date: $DATE"                     >> $OUTPUT
echo "=================================="  >> $OUTPUT
echo ""                                   >> $OUTPUT
echo "Every day, I rely
