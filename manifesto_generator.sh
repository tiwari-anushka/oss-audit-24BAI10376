#!/bin/bash
# Script 5: Open Source Manifesto Generator[cite: 3]

# Prompt the user for input[cite: 3]
echo "Answer the following questions:"[cite: 3]
echo ""[cite: 3]

# Store user responses in variables[cite: 3]
read -p "1. Name one open-source tool you use: " TOOL[cite: 3]
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM[cite: 3]
read -p "3. Name one thing you would build and share freely: " BUILD[cite: 3]

# Set the date format and dynamic filename based on the current user[cite: 3]
DATE=$(date '+%d %B %Y')[cite: 3]
OUTPUT="manifesto_$(whoami).txt"[cite: 3]

# Create or overwrite the manifesto file with the first line[cite: 3]
echo "On $DATE, I believe that open-source software like $TOOL represents $FREEDOM." > $OUTPUT[cite: 3]
# Append the second line to the same file[cite: 3]
echo "I aim to contribute by building $BUILD and sharing it freely with the community." >> $OUTPUT[cite: 3]

# Confirm completion and display the contents of the new file[cite: 3]
echo ""[cite: 3]
echo "Manifesto saved to $OUTPUT"[cite: 3]
echo "----------------------------------"[cite: 3]
cat $OUTPUT[cite: 3]
