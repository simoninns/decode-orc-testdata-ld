#!/bin/bash
# Verify stacking alignment by decoding from original source discs at calculated positions

echo "=========================================="
echo "Verifying Stacking File Alignment"
echo "Decoding from ORIGINAL DISCS at calculated positions"
echo "=========================================="
echo ""

TEMP_OUTPUT="/tmp/verify_stack"

# Function to get VBI range
get_vbi_range() {
    local json_file="$1"
    local first_vbi=$(jq -r '.fields[0].diskLoc // "null"' "$json_file" 2>/dev/null)
    local last_vbi=$(jq -r '.fields[-1].diskLoc // "null"' "$json_file" 2>/dev/null)
    echo "$first_vbi-$last_vbi"
}

echo "=== 1. Dragon's Lair (NTSC CAV) - 4 copies ==="
echo "All should decode from source discs to same VBI range"
echo "File position: 7499, Length: 53 frames"
echo ""

declare -a dl_ranges
for disc in DS1 DS2 DS3 DS4; do
    source_file="/home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_${disc}_Side1_20191230_CAV_NTSC.ldf"
    
    ld-decode --NTSC --start 7499 --length 53 "$source_file" "$TEMP_OUTPUT" >/dev/null 2>&1
    
    if [ -f "${TEMP_OUTPUT}.tbc.json" ]; then
        range=$(get_vbi_range "${TEMP_OUTPUT}.tbc.json")
        echo "  $disc: VBI $range"
        dl_ranges+=("$range")
        rm -f "${TEMP_OUTPUT}.tbc" "${TEMP_OUTPUT}.tbc.json"
    else
        echo "  $disc: ERROR - decode failed"
    fi
done

unique_dl=$(printf '%s\n' "${dl_ranges[@]}" | sort -u | wc -l)
if [ "$unique_dl" -eq 1 ]; then
    echo "✓ PASS: All Dragon's Lair copies decode to identical VBI range"
else
    echo "✗ FAIL: Dragon's Lair copies decode to different VBI ranges"
fi
echo ""

echo "=== 2. UN and You (PAL CAV) - 7 copies ==="
echo "Each disc uses different --start position to reach VBI 15000"
echo ""

declare -a un_ranges
# Actual positions from decode_stacking_commands_complete.sh
declare -A un_positions=([1]=7499 [2]=7499 [3]=7499 [4]=7499 [5]=7499 [6]=7500 [7]=7499)

for disc in 1 2 3 4 5 6 7; do
    source_file=$(ls /home/sdi/raid/library/Interactive_Video/The_UN/The\ World\ the\ UN\ and\ You_CAV_PAL_Disc${disc}_*.ldf 2>/dev/null | head -1)
    filepos=${un_positions[$disc]}
    
    if [ -n "$source_file" ]; then
        echo "  Disc${disc}: --start $filepos"
        ld-decode --PAL --start $filepos --length 35 "$source_file" "$TEMP_OUTPUT" >/dev/null 2>&1
        
        if [ -f "${TEMP_OUTPUT}.tbc.json" ]; then
            range=$(get_vbi_range "${TEMP_OUTPUT}.tbc.json")
            echo "    → VBI $range"
            un_ranges+=("$range")
            rm -f "${TEMP_OUTPUT}.tbc" "${TEMP_OUTPUT}.tbc.json"
        else
            echo "    ERROR - decode failed"
        fi
    fi
done

unique_un=$(printf '%s\n' "${un_ranges[@]}" | sort -u | wc -l)
if [ "$unique_un" -eq 1 ]; then
    echo "✓ PASS: All UN copies decode to identical VBI range"
else
    echo "✗ FAIL: UN copies decode to different VBI ranges"
    echo "Unique ranges found:"
    printf '%s\n' "${un_ranges[@]}" | sort -u
fi
echo ""

echo "=== 3. Domesday NationalB_PP (PAL CLV) - 7 copies ==="
echo "All should decode from same file position (5000)"
echo ""

declare -a domesday_ranges
for disc in DS1 DS2 DS4 DS6 DS8 DS10 DS12; do
    source_file=$(ls /home/sdi/raid/library/BBC_AIV/Domesday/Domesday_${disc}/Domesday_DD86-${disc}_NationalB_PP*.ldf 2>/dev/null | head -1)
    
    if [ -n "$source_file" ]; then
        ld-decode --PAL --start 5000 --length 35 "$source_file" "$TEMP_OUTPUT" >/dev/null 2>&1
        
        if [ -f "${TEMP_OUTPUT}.tbc.json" ]; then
            range=$(get_vbi_range "${TEMP_OUTPUT}.tbc.json")
            echo "  $disc: Timecode $range"
            domesday_ranges+=("$range")
            rm -f "${TEMP_OUTPUT}.tbc" "${TEMP_OUTPUT}.tbc.json"
        else
            echo "  $disc: ERROR - decode failed"
        fi
    fi
done

unique_domesday=$(printf '%s\n' "${domesday_ranges[@]}" | sort -u | wc -l)
if [ "$unique_domesday" -eq 1 ]; then
    echo "✓ PASS: All Domesday copies decode to identical timecode range"
else
    echo "✗ FAIL: Domesday copies decode to different timecode ranges"
    echo "Unique ranges found:"
    printf '%s\n' "${domesday_ranges[@]}" | sort -u
fi
echo ""

echo "=== 4. British Garden Birds Side1 (PAL CAV) - 4 copies ==="
echo "Each disc uses different --start position to reach VBI 15000"
echo ""

declare -a bgb1_ranges
# Actual positions: DS1=7499, DS2=7498, DS3=7499, DS4=7499
declare -A bgb1_positions=([DS1]=7499 [DS2]=7498 [DS3]=7499 [DS4]=7499)

for disc in DS1 DS2 DS3 DS4; do
    source_file=$(ls /home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_${disc}/British_Garden_Birds_DD86-${disc}_Side1*.ldf 2>/dev/null | head -1)
    filepos=${bgb1_positions[$disc]}
    
    if [ -n "$source_file" ]; then
        echo "  $disc: --start $filepos"
        ld-decode --PAL --start $filepos --length 35 "$source_file" "$TEMP_OUTPUT" >/dev/null 2>&1
        
        if [ -f "${TEMP_OUTPUT}.tbc.json" ]; then
            range=$(get_vbi_range "${TEMP_OUTPUT}.tbc.json")
            echo "    → VBI $range"
            bgb1_ranges+=("$range")
            rm -f "${TEMP_OUTPUT}.tbc" "${TEMP_OUTPUT}.tbc.json"
        else
            echo "    ERROR - decode failed"
        fi
    fi
done

unique_bgb1=$(printf '%s\n' "${bgb1_ranges[@]}" | sort -u | wc -l)
if [ "$unique_bgb1" -eq 1 ]; then
    echo "✓ PASS: All British Garden Birds Side1 copies decode to identical VBI range"
else
    echo "✗ FAIL: British Garden Birds Side1 copies decode to different VBI ranges"
    echo "Unique ranges found:"
    printf '%s\n' "${bgb1_ranges[@]}" | sort -u
fi
echo ""

echo "=== 5. British Garden Birds Side2 (PAL CAV) - 4 copies ==="
echo "Each disc uses different --start position to reach VBI 15000"
echo ""

declare -a bgb2_ranges
# Actual positions: DS1=7500, DS2=7499, DS3=7499, DS4=7499
declare -A bgb2_positions=([DS1]=7500 [DS2]=7499 [DS3]=7499 [DS4]=7499)

for disc in DS1 DS2 DS3 DS4; do
    source_file=$(ls /home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_${disc}/British_Garden_Birds_DD86-${disc}_Side2*.ldf 2>/dev/null | head -1)
    filepos=${bgb2_positions[$disc]}
    
    if [ -n "$source_file" ]; then
        echo "  $disc: --start $filepos"
        ld-decode --PAL --start $filepos --length 35 "$source_file" "$TEMP_OUTPUT" >/dev/null 2>&1
        
        if [ -f "${TEMP_OUTPUT}.tbc.json" ]; then
            range=$(get_vbi_range "${TEMP_OUTPUT}.tbc.json")
            echo "    → VBI $range"
            bgb2_ranges+=("$range")
            rm -f "${TEMP_OUTPUT}.tbc" "${TEMP_OUTPUT}.tbc.json"
        else
            echo "    ERROR - decode failed"
        fi
    fi
done

unique_bgb2=$(printf '%s\n' "${bgb2_ranges[@]}" | sort -u | wc -l)
if [ "$unique_bgb2" -eq 1 ]; then
    echo "✓ PASS: All British Garden Birds Side2 copies decode to identical VBI range"
else
    echo "✗ FAIL: British Garden Birds Side2 copies decode to different VBI ranges"
    echo "Unique ranges found:"
    printf '%s\n' "${bgb2_ranges[@]}" | sort -u
fi
echo ""

echo "=========================================="
echo "Summary:"
total_pass=0
total_fail=0

[ "$unique_dl" -eq 1 ] && ((total_pass++)) || ((total_fail++))
[ "$unique_un" -eq 1 ] && ((total_pass++)) || ((total_fail++))
[ "$unique_domesday" -eq 1 ] && ((total_pass++)) || ((total_fail++))
[ "$unique_bgb1" -eq 1 ] && ((total_pass++)) || ((total_fail++))
[ "$unique_bgb2" -eq 1 ] && ((total_pass++)) || ((total_fail++))

echo "PASSED: $total_pass/5 disc sets"
echo "FAILED: $total_fail/5 disc sets"
echo "=========================================="

if [ "$total_fail" -eq 0 ]; then
    echo "✓ All stacking files are properly aligned!"
    exit 0
else
    echo "✗ Some stacking files have alignment issues"
    exit 1
fi
