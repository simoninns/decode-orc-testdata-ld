#!/bin/bash

# Script to generate ld-decode test files from all analyzed discs
# Creates a good mixture of decodes from different positions (start/middle/end)
# with appropriate frame counts based on TBC size limits

# Activate venv
export VDIR=~/Coding/github/ld-decode-venv
source "$VDIR/bin/activate"

# Output directories
NTSC_CAV_DIR="../../ld-decode/ntsc/cav"
NTSC_CLV_DIR="../../ld-decode/ntsc/clv"
PAL_CAV_DIR="../../ld-decode/pal/cav"
PAL_CLV_DIR="../../ld-decode/pal/clv"

# Create output directories if they don't exist
mkdir -p "$NTSC_CAV_DIR" "$NTSC_CLV_DIR" "$PAL_CAV_DIR" "$PAL_CLV_DIR"

echo "#!/bin/bash"
echo ""
echo "# Activate venv"
echo "export VDIR=~/Coding/github/ld-decode-venv"
echo "source \$VDIR/bin/activate"
echo ""
echo "echo \"========================================\""
echo "echo \"Generating ld-decode test files\""
echo "echo \"========================================\""
echo "echo \"\""
echo ""

# Function to get random number in range
random_range() {
    local min=$1
    local max=$2
    echo $(( RANDOM % (max - min + 1) + min ))
}

# Function to get random position (start/middle/end of disc)
get_random_position() {
    local start=$1
    local end=$2
    local max_length=$3
    
    local range=$((end - start - max_length))
    if [ $range -le 0 ]; then
        echo $start
        return
    fi
    
    # Choose start, middle, or end
    local choice=$((RANDOM % 3))
    case $choice in
        0) # Start
            echo $(( start + RANDOM % (range / 3 + 1) ))
            ;;
        1) # Middle
            echo $(( start + range/3 + RANDOM % (range / 3 + 1) ))
            ;;
        2) # End
            echo $(( start + 2*range/3 + RANDOM % (range / 3 + 1) ))
            ;;
    esac
}

# Function to create safe output filename from filepath
get_output_name() {
    local filepath="$1"
    local position="$2"
    # Get just the filename without path and extension
    local basename=$(basename "$filepath" .ldf)
    # Replace spaces and special chars with underscores
    basename=$(echo "$basename" | tr ' /' '__')
    echo "${basename}_pos${position}"
}

decode_count=0

echo "echo \"=== NTSC CAV Decodes (1-2 per disc) ===\""
while IFS=':' read -r filepath rest; do
    # Extract file position range
    if [[ $rest =~ File\ pos\ ([0-9]+)\ -\ ([0-9]+) ]]; then
        start_pos=${BASH_REMATCH[1]}
        end_pos=${BASH_REMATCH[2]}
        
        # Determine number of decodes (1 or 2)
        num_decodes=$((RANDOM % 2 + 1))
        
        for ((i=0; i<num_decodes; i++)); do
            # Random frame count: 48-58 frames for NTSC
            frame_count=$(random_range 48 58)
            
            # Get random position
            start_frame=$(get_random_position $start_pos $end_pos $frame_count)
            
            # Create output filename
            output_name=$(get_output_name "$filepath" "$start_frame")
            output_file="$NTSC_CAV_DIR/${output_name}"
            
            echo "echo \"[$((++decode_count))] Decoding NTSC CAV: $output_name...\""
            echo "ld-decode --NTSC --start $start_frame --length $frame_count \"$filepath\" \"$output_file\""
            echo ""
        done
    fi
done < ntsc-cav-master.txt

echo "echo \"=== NTSC CLV Decodes (5-6 per disc, MORE since fewer files) ===\""
while IFS=':' read -r filepath rest; do
    # Extract file position range
    if [[ $rest =~ File\ pos\ ([0-9]+)\ -\ ([0-9]+) ]]; then
        start_pos=${BASH_REMATCH[1]}
        end_pos=${BASH_REMATCH[2]}
        
        # More decodes for CLV: 5-6 per disc
        num_decodes=$(random_range 5 6)
        
        for ((i=0; i<num_decodes; i++)); do
            # Random frame count: 48-58 frames for NTSC
            frame_count=$(random_range 48 58)
            
            # Get random position
            start_frame=$(get_random_position $start_pos $end_pos $frame_count)
            
            # Create output filename
            output_name=$(get_output_name "$filepath" "$start_frame")
            output_file="$NTSC_CLV_DIR/${output_name}"
            
            echo "echo \"[$((++decode_count))] Decoding NTSC CLV: $output_name...\""
            echo "ld-decode --NTSC --start $start_frame --length $frame_count \"$filepath\" \"$output_file\""
            echo ""
        done
    fi
done < ntsc-clv-master.txt

echo "echo \"=== PAL CAV Decodes (1-2 per disc) ===\""
while IFS=':' read -r filepath rest; do
    # Extract file position range
    if [[ $rest =~ File\ pos\ ([0-9]+)\ -\ ([0-9]+) ]]; then
        start_pos=${BASH_REMATCH[1]}
        end_pos=${BASH_REMATCH[2]}
        
        # Determine number of decodes (1 or 2)
        num_decodes=$((RANDOM % 2 + 1))
        
        for ((i=0; i<num_decodes; i++)); do
            # Random frame count: 30-40 frames for PAL
            frame_count=$(random_range 30 40)
            
            # Get random position
            start_frame=$(get_random_position $start_pos $end_pos $frame_count)
            
            # Create output filename
            output_name=$(get_output_name "$filepath" "$start_frame")
            output_file="$PAL_CAV_DIR/${output_name}"
            
            echo "echo \"[$((++decode_count))] Decoding PAL CAV: $output_name...\""
            echo "ld-decode --PAL --start $start_frame --length $frame_count \"$filepath\" \"$output_file\""
            echo ""
        done
    fi
done < pal-cav-master.txt

echo "echo \"=== PAL CLV Decodes (4-5 per disc, MORE since fewer files) ===\""
while IFS=':' read -r filepath rest; do
    # Extract file position range
    if [[ $rest =~ File\ pos\ ([0-9]+)\ -\ ([0-9]+) ]]; then
        start_pos=${BASH_REMATCH[1]}
        end_pos=${BASH_REMATCH[2]}
        
        # More decodes for CLV: 4-5 per disc
        num_decodes=$(random_range 4 5)
        
        for ((i=0; i<num_decodes; i++)); do
            # Random frame count: 30-40 frames for PAL
            frame_count=$(random_range 30 40)
            
            # Get random position
            start_frame=$(get_random_position $start_pos $end_pos $frame_count)
            
            # Create output filename
            output_name=$(get_output_name "$filepath" "$start_frame")
            output_file="$PAL_CLV_DIR/${output_name}"
            
            echo "echo \"[$((++decode_count))] Decoding PAL CLV: $output_name...\""
            echo "ld-decode --PAL --start $start_frame --length $frame_count \"$filepath\" \"$output_file\""
            echo ""
        done
    fi
done < pal-clv-master.txt

echo "echo \"\""
echo "echo \"=======================================\""
echo "echo \"Generated $decode_count decode commands\""
echo "echo \"=======================================\""
