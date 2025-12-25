#!/bin/bash

echo "=== Dragon's Lair - NTSC CAV - File pos 5000 ==="
for disc in DS1 DS2 DS4; do
    file="/home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_${disc}_Side1_20191230_CAV_NTSC.ldf"
    ld-decode --NTSC --start 5000 --length 1 "$file" /tmp/probe_temp >/dev/null 2>&1
    vbi=$(jq -r '.videoParameters.fieldOrder' /tmp/probe_temp.tbc.json 2>/dev/null || echo "N/A")
    frame=$(jq -r '.fields[0].vbi.vbiData[0].data' /tmp/probe_temp.tbc.json 2>/dev/null || echo "N/A")
    echo "$disc: First field VBI = $frame"
    rm -f /tmp/probe_temp.tbc* /tmp/probe_temp.efm /tmp/probe_temp.pcm
done

echo ""
echo "=== UN and You - PAL CAV - File pos 5000 ==="
ld-decode --PAL --start 5000 --length 1 "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc1_2019-09-15_18-27-44.ldf" /tmp/probe_temp >/dev/null 2>&1
frame=$(jq -r '.fields[0].vbi.vbiData[0].data' /tmp/probe_temp.tbc.json 2>/dev/null || echo "N/A")
echo "Disc1: First field VBI = $frame"
rm -f /tmp/probe_temp.tbc* /tmp/probe_temp.efm /tmp/probe_temp.pcm

ld-decode --PAL --start 5000 --length 1 "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc3_2019-09-15_19-36-50.ldf" /tmp/probe_temp >/dev/null 2>&1
frame=$(jq -r '.fields[0].vbi.vbiData[0].data' /tmp/probe_temp.tbc.json 2>/dev/null || echo "N/A")
echo "Disc3: First field VBI = $frame"
rm -f /tmp/probe_temp.tbc* /tmp/probe_temp.efm /tmp/probe_temp.pcm

ld-decode --PAL --start 5000 --length 1 "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc5_2019-09-15_20-56-00.ldf" /tmp/probe_temp >/dev/null 2>&1
frame=$(jq -r '.fields[0].vbi.vbiData[0].data' /tmp/probe_temp.tbc.json 2>/dev/null || echo "N/A")
echo "Disc5: First field VBI = $frame"
rm -f /tmp/probe_temp.tbc* /tmp/probe_temp.efm /tmp/probe_temp.pcm

ld-decode --PAL --start 5000 --length 1 "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc7_2019-09-15_21-59-24.ldf" /tmp/probe_temp >/dev/null 2>&1
frame=$(jq -r '.fields[0].vbi.vbiData[0].data' /tmp/probe_temp.tbc.json 2>/dev/null || echo "N/A")
echo "Disc7: First field VBI = $frame"
rm -f /tmp/probe_temp.tbc* /tmp/probe_temp.efm /tmp/probe_temp.pcm

echo ""
echo "=== Domesday NationalB_PP - PAL CLV - File pos 5000 ==="
for disc in DS1 DS2 DS4; do
    file="/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_${disc}/Domesday_DD86-${disc}_NationalB_PP_20191014_CLV_PAL_00-60.ldf"
    ld-decode --PAL --start 5000 --length 1 "$file" /tmp/probe_temp >/dev/null 2>&1
    time=$(jq -r '.fields[0].vbi.vbiData[1].data' /tmp/probe_temp.tbc.json 2>/dev/null || echo "N/A")
    echo "$disc: Timecode = $time"
    rm -f /tmp/probe_temp.tbc* /tmp/probe_temp.efm /tmp/probe_temp.pcm
done
