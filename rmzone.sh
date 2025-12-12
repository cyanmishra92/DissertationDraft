#!/bin/bash
# ---------------------------------------------------------------
# remove_zone_identifier.sh
# Recursively find and remove all Zone.Identifier files in a folder
# Usage: ./remove_zone_identifier.sh [directory]
# ---------------------------------------------------------------

# Exit on error
set -euo pipefail

# Check for argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 [directory]"
    exit 1
fi

TARGET_DIR="$1"

# Ensure directory exists
if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: '$TARGET_DIR' is not a directory."
    exit 1
fi

echo "Searching for Zone.Identifier files under: $TARGET_DIR"
echo "----------------------------------------------------------"

# Find and delete Zone.Identifier files
find "$TARGET_DIR" -type f -name "*.Zone.Identifier" -print -delete

echo "----------------------------------------------------------"
echo "All Zone.Identifier files removed successfully."

