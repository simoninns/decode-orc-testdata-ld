#!/bin/bash

# Script to clean all generated test files from ld-decode directories

echo "========================================"
echo "Cleaning ld-decode test files"
echo "========================================"
echo ""

# Directories to clean
DIRS=(
    "../../ld-decode/ntsc/cav"
    "../../ld-decode/ntsc/clv"
    "../../ld-decode/pal/cav"
    "../../ld-decode/pal/clv"
)

total_removed=0

for dir in "${DIRS[@]}"; do
    if [ -d "$dir" ]; then
        echo "Cleaning $dir..."
        
        # Count files before removal
        file_count=$(find "$dir" -type f \( -name "*.tbc" -o -name "*.tbc.json" -o -name "*.efm" -o -name "*.log" -o -name "*.pcm" -o -name "*.tbc.db" \) 2>/dev/null | wc -l)
        
        if [ $file_count -gt 0 ]; then
            # Remove all ld-decode output files
            find "$dir" -type f -name "*.tbc" -delete
            find "$dir" -type f -name "*.tbc.json" -delete
            find "$dir" -type f -name "*.efm" -delete
            find "$dir" -type f -name "*.log" -delete
            find "$dir" -type f -name "*.pcm" -delete
            find "$dir" -type f -name "*.tbc.db" -delete
            
            total_removed=$((total_removed + file_count))
            echo "  Removed $file_count files (.tbc, .tbc.json, .efm, .log, .pcm, .tbc.db)"
        else
            echo "  No files to remove"
        fi
    else
        echo "Warning: $dir does not exist"
    fi
done

echo ""
echo "======================================="
echo "Total files removed: $total_removed"
echo "======================================="
