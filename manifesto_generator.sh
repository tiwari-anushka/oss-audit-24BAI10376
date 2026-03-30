#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer the following questions:"
echo ""

read -p "1. Name one open-source tool you use: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Create manifesto
echo "On $DATE, I believe that open-source software like $TOOL represents $FREEDOM." > $OUTPUT
echo "I aim to contribute by building $BUILD and sharing it freely with the community." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo "----------------------------------"
cat $OUTPUT
