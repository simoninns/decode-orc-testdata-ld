#!/bin/bash
# Complete stacking test decode commands - ALL available copies
# Note: not using set -e to allow script to continue if individual decodes fail


# Dragon's Lair - NTSC CAV - 53 frames at VBI 15000
ldf_file="../../ld-decode-stacking/ntsc/cav/Dragons-Lair_DS1_Side1_VBI15000.ldf"
temp_output="Dragons-Lair_DS1_temp"
ld-decode --NTSC --start 7499 --length 53 --write-test-ldf "$ldf_file" /home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_DS1_Side1_20191230_CAV_NTSC.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/ntsc/cav/Dragons-Lair_DS2_Side1_VBI15000.ldf"
temp_output="Dragons-Lair_DS2_temp"
ld-decode --NTSC --start 7499 --length 53 --write-test-ldf "$ldf_file" /home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_DS2_Side1_20191230_CAV_NTSC.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/ntsc/cav/Dragons-Lair_DS3_Side1_VBI15000.ldf"
temp_output="Dragons-Lair_DS3_temp"
ld-decode --NTSC --start 7499 --length 53 --write-test-ldf "$ldf_file" /home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_DS3_Side1_20191230_CAV_NTSC.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/ntsc/cav/Dragons-Lair_DS4_Side1_VBI15000.ldf"
temp_output="Dragons-Lair_DS4_temp"
ld-decode --NTSC --start 7499 --length 53 --write-test-ldf "$ldf_file" /home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_DS4_Side1_20191230_CAV_NTSC.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"


# The World the UN and You - PAL CAV - 35 frames at VBI 15000
ldf_file="../../ld-decode-stacking/pal/cav/UN-You_Disc1_VBI15000.ldf"
temp_output="UN-You_Disc1_temp"
ld-decode --PAL --start 7499 --length 35 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc1_2019-09-15_18-27-44.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/cav/UN-You_Disc2_VBI15000.ldf"
temp_output="UN-You_Disc2_temp"
ld-decode --PAL --start 7499 --length 35 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc2_2019-09-15_18-58-16.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/cav/UN-You_Disc3_VBI15000.ldf"
temp_output="UN-You_Disc3_temp"
ld-decode --PAL --start 7499 --length 35 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc3_2019-09-15_19-36-50.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/cav/UN-You_Disc4_VBI15000.ldf"
temp_output="UN-You_Disc4_temp"
ld-decode --PAL --start 7499 --length 35 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc4_2019-09-15_20-11-13.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/cav/UN-You_Disc5_VBI15000.ldf"
temp_output="UN-You_Disc5_temp"
ld-decode --PAL --start 7499 --length 35 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc5_2019-09-15_20-56-00.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/cav/UN-You_Disc6_VBI15000.ldf"
temp_output="UN-You_Disc6_temp"
ld-decode --PAL --start 7500 --length 35 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc6_2019-09-15_21-28-22.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/cav/UN-You_Disc7_VBI15000.ldf"
temp_output="UN-You_Disc7_temp"
ld-decode --PAL --start 7499 --length 35 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc7_2019-09-15_21-59-24.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"


# Domesday NationalB_PP - PAL CLV - 35 frames at filepos 5000
ldf_file="../../ld-decode-stacking/pal/clv/Domesday_DS1_NationalB_PP_pos5000.ldf"
temp_output="Domesday_DS1_temp"
ld-decode --PAL --start 5000 --length 35 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS1/Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/clv/Domesday_DS2_NationalB_PP_pos5000.ldf"
temp_output="Domesday_DS2_temp"
ld-decode --PAL --start 5000 --length 35 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS2/Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/clv/Domesday_DS4_NationalB_PP_pos5000.ldf"
temp_output="Domesday_DS4_temp"
ld-decode --PAL --start 5000 --length 35 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS4/Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/clv/Domesday_DS6_NationalB_PP_pos5000.ldf"
temp_output="Domesday_DS6_temp"
ld-decode --PAL --start 5000 --length 35 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS6/Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/clv/Domesday_DS8_NationalB_PP_pos5000.ldf"
temp_output="Domesday_DS8_temp"
ld-decode --PAL --start 5000 --length 35 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS8/Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/clv/Domesday_DS10_NationalB_PP_pos5000.ldf"
temp_output="Domesday_DS10_temp"
ld-decode --PAL --start 5000 --length 35 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS10/Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/clv/Domesday_DS12_NationalB_PP_pos5000.ldf"
temp_output="Domesday_DS12_temp"
ld-decode --PAL --start 5000 --length 35 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS12/Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"


# British Garden Birds Side1 - PAL CAV - 35 frames at VBI 15000
ldf_file="../../ld-decode-stacking/pal/cav/British-Garden-Birds_DS1_Side1_VBI15000.ldf"
temp_output="BritishGardenBirds_DS1_S1_temp"
ld-decode --PAL --start 7499 --length 35 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS1/British_Garden_Birds_DD86-DS1_Side1_20200118_CAV_PAL_00001-53450.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/cav/British-Garden-Birds_DS2_Side1_VBI15000.ldf"
temp_output="BritishGardenBirds_DS2_S1_temp"
ld-decode --PAL --start 7498 --length 35 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS2/British_Garden_Birds_DD86-DS2_Side1_20210104_CAV_PAL_00001-53450.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/cav/British-Garden-Birds_DS3_Side1_VBI15000.ldf"
temp_output="BritishGardenBirds_DS3_S1_temp"
ld-decode --PAL --start 7499 --length 35 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS3/British_Garden_Birds_DD86-DS3_Side1_20210610_CAV_PAL_00001-53450.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/cav/British-Garden-Birds_DS4_Side1_VBI15000.ldf"
temp_output="BritishGardenBirds_DS4_S1_temp"
ld-decode --PAL --start 7499 --length 35 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS4/British_Garden_Birds_DD86-DS4_Side1_20220402_CAV_PAL_00001-53450.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"


# British Garden Birds Side2 - PAL CAV - 35 frames at VBI 15000
ldf_file="../../ld-decode-stacking/pal/cav/British-Garden-Birds_DS1_Side2_VBI15000.ldf"
temp_output="BritishGardenBirds_DS1_S2_temp"
ld-decode --PAL --start 7500 --length 35 --write-test-ldf "$ldf_file" /home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS1/British_Garden_Birds_DD86-DS1_Side2_20200118_CAV_PAL_00001-53444.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/cav/British-Garden-Birds_DS2_Side2_VBI15000.ldf"
temp_output="BritishGardenBirds_DS2_S2_temp"
ld-decode --PAL --start 7499 --length 35 --write-test-ldf "$ldf_file" /home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS2/British_Garden_Birds_DD86-DS2_Side2_20210104_CAV_PAL_00001-53474.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/cav/British-Garden-Birds_DS3_Side2_VBI15000.ldf"
temp_output="BritishGardenBirds_DS3_S2_temp"
ld-decode --PAL --start 7499 --length 35 --write-test-ldf "$ldf_file" /home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS3/British_Garden_Birds_DD86-DS3_Side2_20210610_CAV_PAL_00001-53474.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"

ldf_file="../../ld-decode-stacking/pal/cav/British-Garden-Birds_DS4_Side2_VBI15000.ldf"
temp_output="BritishGardenBirds_DS4_S2_temp"
ld-decode --PAL --start 7499 --length 35 --write-test-ldf "$ldf_file" /home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS4/British_Garden_Birds_DD86-DS4_Side2_20220402_CAV_PAL_00001-53474.ldf "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json" "$temp_output.efm" "$temp_output.pcm"


echo 'All stacking test .ldf files generated successfully!'
