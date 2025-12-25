#!/bin/bash
# Generate test .ldf snippets for multi-disc stacking tests
# All copies of the same disc master use identical VBI/timecode ranges

set -e

OUTPUT_SCRIPT="decode_stacking_commands.sh"
BASE_OUTPUT_DIR="../../ld-decode-stacking"

# Create output directories
mkdir -p "$BASE_OUTPUT_DIR/ntsc/cav"
mkdir -p "$BASE_OUTPUT_DIR/pal/cav"
mkdir -p "$BASE_OUTPUT_DIR/pal/clv"

echo "#!/bin/bash" > "$OUTPUT_SCRIPT"
echo "# Auto-generated stacking test decode commands" >> "$OUTPUT_SCRIPT"
echo "set -e" >> "$OUTPUT_SCRIPT"
echo "" >> "$OUTPUT_SCRIPT"

# ============================================================================
# NTSC CAV - Dragon's Lair (53 frames at file position 5000-5052)
# All copies share file position range 1000-36000
# Using file position 5000 (safe for all copies)
# ============================================================================

echo "# Dragon's Lair - NTSC CAV - 53 frames at file position 5000-5052" >> "$OUTPUT_SCRIPT"

cat >> "$OUTPUT_SCRIPT" << 'EOF'
ldf_file="../../ld-decode-stacking/ntsc/cav/Dragons-Lair_DS1_Side1_pos5000.ldf"
temp_output="Dragons-Lair_DS1_temp"
ld-decode --NTSC --start 5000 --length 53 --write-test-ldf "$ldf_file" /home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_DS1_Side1_20191230_CAV_NTSC.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/ntsc/cav/Dragons-Lair_DS2_Side1_pos5000.ldf"
temp_output="Dragons-Lair_DS2_temp"
ld-decode --NTSC --start 5000 --length 53 --write-test-ldf "$ldf_file" /home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_DS2_Side1_20191230_CAV_NTSC.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/ntsc/cav/Dragons-Lair_DS4_Side1_pos5000.ldf"
temp_output="Dragons-Lair_DS4_temp"
ld-decode --NTSC --start 5000 --length 53 --write-test-ldf "$ldf_file" /home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_DS4_Side1_20191230_CAV_NTSC.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

EOF

# ============================================================================
# PAL CAV - The World the UN and You (35 frames at file position 5000-5034)
# All copies share file position range 1000-41000
# Using file position 5000 (safe for all copies)
# ============================================================================

echo "" >> "$OUTPUT_SCRIPT"
echo "# The World the UN and You - PAL CAV - 35 frames at file position 5000-5034" >> "$OUTPUT_SCRIPT"

cat >> "$OUTPUT_SCRIPT" << 'EOF'
ldf_file="../../ld-decode-stacking/pal/cav/UN-You_Disc1_pos5000.ldf"
temp_output="UN-You_Disc1_temp"
ld-decode --PAL --start 5000 --length 35 --write-test-ldf "$ldf_file" /home/sdi/raid/library/Interactive_Video/The_UN/The\ World\ the\ UN\ and\ You_CAV_PAL_Disc1_2019-09-15_18-27-44.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/cav/UN-You_Disc3_pos5000.ldf"
temp_output="UN-You_Disc3_temp"
ld-decode --PAL --start 5000 --length 35 --write-test-ldf "$ldf_file" /home/sdi/raid/library/Interactive_Video/The_UN/The\ World\ the\ UN\ and\ You_CAV_PAL_Disc3_2019-09-15_19-36-50.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/cav/UN-You_Disc5_pos5000.ldf"
temp_output="UN-You_Disc5_temp"
ld-decode --PAL --start 5000 --length 35 --write-test-ldf "$ldf_file" /home/sdi/raid/library/Interactive_Video/The_UN/The\ World\ the\ UN\ and\ You_CAV_PAL_Disc5_2019-09-15_20-56-00.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/cav/UN-You_Disc7_pos5000.ldf"
temp_output="UN-You_Disc7_temp"
ld-decode --PAL --start 5000 --length 35 --write-test-ldf "$ldf_file" /home/sdi/raid/library/Interactive_Video/The_UN/The\ World\ the\ UN\ and\ You_CAV_PAL_Disc7_2019-09-15_21-59-24.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

EOF

# ============================================================================
# PAL CLV - Domesday NationalB_PP (35 frames starting at 5:00.00)
# All have timecode range 0:31.xx to ~57:11.xx, so 5:00.00 is safe
# At 25fps: 5:00.00 = 5*60*25 + 0 = 7500 frames from disc start
# Note: --seek expects VBI frame number, for CLV use calculated frame offset
# ============================================================================

echo "" >> "$OUTPUT_SCRIPT"
echo "# Domesday NationalB_PP - PAL CLV - 35 frames at ~5:00.00 (frame 7500)" >> "$OUTPUT_SCRIPT"

cat >> "$OUTPUT_SCRIPT" << 'EOF'
ldf_file="../../ld-decode-stacking/pal/clv/Domesday_DS1_NationalB_PP_5m00s.ldf"
temp_output="Domesday_DS1_temp"
ld-decode --PAL --seek 7500 --length 35 --write-test-ldf "$ldf_file" /home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS1/Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/clv/Domesday_DS2_NationalB_PP_5m00s.ldf"
temp_output="Domesday_DS2_temp"
ld-decode --PAL --seek 7500 --length 35 --write-test-ldf "$ldf_file" /home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS2/Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/clv/Domesday_DS4_NationalB_PP_5m00s.ldf"
temp_output="Domesday_DS4_temp"
ld-decode --PAL --seek 7500 --length 35 --write-test-ldf "$ldf_file" /home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS4/Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/clv/Domesday_DS6_NationalB_PP_5m00s.ldf"
temp_output="Domesday_DS6_temp"
ld-decode --PAL --seek 7500 --length 35 --write-test-ldf "$ldf_file" /home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS6/Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/clv/Domesday_DS8_NationalB_PP_5m00s.ldf"
temp_output="Domesday_DS8_temp"
ld-decode --PAL --seek 7500 --length 35 --write-test-ldf "$ldf_file" /home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS8/Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/clv/Domesday_DS10_NationalB_PP_5m00s.ldf"
temp_output="Domesday_DS10_temp"
ld-decode --PAL --seek 7500 --length 35 --write-test-ldf "$ldf_file" /home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS10/Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/clv/Domesday_DS12_NationalB_PP_5m00s.ldf"
temp_output="Domesday_DS12_temp"
ld-decode --PAL --seek 7500 --length 35 --write-test-ldf "$ldf_file" /home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS12/Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

EOF

# ============================================================================
# PAL CAV - British Garden Birds Side1 (35 frames starting at VBI 10000)
# DS2: VBI 704-50704, DS3: VBI 665-50665, DS4: VBI 704-50704
# Safe range: VBI 10000-10034
# ============================================================================

echo "" >> "$OUTPUT_SCRIPT"
echo "# British Garden Birds Side1 - PAL CAV - 35 frames at VBI 10000-10034" >> "$OUTPUT_SCRIPT"

cat >> "$OUTPUT_SCRIPT" << 'EOF'
ldf_file="../../ld-decode-stacking/pal/cav/British-Garden-Birds_DS2_Side1_VBI10000-10034.ldf"
temp_output="BritishGardenBirds_DS2_S1_temp"
ld-decode --PAL --seek 10000 --length 35 --write-test-ldf "$ldf_file" /home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS2/British_Garden_Birds_DD86-DS2_Side1_20210104_CAV_PAL_00001-53450.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/cav/British-Garden-Birds_DS3_Side1_VBI10000-10034.ldf"
temp_output="BritishGardenBirds_DS3_S1_temp"
ld-decode --PAL --seek 10000 --length 35 --write-test-ldf "$ldf_file" /home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS3/British_Garden_Birds_DD86-DS3_Side1_20210610_CAV_PAL_00001-53450.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/cav/British-Garden-Birds_DS4_Side1_VBI10000-10034.ldf"
temp_output="BritishGardenBirds_DS4_S1_temp"
ld-decode --PAL --seek 10000 --length 35 --write-test-ldf "$ldf_file" /home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS4/British_Garden_Birds_DD86-DS4_Side1_20220402_CAV_PAL_00001-53450.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

EOF

# ============================================================================
# PAL CAV - British Garden Birds Side2 (35 frames starting at VBI 10000)
# DS1: VBI 699-50689, DS2: VBI 695-50695, DS3: VBI 673-50673
# Safe range: VBI 10000-10034
# ============================================================================

echo "" >> "$OUTPUT_SCRIPT"
echo "# British Garden Birds Side2 - PAL CAV - 35 frames at VBI 10000-10034" >> "$OUTPUT_SCRIPT"

cat >> "$OUTPUT_SCRIPT" << 'EOF'
ldf_file="../../ld-decode-stacking/pal/cav/British-Garden-Birds_DS1_Side2_VBI10000-10034.ldf"
temp_output="BritishGardenBirds_DS1_S2_temp"
ld-decode --PAL --seek 10000 --length 35 --write-test-ldf "$ldf_file" /home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS1/British_Garden_Birds_DD86-DS1_Side2_20200118_CAV_PAL_00001-53444.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/cav/British-Garden-Birds_DS2_Side2_VBI10000-10034.ldf"
temp_output="BritishGardenBirds_DS2_S2_temp"
ld-decode --PAL --seek 10000 --length 35 --write-test-ldf "$ldf_file" /home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS2/British_Garden_Birds_DD86-DS2_Side2_20210104_CAV_PAL_00001-53474.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/cav/British-Garden-Birds_DS3_Side2_VBI10000-10034.ldf"
temp_output="BritishGardenBirds_DS3_S2_temp"
ld-decode --PAL --seek 10000 --length 35 --write-test-ldf "$ldf_file" /home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS3/British_Garden_Birds_DD86-DS3_Side2_20210610_CAV_PAL_00001-53474.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

EOF

echo "" >> "$OUTPUT_SCRIPT"
echo "echo 'All stacking test .ldf files generated successfully!'" >> "$OUTPUT_SCRIPT"

chmod +x "$OUTPUT_SCRIPT"

echo "Generated $OUTPUT_SCRIPT with the following stacking test sets:"
echo "  - Dragon's Lair (NTSC CAV): 3 copies, VBI 10000-10052 (53 frames)"
echo "  - UN and You (PAL CAV): 4 copies, VBI 10000-10034 (35 frames)"
echo "  - Domesday NationalB_PP (PAL CLV): 7 copies, timecode 5:00.00 (35 frames)"
echo "  - British Garden Birds Side1 (PAL CAV): 3 copies, VBI 10000-10034 (35 frames)"
echo "  - British Garden Birds Side2 (PAL CAV): 3 copies, VBI 10000-10034 (35 frames)"
echo ""
echo "Total: 20 stacking test .ldf files"
echo "Output directory: $BASE_OUTPUT_DIR"
echo ""
echo "Run ./$OUTPUT_SCRIPT to generate the test files"
