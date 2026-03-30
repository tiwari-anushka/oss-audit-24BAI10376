#!/bin/bash
# Script 4: Log File Analyzer[cite: 4]

# Assign positional parameters to variables[cite: 4]
LOGFILE=$1 # First argument: path to the log file[cite: 4]
KEYWORD=${2:-"error"} # Second argument: search term (defaults to "error")[cite: 4]
COUNT=0[cite: 4]

# Validation: Check if the file exists[cite: 4]
if [ ! -f "$LOGFILE" ]; then[cite: 4]
    echo "Error: File $LOGFILE not found."[cite: 4]
    exit 1[cite: 4]
fi

# Validation: Check if the file size is greater than zero[cite: 4]
if [ ! -s "$LOGFILE" ]; then[cite: 4]
    echo "File is empty. Please provide a valid log file."[cite: 4]
    exit 1[cite: 4]
fi

# Read the file line by line and increment the counter if the keyword is found[cite: 4]
while IFS= read -r LINE; do[cite: 4]
    if echo "$LINE" | grep -iq "$KEYWORD"; then[cite: 4]
        COUNT=$((COUNT + 1))[cite: 4]
    fi
done < "$LOGFILE"[cite: 4]

# Output results[cite: 4]
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"[cite: 4]

# Display the final 5 instances of the keyword found in the file[cite: 4]
echo "Last 5 matching lines:"[cite: 4]
grep -i "$KEYWORD" "$LOGFILE" | tail -5[cite: 4]
