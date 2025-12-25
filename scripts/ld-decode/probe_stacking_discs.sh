#!/bin/bash
# Probe disc files to find VBI frames at specific file positions

echo "=== Dragon's Lair - NTSC CAV ==="
for disc in DS1 DS2 DS4; do
    file="/home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_${disc}_Side1_20191230_CAV_NTSC.ldf"
    echo "--- $disc ---"
    ld-decode --NTSC --start 5000 --length 1 "$file" /tmp/probe_temp 2>&1 | grep -E "VBI|frame|Completed" | head -5
    rm -f /tmp/probe_temp.tbc* /tmp/probe_temp.efm /tmp/probe_temp.pcm
done

echo ""
echo "=== UN and You - PAL CAV ==="
for disc in Disc1 Disc3 Disc5 Disc7; do
    file="/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_${disc}_2019-09-15"*.ldf
    echo "--- $disc ---"
    ld-decode --PAL --start 5000 --length 1 $file /tmp/probe_temp 2>&1 | grep -E "VBI|frame|Completed" | head -5
    rm -f /tmp/probe_temp.tbc* /tmp/probe_temp.efm /tmp/probe_temp.pcm
done

echo ""
echo "=== Domesday NationalB_PP - PAL CLV ==="
for disc in DS1 DS2 DS4 DS6 DS8 DS10 DS12; do
    file="/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_${disc}/Domesday_DD86-${disc}_NationalB_PP"*".ldf"
    echo "--- $disc ---"
    ld-decode --PAL --start 5000 --length 1 $file /tmp/probe_temp 2>&1 | grep -E "time|frame|Completed" | head -5
    rm -f /tmp/probe_temp.tbc* /tmp/probe_temp.efm /tmp/probe_temp.pcm
done
