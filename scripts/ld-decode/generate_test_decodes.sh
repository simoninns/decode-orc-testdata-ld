#!/bin/bash

# Script to generate ld-decode test .ldf files from selected discs
# Limited to 20 diverse discs across all formats for GitHub repo size constraints
# Uses --write-test-ldf to extract just the needed .ldf sections without full decode output

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

# Output file - always in the same directory as this script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUTPUT_FILE="$SCRIPT_DIR/decode_commands.sh"

# Start writing to output file
cat > "$OUTPUT_FILE" << 'EOF'
#!/bin/bash

# Activate venv
export VDIR=~/Coding/github/ld-decode-venv
source $VDIR/bin/activate

echo "========================================"
echo "Generating ld-decode test .ldf files"
echo "20 diverse discs selected"
echo "========================================"
echo ""

EOF

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

# Track processed discs to avoid duplicates
declare -A processed_discs

decode_count=0

echo "echo \"=== NTSC CAV Decodes (5 discs) ===\""  >> "$OUTPUT_FILE"
while IFS=':' read -r filepath rest; do
    # Extract file position range
    if [[ $rest =~ File\ pos\ ([0-9]+)\ -\ ([0-9]+) ]]; then
        start_pos=${BASH_REMATCH[1]}
        end_pos=${BASH_REMATCH[2]}
        
        # Check if this is one of our selected discs and not already processed
        if [[ "$filepath" =~ Pioneer.*GGV1069 ]] && [[ -z "${processed_discs[GGV1069_NTSC]}" ]]; then
            processed_discs[GGV1069_NTSC]=1
        elif [[ "$filepath" =~ Dragons-Lair.*DS1 ]] && [[ -z "${processed_discs[DragonsLair_DS1]}" ]]; then
            processed_discs[DragonsLair_DS1]=1
        elif [[ "$filepath" =~ FIREFOX ]] && [[ -z "${processed_discs[FIREFOX]}" ]]; then
            processed_discs[FIREFOX]=1
        elif [[ "$filepath" =~ National.*Gallery.*of.*Art ]] && [[ -z "${processed_discs[National_Gallery]}" ]]; then
            processed_discs[National_Gallery]=1
        elif [[ "$filepath" =~ CheckingDolbySurround ]] && [[ -z "${processed_discs[CheckingDolby]}" ]]; then
            processed_discs[CheckingDolby]=1
        else
            continue
        fi
        
        # Single decode per disc
        # Random frame count: 48-58 frames for NTSC
        frame_count=$(random_range 48 58)
        
        # Get random position
        start_frame=$(get_random_position $start_pos $end_pos $frame_count)
        
        # Create output filename
        output_name=$(get_output_name "$filepath" "$start_frame")
        ldf_file="$NTSC_CAV_DIR/${output_name}.ldf"
        temp_output="/tmp/${output_name}_temp"
        
        echo "echo \"[$((++decode_count))] Generating NTSC CAV test LDF: $output_name...\"" >> "$OUTPUT_FILE"
        echo "ldf_file=\"$ldf_file\"" >> "$OUTPUT_FILE"
        echo "temp_output=\"$temp_output\"" >> "$OUTPUT_FILE"
        echo "ld-decode --NTSC --start $start_frame --length $frame_count --write-test-ldf \"\$ldf_file\" \"$filepath\" \"\$temp_output\" && rm -f \"\$temp_output.tbc\" \"\$temp_output.tbc.json\"" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
    fi
done < ntsc-cav-master.txt

echo "echo \"=== NTSC CLV Decodes (2 discs) ===\"" >> "$OUTPUT_FILE"
while IFS=':' read -r filepath rest; do
    # Extract file position range
    if [[ $rest =~ File\ pos\ ([0-9]+)\ -\ ([0-9]+) ]]; then
        start_pos=${BASH_REMATCH[1]}
        end_pos=${BASH_REMATCH[2]}
        
        # Check if this is one of our selected discs and not already processed
        if [[ "$filepath" =~ Bambi.*CLV.*NTSC ]] && [[ -z "${processed_discs[Bambi_CLV]}" ]]; then
            processed_discs[Bambi_CLV]=1
        elif [[ "$filepath" =~ Cinderella.*CLV.*NTSC ]] && [[ -z "${processed_discs[Cinderella_CLV]}" ]]; then
            processed_discs[Cinderella_CLV]=1
        else
            continue
        fi
        
        # Single decode per disc
        # Random frame count: 48-58 frames for NTSC
        frame_count=$(random_range 48 58)
        
        # Get random position
        start_frame=$(get_random_position $start_pos $end_pos $frame_count)
        
        # Create output filename
        output_name=$(get_output_name "$filepath" "$start_frame")
        ldf_file="$NTSC_CLV_DIR/${output_name}.ldf"
        temp_output="/tmp/${output_name}_temp"
        
        echo "echo \"[$((++decode_count))] Generating NTSC CLV test LDF: $output_name...\"" >> "$OUTPUT_FILE"
        echo "ldf_file=\"$ldf_file\"" >> "$OUTPUT_FILE"
        echo "temp_output=\"$temp_output\"" >> "$OUTPUT_FILE"
        echo "ld-decode --NTSC --start $start_frame --length $frame_count --write-test-ldf \"\$ldf_file\" \"$filepath\" \"\$temp_output\" && rm -f \"\$temp_output.tbc\" \"\$temp_output.tbc.json\"" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
    fi
done < ntsc-clv-master.txt

echo "echo \"=== PAL CAV Decodes (6 discs) ===\"" >> "$OUTPUT_FILE"
while IFS=':' read -r filepath rest; do
    # Extract file position range
    if [[ $rest =~ File\ pos\ ([0-9]+)\ -\ ([0-9]+) ]]; then
        start_pos=${BASH_REMATCH[1]}
        end_pos=${BASH_REMATCH[2]}
        
        # Check if this is one of our selected discs and not already processed
        if [[ "$filepath" =~ GGV1011 ]] && [[ -z "${processed_discs[GGV1011]}" ]]; then
            processed_discs[GGV1011]=1
        elif [[ "$filepath" =~ DD86-DS4.*CommunityNorth ]] && [[ -z "${processed_discs[DS4_CommunityNorth]}" ]]; then
            processed_discs[DS4_CommunityNorth]=1
        elif [[ "$filepath" =~ EcoDisc.*DD86-DS1 ]] && [[ -z "${processed_discs[EcoDisc_DS1]}" ]]; then
            processed_discs[EcoDisc_DS1]=1
        elif [[ "$filepath" =~ Roger.*Rabbit.*Bonus ]] && [[ -z "${processed_discs[Roger_Rabbit]}" ]]; then
            processed_discs[Roger_Rabbit]=1
        elif [[ "$filepath" =~ British.*Garden.*Birds.*DD86-DS2 ]] && [[ -z "${processed_discs[Birds_DS2]}" ]]; then
            processed_discs[Birds_DS2]=1
        elif [[ "$filepath" =~ City-Disc.*DD86-DS1.*Culture2 ]] && [[ -z "${processed_discs[City_DS1_Culture2]}" ]]; then
            processed_discs[City_DS1_Culture2]=1
        else
            continue
        fi
        
        # Single decode per disc
        # Random frame count: 30-40 frames for PAL
        frame_count=$(random_range 30 40)
        
        # Get random position
        start_frame=$(get_random_position $start_pos $end_pos $frame_count)
        
        # Create output filename
        output_name=$(get_output_name "$filepath" "$start_frame")
        ldf_file="$PAL_CAV_DIR/${output_name}.ldf"
        temp_output="/tmp/${output_name}_temp"
        
        echo "echo \"[$((++decode_count))] Generating PAL CAV test LDF: $output_name...\"" >> "$OUTPUT_FILE"
        echo "ldf_file=\"$ldf_file\"" >> "$OUTPUT_FILE"
        echo "temp_output=\"$temp_output\"" >> "$OUTPUT_FILE"
        echo "ld-decode --PAL --start $start_frame --length $frame_count --write-test-ldf \"\$ldf_file\" \"$filepath\" \"\$temp_output\" && rm -f \"\$temp_output.tbc\" \"\$temp_output.tbc.json\"" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
    fi
done < pal-cav-master.txt

echo "echo \"=== PAL CLV Decodes (7 discs) ===\"" >> "$OUTPUT_FILE"
while IFS=':' read -r filepath rest; do
    # Extract file position range
    if [[ $rest =~ File\ pos\ ([0-9]+)\ -\ ([0-9]+) ]]; then
        start_pos=${BASH_REMATCH[1]}
        end_pos=${BASH_REMATCH[2]}
        
        # Check if this is one of our selected discs and not already processed
        if [[ "$filepath" =~ DD86-DS1.*NationalB.*PP ]] && [[ -z "${processed_discs[DS1_NationalB_PP]}" ]]; then
            processed_discs[DS1_NationalB_PP]=1
        elif [[ "$filepath" =~ DD86-DS3.*NationalB.*NP ]] && [[ -z "${processed_discs[DS3_NationalB_NP]}" ]]; then
            processed_discs[DS3_NationalB_NP]=1
        elif [[ "$filepath" =~ DD86-DS5.*NationalB.*AK ]] && [[ -z "${processed_discs[DS5_NationalB_AK]}" ]]; then
            processed_discs[DS5_NationalB_AK]=1
        elif [[ "$filepath" =~ DD86-DS7.*NationalB.*PP ]] && [[ -z "${processed_discs[DS7_NationalB_PP]}" ]]; then
            processed_discs[DS7_NationalB_PP]=1
        elif [[ "$filepath" =~ DD86-DS10.*NationalB.*PP ]] && [[ -z "${processed_discs[DS10_NationalB_PP]}" ]]; then
            processed_discs[DS10_NationalB_PP]=1
        elif [[ "$filepath" =~ DD86-DS12.*NationalB.*PP ]] && [[ -z "${processed_discs[DS12_NationalB_PP]}" ]]; then
            processed_discs[DS12_NationalB_PP]=1
        elif [[ "$filepath" =~ TImagesOf80s.*TP06 ]] && [[ -z "${processed_discs[ImagesOf80s]}" ]]; then
            processed_discs[ImagesOf80s]=1
        else
            continue
        fi
        
        # Single decode per disc
        # Random frame count: 30-40 frames for PAL
        frame_count=$(random_range 30 40)
        
        # Get random position
        start_frame=$(get_random_position $start_pos $end_pos $frame_count)
        
        # Create output filename
        output_name=$(get_output_name "$filepath" "$start_frame")
        ldf_file="$PAL_CLV_DIR/${output_name}.ldf"
        temp_output="/tmp/${output_name}_temp"
        
        echo "echo \"[$((++decode_count))] Generating PAL CLV test LDF: $output_name...\"" >> "$OUTPUT_FILE"
        echo "ldf_file=\"$ldf_file\"" >> "$OUTPUT_FILE"
        echo "temp_output=\"$temp_output\"" >> "$OUTPUT_FILE"
        echo "ld-decode --PAL --start $start_frame --length $frame_count --write-test-ldf \"\$ldf_file\" \"$filepath\" \"\$temp_output\" && rm -f \"\$temp_output.tbc\" \"\$temp_output.tbc.json\"" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
    fi
done < pal-clv-master.txt

cat >> "$OUTPUT_FILE" << EOF
echo ""
echo "======================================="
echo "Generated \$decode_count decode commands"
echo "======================================="
EOF

chmod +x "$OUTPUT_FILE"

echo "======================================="
echo "Generated decode_commands.sh"
echo "Location: $OUTPUT_FILE"
echo "Total commands: $decode_count"
echo "======================================="
