#!/bin/bash
# Probe ALL available disc copies and generate aligned stacking test files

set -e

TARGET_VBI_NTSC=15000  # Target VBI frame for NTSC CAV discs
TARGET_VBI_PAL=15000   # Target VBI frame for PAL CAV discs
TARGET_FILEPOS_CLV=5000  # Use file position for CLV (they align by filepos)

VBI_RATIO=2.0  # VBI frames per file position (empirically determined)

OUTPUT_SCRIPT="decode_stacking_commands_complete.sh"

echo "#!/bin/bash" > "$OUTPUT_SCRIPT"
echo "# Complete stacking test decode commands - ALL available copies" >> "$OUTPUT_SCRIPT"
echo "set -e" >> "$OUTPUT_SCRIPT"
echo "" >> "$OUTPUT_SCRIPT"

# Create output directories
mkdir -p ../../ld-decode-stacking/ntsc/cav
mkdir -p ../../ld-decode-stacking/pal/cav
mkdir -p ../../ld-decode-stacking/pal/clv

echo "=== Probing Dragon's Lair (NTSC CAV) - 4 copies ==="
echo "" >> "$OUTPUT_SCRIPT"
echo "# Dragon's Lair - NTSC CAV - 53 frames at VBI $TARGET_VBI_NTSC" >> "$OUTPUT_SCRIPT"

for disc in DS1 DS2 DS3 DS4; do
    file="/home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_${disc}_Side1_20191230_CAV_NTSC.ldf"
    
    # Probe at filepos 5000 to get VBI offset
    ld-decode --NTSC --start 5000 --length 1 "$file" /tmp/probe >/dev/null 2>&1
    vbi_at_5000=$(jq -r '.fields[0].diskLoc' /tmp/probe.tbc.json 2>/dev/null || echo "null")
    rm -f /tmp/probe.tbc*
    
    if [ "$vbi_at_5000" != "null" ]; then
        # Calculate offset and target filepos
        offset=$(python3 -c "print($vbi_at_5000 - $VBI_RATIO * 5000)")
        filepos=$(python3 -c "print(int(($TARGET_VBI_NTSC - $offset) / $VBI_RATIO))")
        
        echo "$disc: VBI@5000=$vbi_at_5000, offset=$offset, target_filepos=$filepos"
        
        # Generate decode command
        cat >> "$OUTPUT_SCRIPT" << EOF
ldf_file="../../ld-decode-stacking/ntsc/cav/Dragons-Lair_${disc}_Side1_VBI${TARGET_VBI_NTSC}.ldf"
temp_output="Dragons-Lair_${disc}_temp"
ld-decode --NTSC --start $filepos --length 53 --write-test-ldf "\$ldf_file" $file "\$temp_output" && rm -f "\$temp_output.tbc" "\$temp_output.tbc.json" "\$temp_output.efm" "\$temp_output.pcm"

EOF
    fi
done

echo ""
echo "=== Probing UN and You (PAL CAV) - 7 copies ==="
echo "" >> "$OUTPUT_SCRIPT"
echo "# The World the UN and You - PAL CAV - 35 frames at VBI $TARGET_VBI_PAL" >> "$OUTPUT_SCRIPT"

for disc in 1 2 3 4 5 6 7; do
    file=$(ls /home/sdi/raid/library/Interactive_Video/The_UN/The\ World\ the\ UN\ and\ You_CAV_PAL_Disc${disc}_*.ldf 2>/dev/null | head -1)
    
    if [ -z "$file" ]; then
        echo "ERROR: File not found for UN Disc${disc}"
        continue
    fi
    
    ld-decode --PAL --start 5000 --length 1 "$file" /tmp/probe >/dev/null 2>&1
    vbi_at_5000=$(jq -r '.fields[0].diskLoc' /tmp/probe.tbc.json 2>/dev/null || echo "null")
    rm -f /tmp/probe.tbc*
    
    if [ "$vbi_at_5000" != "null" ]; then
        offset=$(python3 -c "print($vbi_at_5000 - $VBI_RATIO * 5000)")
        filepos=$(python3 -c "print(int(($TARGET_VBI_PAL - $offset) / $VBI_RATIO))")
        
        echo "Disc$disc: VBI@5000=$vbi_at_5000, offset=$offset, target_filepos=$filepos"
        
        cat >> "$OUTPUT_SCRIPT" << EOF
ldf_file="../../ld-decode-stacking/pal/cav/UN-You_Disc${disc}_VBI${TARGET_VBI_PAL}.ldf"
temp_output="UN-You_Disc${disc}_temp"
ld-decode --PAL --start $filepos --length 35 --write-test-ldf "\$ldf_file" "$file" "\$temp_output" && rm -f "\$temp_output.tbc" "\$temp_output.tbc.json" "\$temp_output.efm" "\$temp_output.pcm"

EOF
    fi
done

echo ""
echo "=== Domesday NationalB_PP (PAL CLV) - 7 copies ==="
echo "" >> "$OUTPUT_SCRIPT"
echo "# Domesday NationalB_PP - PAL CLV - 35 frames at filepos $TARGET_FILEPOS_CLV" >> "$OUTPUT_SCRIPT"

for disc in DS1 DS2 DS4 DS6 DS8 DS10 DS12; do
    file=$(ls /home/sdi/raid/library/BBC_AIV/Domesday/Domesday_${disc}/Domesday_DD86-${disc}_NationalB_PP*.ldf 2>/dev/null | head -1)
    
    if [ -z "$file" ]; then
        echo "ERROR: File not found for Domesday $disc"
        continue
    fi
    
    echo "$disc: filepos=$TARGET_FILEPOS_CLV"
    
    cat >> "$OUTPUT_SCRIPT" << EOF
ldf_file="../../ld-decode-stacking/pal/clv/Domesday_${disc}_NationalB_PP_pos${TARGET_FILEPOS_CLV}.ldf"
temp_output="Domesday_${disc}_temp"
ld-decode --PAL --start $TARGET_FILEPOS_CLV --length 35 --write-test-ldf "\$ldf_file" "$file" "\$temp_output" && rm -f "\$temp_output.tbc" "\$temp_output.tbc.json" "\$temp_output.efm" "\$temp_output.pcm"

EOF
done

echo ""
echo "=== British Garden Birds Side1 (PAL CAV) - 4 copies ==="
echo "" >> "$OUTPUT_SCRIPT"
echo "# British Garden Birds Side1 - PAL CAV - 35 frames at VBI $TARGET_VBI_PAL" >> "$OUTPUT_SCRIPT"

for disc in DS1 DS2 DS3 DS4; do
    file=$(ls /home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_${disc}/British_Garden_Birds_DD86-${disc}_Side1*.ldf 2>/dev/null | head -1)
    
    if [ -z "$file" ]; then
        echo "ERROR: File not found for British Garden Birds $disc Side1"
        continue
    fi
    
    ld-decode --PAL --start 5000 --length 1 "$file" /tmp/probe >/dev/null 2>&1
    vbi_at_5000=$(jq -r '.fields[0].diskLoc' /tmp/probe.tbc.json 2>/dev/null || echo "null")
    rm -f /tmp/probe.tbc*
    
    if [ "$vbi_at_5000" != "null" ]; then
        offset=$(python3 -c "print($vbi_at_5000 - $VBI_RATIO * 5000)")
        filepos=$(python3 -c "print(int(($TARGET_VBI_PAL - $offset) / $VBI_RATIO))")
        
        echo "$disc Side1: VBI@5000=$vbi_at_5000, offset=$offset, target_filepos=$filepos"
        
        cat >> "$OUTPUT_SCRIPT" << EOF
ldf_file="../../ld-decode-stacking/pal/cav/British-Garden-Birds_${disc}_Side1_VBI${TARGET_VBI_PAL}.ldf"
temp_output="BritishGardenBirds_${disc}_S1_temp"
ld-decode --PAL --start $filepos --length 35 --write-test-ldf "\$ldf_file" "$file" "\$temp_output" && rm -f "\$temp_output.tbc" "\$temp_output.tbc.json" "\$temp_output.efm" "\$temp_output.pcm"

EOF
    fi
done

echo ""
echo "=== British Garden Birds Side2 (PAL CAV) - 4 copies ==="
echo "" >> "$OUTPUT_SCRIPT"
echo "# British Garden Birds Side2 - PAL CAV - 35 frames at VBI $TARGET_VBI_PAL" >> "$OUTPUT_SCRIPT"

for disc in DS1 DS2 DS3 DS4; do
    file=$(ls /home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_${disc}/British_Garden_Birds_DD86-${disc}_Side2*.ldf 2>/dev/null | head -1)
    
    if [ -z "$file" ]; then
        echo "ERROR: File not found for British Garden Birds $disc Side2"
        continue
    fi
    
    ld-decode --PAL --start 5000 --length 1 "$file" /tmp/probe >/dev/null 2>&1
    vbi_at_5000=$(jq -r '.fields[0].diskLoc' /tmp/probe.tbc.json 2>/dev/null || echo "null")
    rm -f /tmp/probe.tbc*
    
    if [ "$vbi_at_5000" != "null" ]; then
        offset=$(python3 -c "print($vbi_at_5000 - $VBI_RATIO * 5000)")
        filepos=$(python3 -c "print(int(($TARGET_VBI_PAL - $offset) / $VBI_RATIO))")
        
        echo "$disc Side2: VBI@5000=$vbi_at_5000, offset=$offset, target_filepos=$filepos"
        
        cat >> "$OUTPUT_SCRIPT" << EOF
ldf_file="../../ld-decode-stacking/pal/cav/British-Garden-Birds_${disc}_Side2_VBI${TARGET_VBI_PAL}.ldf"
temp_output="BritishGardenBirds_${disc}_S2_temp"
ld-decode --PAL --start $filepos --length 35 --write-test-ldf "\$ldf_file" $file "\$temp_output" && rm -f "\$temp_output.tbc" "\$temp_output.tbc.json" "\$temp_output.efm" "\$temp_output.pcm"

EOF
    fi
done

echo "" >> "$OUTPUT_SCRIPT"
echo "echo 'All stacking test .ldf files generated successfully!'" >> "$OUTPUT_SCRIPT"

chmod +x "$OUTPUT_SCRIPT"

echo ""
echo "========================================="
echo "Generated $OUTPUT_SCRIPT"
echo "Total files to create:"
echo "  Dragon's Lair: 4 copies"
echo "  UN and You: 7 copies"
echo "  Domesday NationalB_PP: 7 copies"
echo "  British Garden Birds Side1: 4 copies"
echo "  British Garden Birds Side2: 4 copies"
echo "  TOTAL: 26 stacking test .ldf files"
echo "========================================="
