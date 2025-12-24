#!/bin/bash

# Activate venv
export VDIR=~/Coding/github/ld-decode-venv
source "$VDIR/bin/activate"

# Output file
OUTPUT="ntsc-clv-frame-ranges.txt"
> "$OUTPUT"  # Clear the file

echo "========================================"
echo "NTSC CLV Frame Range Probe Script"
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
    ld-decode --NTSC --start $safe_start --length 1 "$filepath_clean" /tmp/ntsc_clv_decode_$$ 2>&1 > /tmp/ld_output_$$_1.txt
    first_output=$(cat /tmp/ld_output_$$_1.txt)
    first_frame_line=$(echo "$first_output" | grep "Frame 1/1")
    
    echo "    $first_frame_line"
    
    if [[ -z "$first_frame_line" ]]; then
        echo "!!! ERROR: Could not decode at position $safe_start"
        echo "$filepath_clean: ERROR - Could not decode" >> "$OUTPUT"
        echo ""
        continue
    fi
    
    # Extract first VBI timecode (CLV only)
    first_vbi=$(echo "$first_frame_line" | sed -n 's/.*CLV Timecode \([0-9:.]*\) Frame.*/\1/p')
    
    echo "    FIRST VBI: $first_vbi"
    echo ""
    
    # Find last frame by probing in increments of 10000
    last_vbi=""
    last_valid_pos=0
    probe_pos=$safe_start
    step=10000
    
    echo ">>> Searching for end (probing every $step file frames)..."
    while true; do
        echo -n "    File pos $probe_pos... "
        ld-decode --NTSC --start $probe_pos --length 1 "$filepath_clean" /tmp/ntsc_clv_decode_$$ 2>&1 > /tmp/ld_output_$$_2.txt
        probe_output=$(cat /tmp/ld_output_$$_2.txt)
        probe_frame_line=$(echo "$probe_output" | grep "Frame 1/1")
        
        if [[ -z "$probe_frame_line" ]]; then
            echo "FAILED (past end)"
            # Back up 5000 and try
            probe_pos=$((probe_pos - 5000))
            echo -n "    Backing up to $probe_pos... "
            ld-decode --NTSC --start $probe_pos --length 1 "$filepath_clean" /tmp/ntsc_clv_decode_$$ 2>&1 > /tmp/ld_output_$$_2.txt
            probe_output=$(cat /tmp/ld_output_$$_2.txt)
            probe_frame_line=$(echo "$probe_output" | grep "Frame 1/1")
            if [[ -z "$probe_frame_line" ]]; then
                # Still failed, back up another 5000
                echo "FAILED"
                probe_pos=$((probe_pos - 5000))
                echo -n "    Backing up to $probe_pos... "
                ld-decode --NTSC --start $probe_pos --length 1 "$filepath_clean" /tmp/ntsc_clv_decode_$$ 2>&1 > /tmp/ld_output_$$_2.txt
                probe_output=$(cat /tmp/ld_output_$$_2.txt)
                probe_frame_line=$(echo "$probe_output" | grep "Frame 1/1")
            fi
            # Process this backup attempt
            if [[ -n "$probe_frame_line" ]]; then
                vbi=$(echo "$probe_frame_line" | sed -n 's/.*CLV Timecode \([0-9:.]*\) Frame.*/\1/p')
                if [[ -n "$vbi" ]]; then
                    last_vbi="$vbi"
                    last_valid_pos=$probe_pos
                    echo "VBI: $vbi"
                fi
            fi
            break
        fi
        
        # Extract VBI info from this position
        vbi=$(echo "$probe_frame_line" | sed -n 's/.*CLV Timecode \([0-9:.]*\) Frame.*/\1/p')
        
        if [[ -n "$vbi" ]]; then
            last_vbi="$vbi"
            last_valid_pos=$probe_pos
            echo "VBI: $vbi"
        else
            echo "No VBI"
        fi
        
        probe_pos=$((probe_pos + step))
    done
    
    echo ""
    echo ">>> RESULT: VBI Range = $first_vbi to $last_vbi (approx, file pos $safe_start to ~$last_valid_pos)"
    echo "$filepath_clean: VBI $first_vbi - $last_vbi | File pos $safe_start - $last_valid_pos" >> "$OUTPUT"
    echo ""
    
done < ntsc-clv.txt

echo "========================================"
echo "Results saved to $OUTPUT"
echo "========================================"
