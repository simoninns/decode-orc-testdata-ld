#!/bin/bash

# Activate venv
export VDIR=~/Coding/github/ld-decode-venv
source $VDIR/bin/activate

echo "========================================"
echo "Generating ld-decode test .ldf files"
echo "20 diverse discs selected"
echo "========================================"
echo ""

echo "=== NTSC CAV Decodes (5 discs) ==="
echo "[1] Generating NTSC CAV test LDF: Pioneer_GGV1069_CAV_NTSC_side1_dup1_2019-09-12_21-11-38_pos3584..."
ldf_file="../../ld-decode/ntsc/cav/Pioneer_GGV1069_CAV_NTSC_side1_dup1_2019-09-12_21-11-38_pos3584.ldf"
temp_output="/tmp/Pioneer_GGV1069_CAV_NTSC_side1_dup1_2019-09-12_21-11-38_pos3584_temp"
ld-decode --NTSC --start 3584 --length 58 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/Calibration/GGV1069/Pioneer GGV1069_CAV_NTSC_side1_dup1_2019-09-12_21-11-38.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json"

echo "[2] Generating NTSC CAV test LDF: Dragons-Lair_DS1_Side1_20191230_CAV_NTSC_pos3103..."
ldf_file="../../ld-decode/ntsc/cav/Dragons-Lair_DS1_Side1_20191230_CAV_NTSC_pos3103.ldf"
temp_output="/tmp/Dragons-Lair_DS1_Side1_20191230_CAV_NTSC_pos3103_temp"
ld-decode --NTSC --start 3103 --length 48 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_DS1_Side1_20191230_CAV_NTSC.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json"

echo "[3] Generating NTSC CAV test LDF: FIREFOX_CAV_NTSC_side1_2020-08-15_23-46-02_pos29518..."
ldf_file="../../ld-decode/ntsc/cav/FIREFOX_CAV_NTSC_side1_2020-08-15_23-46-02_pos29518.ldf"
temp_output="/tmp/FIREFOX_CAV_NTSC_side1_2020-08-15_23-46-02_pos29518_temp"
ld-decode --NTSC --start 29518 --length 52 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/Arcade/Firefox/FIREFOX_CAV_NTSC_side1_2020-08-15_23-46-02.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json"

echo "[4] Generating NTSC CAV test LDF: National_Gallery_of_Art_CAV_NTSC_side1__2020-01-19_20-17-39_pos10520..."
ldf_file="../../ld-decode/ntsc/cav/National_Gallery_of_Art_CAV_NTSC_side1__2020-01-19_20-17-39_pos10520.ldf"
temp_output="/tmp/National_Gallery_of_Art_CAV_NTSC_side1__2020-01-19_20-17-39_pos10520_temp"
ld-decode --NTSC --start 10520 --length 54 --write-test-ldf "$ldf_file" "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/National Gallery of Art/National Gallery of Art_CAV_NTSC_side1__2020-01-19_20-17-39.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json"

echo "[5] Generating NTSC CAV test LDF: CheckingDolbySurround_CAV_NTSC_side1_2021-01-04_22-08-00_pos1248..."
ldf_file="../../ld-decode/ntsc/cav/CheckingDolbySurround_CAV_NTSC_side1_2021-01-04_22-08-00_pos1248.ldf"
temp_output="/tmp/CheckingDolbySurround_CAV_NTSC_side1_2021-01-04_22-08-00_pos1248_temp"
ld-decode --NTSC --start 1248 --length 49 --write-test-ldf "$ldf_file" "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/CheckingDolbySurround/CheckingDolbySurround_CAV_NTSC_side1_2021-01-04_22-08-00.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json"

echo "=== NTSC CLV Decodes (2 discs) ==="
echo "[6] Generating NTSC CLV test LDF: Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04_pos29846..."
ldf_file="../../ld-decode/ntsc/clv/Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04_pos29846.ldf"
temp_output="/tmp/Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04_pos29846_temp"
ld-decode --NTSC --start 29846 --length 54 --write-test-ldf "$ldf_file" "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Cinderella Japan/Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json"

echo "[7] Generating NTSC CLV test LDF: Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19_pos8483..."
ldf_file="../../ld-decode/ntsc/clv/Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19_pos8483.ldf"
temp_output="/tmp/Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19_pos8483_temp"
ld-decode --NTSC --start 8483 --length 57 --write-test-ldf "$ldf_file" "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Bambi Japan/Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json"

echo "=== PAL CAV Decodes (6 discs) ==="
echo "[8] Generating PAL CAV test LDF: British_Garden_Birds_DD86-DS2_Side1_20210104_CAV_PAL_00001-53450_pos23732..."
ldf_file="../../ld-decode/pal/cav/British_Garden_Birds_DD86-DS2_Side1_20210104_CAV_PAL_00001-53450_pos23732.ldf"
temp_output="/tmp/British_Garden_Birds_DD86-DS2_Side1_20210104_CAV_PAL_00001-53450_pos23732_temp"
ld-decode --PAL --start 23732 --length 32 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS2/British_Garden_Birds_DD86-DS2_Side1_20210104_CAV_PAL_00001-53450.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json"

echo "[9] Generating PAL CAV test LDF: EcoDisc_DD86-DS1_Side2_20200101_CAV_PAL_00001-54000_pos12545..."
ldf_file="../../ld-decode/pal/cav/EcoDisc_DD86-DS1_Side2_20200101_CAV_PAL_00001-54000_pos12545.ldf"
temp_output="/tmp/EcoDisc_DD86-DS1_Side2_20200101_CAV_PAL_00001-54000_pos12545_temp"
ld-decode --PAL --start 12545 --length 33 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/BBC_AIV/EcoDisc/EcoDisc_DS1/EcoDisc_DD86-DS1_Side2_20200101_CAV_PAL_00001-54000.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json"

echo "[10] Generating PAL CAV test LDF: Roger_Rabbit_Bonus_Disc_CAV_PAL_side1_2019-12-21_18-22-37_pos5561..."
ldf_file="../../ld-decode/pal/cav/Roger_Rabbit_Bonus_Disc_CAV_PAL_side1_2019-12-21_18-22-37_pos5561.ldf"
temp_output="/tmp/Roger_Rabbit_Bonus_Disc_CAV_PAL_side1_2019-12-21_18-22-37_pos5561_temp"
ld-decode --PAL --start 5561 --length 32 --write-test-ldf "$ldf_file" "/home/sdi/raid/sftp/simoninns/LDV4300D_1/PAL/Roger Rabbit/Roger Rabbit Bonus Disc_CAV_PAL_side1_2019-12-21_18-22-37.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json"

echo "[11] Generating PAL CAV test LDF: Domesday_DD86-DS4_CommunityNorth_20191014_CAV_PAL_00001-54000_pos35455..."
ldf_file="../../ld-decode/pal/cav/Domesday_DD86-DS4_CommunityNorth_20191014_CAV_PAL_00001-54000_pos35455.ldf"
temp_output="/tmp/Domesday_DD86-DS4_CommunityNorth_20191014_CAV_PAL_00001-54000_pos35455_temp"
ld-decode --PAL --start 35455 --length 37 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS4/Domesday_DD86-DS4_CommunityNorth_20191014_CAV_PAL_00001-54000.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json"

echo "[12] Generating PAL CAV test LDF: City-Disc_DD86-DS1_Culture2-Side1_20210101_CAV_PAL_00001-39104_pos10069..."
ldf_file="../../ld-decode/pal/cav/City-Disc_DD86-DS1_Culture2-Side1_20210101_CAV_PAL_00001-39104_pos10069.ldf"
temp_output="/tmp/City-Disc_DD86-DS1_Culture2-Side1_20210101_CAV_PAL_00001-39104_pos10069_temp"
ld-decode --PAL --start 10069 --length 40 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/BBC_AIV/City_Disc/City_Disc_DS1/City-Disc_DD86-DS1_Culture2-Side1_20210101_CAV_PAL_00001-39104.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json"

echo "[13] Generating PAL CAV test LDF: GGV1011_CAV_PAL_side2_DD1_2019-06-12_20-35-19_pos11931..."
ldf_file="../../ld-decode/pal/cav/GGV1011_CAV_PAL_side2_DD1_2019-06-12_20-35-19_pos11931.ldf"
temp_output="/tmp/GGV1011_CAV_PAL_side2_DD1_2019-06-12_20-35-19_pos11931_temp"
ld-decode --PAL --start 11931 --length 36 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/Calibration/GGV1011/GGV1011_CAV_PAL_side2_DD1_2019-06-12_20-35-19.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json"

echo "=== PAL CLV Decodes (7 discs) ==="
echo "[14] Generating PAL CLV test LDF: Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60_pos32794..."
ldf_file="../../ld-decode/pal/clv/Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60_pos32794.ldf"
temp_output="/tmp/Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60_pos32794_temp"
ld-decode --PAL --start 32794 --length 39 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS1/Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json"

echo "[15] Generating PAL CLV test LDF: Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58_pos40241..."
ldf_file="../../ld-decode/pal/clv/Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58_pos40241.ldf"
temp_output="/tmp/Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58_pos40241_temp"
ld-decode --PAL --start 40241 --length 36 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS3/Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json"

echo "[16] Generating PAL CLV test LDF: Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60_pos27347..."
ldf_file="../../ld-decode/pal/clv/Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60_pos27347.ldf"
temp_output="/tmp/Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60_pos27347_temp"
ld-decode --PAL --start 27347 --length 40 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS5/Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json"

echo "[17] Generating PAL CLV test LDF: Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44_pos24772..."
ldf_file="../../ld-decode/pal/clv/Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44_pos24772.ldf"
temp_output="/tmp/Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44_pos24772_temp"
ld-decode --PAL --start 24772 --length 34 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS7/Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json"

echo "[18] Generating PAL CLV test LDF: Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60_pos64678..."
ldf_file="../../ld-decode/pal/clv/Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60_pos64678.ldf"
temp_output="/tmp/Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60_pos64678_temp"
ld-decode --PAL --start 64678 --length 31 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS10/Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json"

echo "[19] Generating PAL CLV test LDF: Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60_pos84199..."
ldf_file="../../ld-decode/pal/clv/Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60_pos84199.ldf"
temp_output="/tmp/Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60_pos84199_temp"
ld-decode --PAL --start 84199 --length 39 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS12/Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json"

echo "[20] Generating PAL CLV test LDF: DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49_pos5277..."
ldf_file="../../ld-decode/pal/clv/DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49_pos5277.ldf"
temp_output="/tmp/DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49_pos5277_temp"
ld-decode --PAL --start 5277 --length 31 --write-test-ldf "$ldf_file" "/home/sdi/raid/library/BBC_AIV/Test_Pressings/TP06/DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49.ldf" "$temp_output" && rm -f "$temp_output.tbc" "$temp_output.tbc.json"

echo ""
echo "======================================="
echo "Generated $decode_count decode commands"
echo "======================================="
