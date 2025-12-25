#!/bin/bash
# Calculate file positions that result in matching VBI frames for stacking

# Based on master list data:
# Dragon's Lair:
#   DS1: VBI 386-28386 | File pos 1000-36000  (ratio: 28000 VBI / 35000 filepos = 0.8)
#   DS2: VBI 371-28371 | File pos 1000-36000  
#   DS4: VBI ?-28324   | File pos 1000-36000

# UN and You:
#   Disc1: VBI 669-40669  | File pos 1000-41000  (ratio: 40000 VBI / 40000 filepos = 1.0)
#   Disc3: VBI 682-40682  | File pos 1000-41000
#   Disc5: VBI 649-40649  | File pos 1000-41000  
#   Disc7: VBI 681-40681  | File pos 1000-41000

# Target VBI frame for Dragon's Lair: 20000
# For DS1: VBI 20000 - 386 = 19614 from start, filepos = 1000 + 19614 * 1.25 = ~25518
# For DS2: VBI 20000 - 371 = 19629 from start, filepos = 1000 + 19629 * 1.25 = ~25536

# Target VBI frame for UN: 20000  
# For Disc1: VBI 20000 - 669 = 19331 from start, filepos = 1000 + 19331 = 20331
# For Disc3: VBI 20000 - 682 = 19318 from start, filepos = 1000 + 19318 = 20318
# For Disc5: VBI 20000 - 649 = 19351 from start, filepos = 1000 + 19351 = 20351
# For Disc7: VBI 20000 - 681 = 19319 from start, filepos = 1000 + 19319 = 20319

echo "Calculating precise file positions for VBI alignment..."
echo ""

# Verify Dragon's Lair at calculated positions
echo "=== Dragon's Lair - Target VBI 20000 ==="
ld-decode --NTSC --start 25518 --length 1 /home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_DS1_Side1_20191230_CAV_NTSC.ldf /tmp/calc1 >/dev/null 2>&1
vbi1=$(jq -r '.fields[0].diskLoc' /tmp/calc1.tbc.json)
echo "DS1 at filepos 25518: VBI $vbi1"
rm -f /tmp/calc1.tbc*

ld-decode --NTSC --start 25536 --length 1 /home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_DS2_Side1_20191230_CAV_NTSC.ldf /tmp/calc2 >/dev/null 2>&1
vbi2=$(jq -r '.fields[0].diskLoc' /tmp/calc2.tbc.json)
echo "DS2 at filepos 25536: VBI $vbi2"
rm -f /tmp/calc2.tbc*

echo ""
echo "=== UN and You - Target VBI 20000 ==="
ld-decode --PAL --start 20331 --length 1 "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc1_2019-09-15_18-27-44.ldf" /tmp/calc3 >/dev/null 2>&1
vbi3=$(jq -r '.fields[0].diskLoc' /tmp/calc3.tbc.json)
echo "Disc1 at filepos 20331: VBI $vbi3"
rm -f /tmp/calc3.tbc*

ld-decode --PAL --start 20318 --length 1 "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc3_2019-09-15_19-36-50.ldf" /tmp/calc4 >/dev/null 2>&1
vbi4=$(jq -r '.fields[0].diskLoc' /tmp/calc4.tbc.json)
echo "Disc3 at filepos 20318: VBI $vbi4"
rm -f /tmp/calc4.tbc*

ld-decode --PAL --start 20351 --length 1 "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc5_2019-09-15_20-56-00.ldf" /tmp/calc5 >/dev/null 2>&1
vbi5=$(jq -r '.fields[0].diskLoc' /tmp/calc5.tbc.json)
echo "Disc5 at filepos 20351: VBI $vbi5"
rm -f /tmp/calc5.tbc*

ld-decode --PAL --start 20319 --length 1 "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc7_2019-09-15_21-59-24.ldf" /tmp/calc6 >/dev/null 2>&1
vbi6=$(jq -r '.fields[0].diskLoc' /tmp/calc6.tbc.json)
echo "Disc7 at filepos 20319: VBI $vbi6"
rm -f /tmp/calc6.tbc*
