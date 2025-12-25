#!/bin/bash
# Find file positions that result in the same VBI frame across all copies

echo "=== Dragon's Lair - Finding matching VBI frame ==="
echo "Target: Find a VBI frame that exists in all 3 copies"
echo ""

# Probe DS1 at different file positions
for pos in 5000 10000 15000 20000; do
    ld-decode --NTSC --start $pos --length 1 /home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_DS1_Side1_20191230_CAV_NTSC.ldf /tmp/probe >/dev/null 2>&1
    vbi_ds1=$(jq -r '.fields[0].diskLoc' /tmp/probe.tbc.json 2>/dev/null)
    rm -f /tmp/probe.tbc*
    
    ld-decode --NTSC --start $pos --length 1 /home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_DS2_Side1_20191230_CAV_NTSC.ldf /tmp/probe >/dev/null 2>&1
    vbi_ds2=$(jq -r '.fields[0].diskLoc' /tmp/probe.tbc.json 2>/dev/null)
    rm -f /tmp/probe.tbc*
    
    ld-decode --NTSC --start $pos --length 1 /home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_DS4_Side1_20191230_CAV_NTSC.ldf /tmp/probe >/dev/null 2>&1
    vbi_ds4=$(jq -r '.fields[0].diskLoc' /tmp/probe.tbc.json 2>/dev/null)
    rm -f /tmp/probe.tbc*
    
    echo "File pos $pos: DS1=$vbi_ds1, DS2=$vbi_ds2, DS4=$vbi_ds4"
done

echo ""
echo "=== UN and You - Finding matching VBI frame ==="
for pos in 5000 10000 15000 20000; do
    ld-decode --PAL --start $pos --length 1 "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc1_2019-09-15_18-27-44.ldf" /tmp/probe >/dev/null 2>&1
    vbi_d1=$(jq -r '.fields[0].diskLoc' /tmp/probe.tbc.json 2>/dev/null)
    rm -f /tmp/probe.tbc*
    
    ld-decode --PAL --start $pos --length 1 "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc3_2019-09-15_19-36-50.ldf" /tmp/probe >/dev/null 2>&1
    vbi_d3=$(jq -r '.fields[0].diskLoc' /tmp/probe.tbc.json 2>/dev/null)
    rm -f /tmp/probe.tbc*
    
    echo "File pos $pos: Disc1=$vbi_d1, Disc3=$vbi_d3"
done
