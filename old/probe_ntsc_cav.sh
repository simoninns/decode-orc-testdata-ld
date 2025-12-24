#!/bin/bash

# Activate venv
export VDIR=~/Coding/github/ld-decode-venv
source "$VDIR/bin/activate"

# Output file
OUTPUT="ntsc-cav-frame-ranges.txt"
> "$OUTPUT"  # Clear the file

echo "========================================"
echo "NTSC CAV Frame Range Probe Script"
echo "========================================"
echo ""

# Read each file path
while IFS= read -r filepath; do
    # Remove the backslash escapes for actual file access
    filepath_clean=$(echo "$filepath" | sed 's/\\ / /g')
    
    echo "========================================="
    echo "FILE: $filepath_clean"
    echo "========================================="
    
    # Start at a safe offset (avoiding lead-in issues)
    safe_start=1000
    echo ">>> Probing file position $safe_start for first valid VBI frame..."
    echo ">>> Running: ld-decode --NTSC --start $safe_start --length 1"
    ld-decode --NTSC --start $safe_start --length 1 "$filepath_clean" /tmp/ntsc_cav_decode_$$ 2>&1 > /tmp/ld_output_$$_1.txt
    first_output=$(cat /tmp/ld_output_$$_1.txt)
    first_frame_line=$(echo "$first_output" | grep "Frame 1/1")
    
    echo "    $first_frame_line"
    
    if [[ -z "$first_frame_line" ]]; then
        echo "!!! ERROR: Could not decode at position $safe_start"
        echo "$filepath_clean: ERROR - Could not decode" >> "$OUTPUT"
        echo ""
        continue
    fi
    
    # Extract first VBI frame number (CAV only)
    first_vbi=$(echo "$first_frame_line" | sed -n 's/.*CAV Frame #\([0-9]*\).*/\1/p')
    
    echo "    FIRST VBI: $first_vbi"
    echo ""
    
    # Find last frame by probing in increments of 10000, backing up 5000 on overshoot
    last_vbi=""
    last_valid_pos=0
    probe_pos=$safe_start
    step=10000
    backup_count=0
    
    echo ">>> Searching for end (probing every $step file frames, backup 5000 twice on overshoot)..."
    while true; do
        echo -n "    File pos $probe_pos... "
        ld-decode --NTSC --start $probe_pos --length 1 "$filepath_clean" /tmp/ntsc_cav_decode_$$ 2>&1 > /tmp/ld_output_$$_2.txt
        probe_output=$(cat /tmp/ld_output_$$_2.txt)
        probe_frame_line=$(echo "$probe_output" | grep "Frame 1/1")
        
        if [[ -z "$probe_frame_line" ]]; then
            # Overshot - back up 5000 frames (up to twice)
            if [[ $backup_count -lt 2 ]]; then
                backup_count=$((backup_count + 1))
                echo "OVERSHOT, backing up 5000 (backup $backup_count/2)"
                probe_pos=$((probe_pos - 5000))
                continue
            else
                echo "FAILED (past end after 2 backups)"
                break
            fi
        fi
        
        # Extract VBI info from this position
        vbi=$(echo "$probe_frame_line" | sed -n 's/.*CAV Frame #\([0-9]*\).*/\1/p')
        
        if [[ -n "$vbi" ]]; then
            last_vbi="$vbi"
            last_valid_pos=$probe_pos
            echo "VBI: $vbi"
            # If we found valid frame after backing up twice, we're at the end
            if [[ $backup_count -eq 2 ]]; then
                echo "Found end after 2 backups"
                break
            fi
            backup_count=0  # Reset backup counter on success
        else
            echo "No VBI"
        fi
        
        probe_pos=$((probe_pos + step))
    done
    
    echo ""
    echo ">>> RESULT: VBI Range = $first_vbi to $last_vbi (approx, file pos $safe_start to ~$last_valid_pos)"
    echo "$filepath_clean: VBI $first_vbi - $last_vbi | File pos $safe_start - $last_valid_pos" >> "$OUTPUT"
    echo ""
    
done < ntsc-cav.txt

echo "========================================"
echo "Results saved to $OUTPUT"
echo "========================================"
