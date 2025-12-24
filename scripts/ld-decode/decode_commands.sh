#!/bin/bash

# Activate venv
export VDIR=~/Coding/github/ld-decode-venv
source $VDIR/bin/activate

echo "========================================"
echo "Generating ld-decode test files"
echo "========================================"
echo ""

echo "=== NTSC CAV Decodes (1-2 per disc) ==="
echo "[1] Decoding NTSC CAV: Pioneer_GGV1069_CAV_NTSC_side1_dup1_2019-09-12_21-11-38_pos9639..."
ld-decode --NTSC --start 9639 --length 52 "/home/sdi/raid/library/Calibration/GGV1069/Pioneer GGV1069_CAV_NTSC_side1_dup1_2019-09-12_21-11-38.ldf" "../../ld-decode/ntsc/cav/Pioneer_GGV1069_CAV_NTSC_side1_dup1_2019-09-12_21-11-38_pos9639"

echo "[2] Decoding NTSC CAV: Dragons-Lair_DS1_Side1_20191230_CAV_NTSC_pos30680..."
ld-decode --NTSC --start 30680 --length 51 "/home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_DS1_Side1_20191230_CAV_NTSC.ldf" "../../ld-decode/ntsc/cav/Dragons-Lair_DS1_Side1_20191230_CAV_NTSC_pos30680"

echo "[3] Decoding NTSC CAV: Dragons-Lair_DS2_Side1_20191230_CAV_NTSC_pos3067..."
ld-decode --NTSC --start 3067 --length 49 "/home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_DS2_Side1_20191230_CAV_NTSC.ldf" "../../ld-decode/ntsc/cav/Dragons-Lair_DS2_Side1_20191230_CAV_NTSC_pos3067"

echo "[4] Decoding NTSC CAV: Dragons-Lair_DS2_Side1_20191230_CAV_NTSC_pos19655..."
ld-decode --NTSC --start 19655 --length 48 "/home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_DS2_Side1_20191230_CAV_NTSC.ldf" "../../ld-decode/ntsc/cav/Dragons-Lair_DS2_Side1_20191230_CAV_NTSC_pos19655"

echo "[5] Decoding NTSC CAV: Dragons-Lair_DS4_Side1_20191230_CAV_NTSC_pos28583..."
ld-decode --NTSC --start 28583 --length 53 "/home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_DS4_Side1_20191230_CAV_NTSC.ldf" "../../ld-decode/ntsc/cav/Dragons-Lair_DS4_Side1_20191230_CAV_NTSC_pos28583"

echo "[6] Decoding NTSC CAV: Dragons-Lair_DS4_Side1_20191230_CAV_NTSC_pos35935..."
ld-decode --NTSC --start 35935 --length 58 "/home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_DS4_Side1_20191230_CAV_NTSC.ldf" "../../ld-decode/ntsc/cav/Dragons-Lair_DS4_Side1_20191230_CAV_NTSC_pos35935"

echo "[7] Decoding NTSC CAV: Dragons-Lair_DS5_Side1_20191230_CAV_NTSC_pos1000..."
ld-decode --NTSC --start 1000 --length 58 "/home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_DS5_Side1_20191230_CAV_NTSC.ldf" "../../ld-decode/ntsc/cav/Dragons-Lair_DS5_Side1_20191230_CAV_NTSC_pos1000"

echo "[8] Decoding NTSC CAV: FIREFOX_CAV_NTSC_side1_2020-08-15_23-46-02_pos43187..."
ld-decode --NTSC --start 43187 --length 53 "/home/sdi/raid/library/Arcade/Firefox/FIREFOX_CAV_NTSC_side1_2020-08-15_23-46-02.ldf" "../../ld-decode/ntsc/cav/FIREFOX_CAV_NTSC_side1_2020-08-15_23-46-02_pos43187"

echo "[9] Decoding NTSC CAV: National_Gallery_of_Art_CAV_NTSC_side1__2020-01-19_20-17-39_pos30976..."
ld-decode --NTSC --start 30976 --length 56 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/National Gallery of Art/National Gallery of Art_CAV_NTSC_side1__2020-01-19_20-17-39.ldf" "../../ld-decode/ntsc/cav/National_Gallery_of_Art_CAV_NTSC_side1__2020-01-19_20-17-39_pos30976"

echo "[10] Decoding NTSC CAV: National_Gallery_of_Art_CAV_NTSC_side2__2020-01-19_20-46-47_pos2132..."
ld-decode --NTSC --start 2132 --length 51 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/National Gallery of Art/National Gallery of Art_CAV_NTSC_side2__2020-01-19_20-46-47.ldf" "../../ld-decode/ntsc/cav/National_Gallery_of_Art_CAV_NTSC_side2__2020-01-19_20-46-47_pos2132"

echo "[11] Decoding NTSC CAV: National_Gallery_of_Art_CAV_NTSC_side2__2020-01-19_20-46-47_pos31270..."
ld-decode --NTSC --start 31270 --length 53 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/National Gallery of Art/National Gallery of Art_CAV_NTSC_side2__2020-01-19_20-46-47.ldf" "../../ld-decode/ntsc/cav/National_Gallery_of_Art_CAV_NTSC_side2__2020-01-19_20-46-47_pos31270"

echo "[12] Decoding NTSC CAV: CheckingDolbySurround_CAV_NTSC_side1_2021-01-04_22-08-00_pos14313..."
ld-decode --NTSC --start 14313 --length 54 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/CheckingDolbySurround/CheckingDolbySurround_CAV_NTSC_side1_2021-01-04_22-08-00.ldf" "../../ld-decode/ntsc/cav/CheckingDolbySurround_CAV_NTSC_side1_2021-01-04_22-08-00_pos14313"

echo "[13] Decoding NTSC CAV: CheckingDolbySurround_CAV_NTSC_side1_2021-01-04_22-08-00_pos35598..."
ld-decode --NTSC --start 35598 --length 49 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/CheckingDolbySurround/CheckingDolbySurround_CAV_NTSC_side1_2021-01-04_22-08-00.ldf" "../../ld-decode/ntsc/cav/CheckingDolbySurround_CAV_NTSC_side1_2021-01-04_22-08-00_pos35598"

echo "[14] Decoding NTSC CAV: Pioneer_GGV1069_CAV_NTSC_side1_dup1_2020-07-08_17-12-46_pos16811..."
ld-decode --NTSC --start 16811 --length 57 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Calibration Discs/Pioneer_GGV1069_CAV_NTSC_side1_dup1_2020-07-08_17-12-46.ldf" "../../ld-decode/ntsc/cav/Pioneer_GGV1069_CAV_NTSC_side1_dup1_2020-07-08_17-12-46_pos16811"

echo "[15] Decoding NTSC CAV: Apple_Visual_Almanac_DD86-DS1_SideA_20200119_CAV_NTSC_00001-50683_pos5665..."
ld-decode --NTSC --start 5665 --length 48 "/home/sdi/raid/library/Interactive_Video/Apple_Visual_Almanac/Apple_Visual_Almanac_DS1/Apple_Visual_Almanac_DD86-DS1_SideA_20200119_CAV_NTSC_00001-50683.ldf" "../../ld-decode/ntsc/cav/Apple_Visual_Almanac_DD86-DS1_SideA_20200119_CAV_NTSC_00001-50683_pos5665"

echo "[16] Decoding NTSC CAV: Apple_Visual_Almanac_DD86-DS1_SideA_20200119_CAV_NTSC_00001-50683_pos33560..."
ld-decode --NTSC --start 33560 --length 58 "/home/sdi/raid/library/Interactive_Video/Apple_Visual_Almanac/Apple_Visual_Almanac_DS1/Apple_Visual_Almanac_DD86-DS1_SideA_20200119_CAV_NTSC_00001-50683.ldf" "../../ld-decode/ntsc/cav/Apple_Visual_Almanac_DD86-DS1_SideA_20200119_CAV_NTSC_00001-50683_pos33560"

echo "[17] Decoding NTSC CAV: Apple_Visual_Almanac_DD86-DS3_SideB_20210106_CAV_NTSC_00001-53361_pos33356..."
ld-decode --NTSC --start 33356 --length 48 "/home/sdi/raid/library/Interactive_Video/Apple_Visual_Almanac/Apple_Visual_Almanac_DS3/Apple_Visual_Almanac_DD86-DS3_SideB_20210106_CAV_NTSC_00001-53361.ldf" "../../ld-decode/ntsc/cav/Apple_Visual_Almanac_DD86-DS3_SideB_20210106_CAV_NTSC_00001-53361_pos33356"

echo "[18] Decoding NTSC CAV: Apple_Visual_Almanac_DD86-DS2_SideA_20190205_CAV_NTSC_00001-50683_pos36986..."
ld-decode --NTSC --start 36986 --length 58 "/home/sdi/raid/library/Interactive_Video/Apple_Visual_Almanac/Apple_Visual_Almanac_DS2/Apple_Visual_Almanac_DD86-DS2_SideA_20190205_CAV_NTSC_00001-50683.ldf" "../../ld-decode/ntsc/cav/Apple_Visual_Almanac_DD86-DS2_SideA_20190205_CAV_NTSC_00001-50683_pos36986"

echo "[19] Decoding NTSC CAV: Apple_Visual_Almanac_DD86-DS1_SideB_20200119_CAV_NTSC_00001-53361_pos43408..."
ld-decode --NTSC --start 43408 --length 57 "/home/sdi/raid/library/Interactive_Video/Apple_Visual_Almanac/Apple_Visual_Almanac_DS1/Apple_Visual_Almanac_DD86-DS1_SideB_20200119_CAV_NTSC_00001-53361.ldf" "../../ld-decode/ntsc/cav/Apple_Visual_Almanac_DD86-DS1_SideB_20200119_CAV_NTSC_00001-53361_pos43408"

echo "[20] Decoding NTSC CAV: Apple_Visual_Almanac_DD86-DS3_SideA_20210106_CAV_NTSC_00001-50683_pos26013..."
ld-decode --NTSC --start 26013 --length 57 "/home/sdi/raid/library/Interactive_Video/Apple_Visual_Almanac/Apple_Visual_Almanac_DS3/Apple_Visual_Almanac_DD86-DS3_SideA_20210106_CAV_NTSC_00001-50683.ldf" "../../ld-decode/ntsc/cav/Apple_Visual_Almanac_DD86-DS3_SideA_20210106_CAV_NTSC_00001-50683_pos26013"

echo "=== NTSC CLV Decodes (5-6 per disc, MORE since fewer files) ==="
echo "[21] Decoding NTSC CLV: Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04_pos5740..."
ld-decode --NTSC --start 5740 --length 51 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Cinderella Japan/Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04.ldf" "../../ld-decode/ntsc/clv/Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04_pos5740"

echo "[22] Decoding NTSC CLV: Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04_pos55347..."
ld-decode --NTSC --start 55347 --length 52 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Cinderella Japan/Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04.ldf" "../../ld-decode/ntsc/clv/Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04_pos55347"

echo "[23] Decoding NTSC CLV: Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04_pos2102..."
ld-decode --NTSC --start 2102 --length 57 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Cinderella Japan/Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04.ldf" "../../ld-decode/ntsc/clv/Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04_pos2102"

echo "[24] Decoding NTSC CLV: Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04_pos20514..."
ld-decode --NTSC --start 20514 --length 58 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Cinderella Japan/Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04.ldf" "../../ld-decode/ntsc/clv/Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04_pos20514"

echo "[25] Decoding NTSC CLV: Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04_pos69623..."
ld-decode --NTSC --start 69623 --length 52 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Cinderella Japan/Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04.ldf" "../../ld-decode/ntsc/clv/Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04_pos69623"

echo "[26] Decoding NTSC CLV: Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23_pos44665..."
ld-decode --NTSC --start 44665 --length 52 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Cinderella Japan/Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23.ldf" "../../ld-decode/ntsc/clv/Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23_pos44665"

echo "[27] Decoding NTSC CLV: Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23_pos49561..."
ld-decode --NTSC --start 49561 --length 53 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Cinderella Japan/Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23.ldf" "../../ld-decode/ntsc/clv/Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23_pos49561"

echo "[28] Decoding NTSC CLV: Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23_pos46654..."
ld-decode --NTSC --start 46654 --length 50 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Cinderella Japan/Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23.ldf" "../../ld-decode/ntsc/clv/Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23_pos46654"

echo "[29] Decoding NTSC CLV: Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23_pos1450..."
ld-decode --NTSC --start 1450 --length 49 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Cinderella Japan/Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23.ldf" "../../ld-decode/ntsc/clv/Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23_pos1450"

echo "[30] Decoding NTSC CLV: Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23_pos34333..."
ld-decode --NTSC --start 34333 --length 56 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Cinderella Japan/Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23.ldf" "../../ld-decode/ntsc/clv/Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23_pos34333"

echo "[31] Decoding NTSC CLV: Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23_pos9967..."
ld-decode --NTSC --start 9967 --length 48 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Cinderella Japan/Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23.ldf" "../../ld-decode/ntsc/clv/Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23_pos9967"

echo "[32] Decoding NTSC CLV: Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19_pos50556..."
ld-decode --NTSC --start 50556 --length 54 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Bambi Japan/Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19.ldf" "../../ld-decode/ntsc/clv/Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19_pos50556"

echo "[33] Decoding NTSC CLV: Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19_pos54295..."
ld-decode --NTSC --start 54295 --length 51 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Bambi Japan/Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19.ldf" "../../ld-decode/ntsc/clv/Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19_pos54295"

echo "[34] Decoding NTSC CLV: Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19_pos22853..."
ld-decode --NTSC --start 22853 --length 54 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Bambi Japan/Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19.ldf" "../../ld-decode/ntsc/clv/Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19_pos22853"

echo "[35] Decoding NTSC CLV: Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19_pos7057..."
ld-decode --NTSC --start 7057 --length 55 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Bambi Japan/Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19.ldf" "../../ld-decode/ntsc/clv/Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19_pos7057"

echo "[36] Decoding NTSC CLV: Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19_pos51043..."
ld-decode --NTSC --start 51043 --length 56 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Bambi Japan/Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19.ldf" "../../ld-decode/ntsc/clv/Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19_pos51043"

echo "[37] Decoding NTSC CLV: Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20_pos54457..."
ld-decode --NTSC --start 54457 --length 57 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Bambi Japan/Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20.ldf" "../../ld-decode/ntsc/clv/Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20_pos54457"

echo "[38] Decoding NTSC CLV: Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20_pos42598..."
ld-decode --NTSC --start 42598 --length 52 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Bambi Japan/Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20.ldf" "../../ld-decode/ntsc/clv/Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20_pos42598"

echo "[39] Decoding NTSC CLV: Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20_pos31795..."
ld-decode --NTSC --start 31795 --length 57 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Bambi Japan/Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20.ldf" "../../ld-decode/ntsc/clv/Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20_pos31795"

echo "[40] Decoding NTSC CLV: Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20_pos23693..."
ld-decode --NTSC --start 23693 --length 55 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Bambi Japan/Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20.ldf" "../../ld-decode/ntsc/clv/Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20_pos23693"

echo "[41] Decoding NTSC CLV: Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20_pos12934..."
ld-decode --NTSC --start 12934 --length 49 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Bambi Japan/Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20.ldf" "../../ld-decode/ntsc/clv/Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20_pos12934"

echo "=== PAL CAV Decodes (1-2 per disc) ==="
echo "[42] Decoding PAL CAV: British_Garden_Birds_DD86-DS2_Side1_20210104_CAV_PAL_00001-53450_pos40305..."
ld-decode --PAL --start 40305 --length 38 "/home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS2/British_Garden_Birds_DD86-DS2_Side1_20210104_CAV_PAL_00001-53450.ldf" "../../ld-decode/pal/cav/British_Garden_Birds_DD86-DS2_Side1_20210104_CAV_PAL_00001-53450_pos40305"

echo "[43] Decoding PAL CAV: British_Garden_Birds_DD86-DS2_Side1_20210104_CAV_PAL_00001-53450_pos42004..."
ld-decode --PAL --start 42004 --length 35 "/home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS2/British_Garden_Birds_DD86-DS2_Side1_20210104_CAV_PAL_00001-53450.ldf" "../../ld-decode/pal/cav/British_Garden_Birds_DD86-DS2_Side1_20210104_CAV_PAL_00001-53450_pos42004"

echo "[44] Decoding PAL CAV: The_World_the_UN_and_You_CAV_PAL_Disc5_2019-09-15_20-56-00_pos2409..."
ld-decode --PAL --start 2409 --length 35 "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc5_2019-09-15_20-56-00.ldf" "../../ld-decode/pal/cav/The_World_the_UN_and_You_CAV_PAL_Disc5_2019-09-15_20-56-00_pos2409"

echo "[45] Decoding PAL CAV: Domesday_DD86-DS11_NationalA_NP_20200830_CAV_PAL_00001-51000_pos19995..."
ld-decode --PAL --start 19995 --length 38 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS11/Domesday_DD86-DS11_NationalA_NP_20200830_CAV_PAL_00001-51000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS11_NationalA_NP_20200830_CAV_PAL_00001-51000_pos19995"

echo "[46] Decoding PAL CAV: Domesday_DD86-DS11_NationalA_NP_20200830_CAV_PAL_00001-51000_pos29493..."
ld-decode --PAL --start 29493 --length 40 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS11/Domesday_DD86-DS11_NationalA_NP_20200830_CAV_PAL_00001-51000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS11_NationalA_NP_20200830_CAV_PAL_00001-51000_pos29493"

echo "[47] Decoding PAL CAV: Countryside_DD86-DS3_Side1_20200803_CAV_PAL_00001-54085_pos25433..."
ld-decode --PAL --start 25433 --length 37 "/home/sdi/raid/library/BBC_AIV/Countryside/Countryside_DS3/Countryside_DD86-DS3_Side1_20200803_CAV_PAL_00001-54085.ldf" "../../ld-decode/pal/cav/Countryside_DD86-DS3_Side1_20200803_CAV_PAL_00001-54085_pos25433"

echo "[48] Decoding PAL CAV: Domesday_DD86-DS3_CommunityNorth_20191014_CAV_PAL_00001-54000_pos50341..."
ld-decode --PAL --start 50341 --length 31 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS3/Domesday_DD86-DS3_CommunityNorth_20191014_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS3_CommunityNorth_20191014_CAV_PAL_00001-54000_pos50341"

echo "[49] Decoding PAL CAV: City-Disc_DD86-DS1_Culture1-Side2_20210101_CAV_PAL_00001-44003_pos17480..."
ld-decode --PAL --start 17480 --length 32 "/home/sdi/raid/library/BBC_AIV/City_Disc/City_Disc_DS1/City-Disc_DD86-DS1_Culture1-Side2_20210101_CAV_PAL_00001-44003.ldf" "../../ld-decode/pal/cav/City-Disc_DD86-DS1_Culture1-Side2_20210101_CAV_PAL_00001-44003_pos17480"

echo "[50] Decoding PAL CAV: City-Disc_DD86-DS1_Culture1-Side2_20210101_CAV_PAL_00001-44003_pos28183..."
ld-decode --PAL --start 28183 --length 40 "/home/sdi/raid/library/BBC_AIV/City_Disc/City_Disc_DS1/City-Disc_DD86-DS1_Culture1-Side2_20210101_CAV_PAL_00001-44003.ldf" "../../ld-decode/pal/cav/City-Disc_DD86-DS1_Culture1-Side2_20210101_CAV_PAL_00001-44003_pos28183"

echo "[51] Decoding PAL CAV: City-Disc_DD86-DS2_Financial2-Side1_20210101_CAV_PAL_00001-44611_pos22833..."
ld-decode --PAL --start 22833 --length 35 "/home/sdi/raid/library/BBC_AIV/City_Disc/City_Disc_DS2/City-Disc_DD86-DS2_Financial2-Side1_20210101_CAV_PAL_00001-44611.ldf" "../../ld-decode/pal/cav/City-Disc_DD86-DS2_Financial2-Side1_20210101_CAV_PAL_00001-44611_pos22833"

echo "[52] Decoding PAL CAV: British_Garden_Birds_DD86-DS3_Side2_20210610_CAV_PAL_00001-53474_pos44324..."
ld-decode --PAL --start 44324 --length 31 "/home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS3/British_Garden_Birds_DD86-DS3_Side2_20210610_CAV_PAL_00001-53474.ldf" "../../ld-decode/pal/cav/British_Garden_Birds_DD86-DS3_Side2_20210610_CAV_PAL_00001-53474_pos44324"

echo "[53] Decoding PAL CAV: British_Garden_Birds_DD86-DS3_Side2_20210610_CAV_PAL_00001-53474_pos45277..."
ld-decode --PAL --start 45277 --length 40 "/home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS3/British_Garden_Birds_DD86-DS3_Side2_20210610_CAV_PAL_00001-53474.ldf" "../../ld-decode/pal/cav/British_Garden_Birds_DD86-DS3_Side2_20210610_CAV_PAL_00001-53474_pos45277"

echo "[54] Decoding PAL CAV: The_World_the_UN_and_You_CAV_PAL_Disc3_2019-09-15_19-36-50_pos23943..."
ld-decode --PAL --start 23943 --length 30 "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc3_2019-09-15_19-36-50.ldf" "../../ld-decode/pal/cav/The_World_the_UN_and_You_CAV_PAL_Disc3_2019-09-15_19-36-50_pos23943"

echo "[55] Decoding PAL CAV: Domesday_DD86-DS6_NationalA_PP_20200803_CAV_PAL_00001-54000_pos22533..."
ld-decode --PAL --start 22533 --length 35 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS6/Domesday_DD86-DS6_NationalA_PP_20200803_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS6_NationalA_PP_20200803_CAV_PAL_00001-54000_pos22533"

echo "[56] Decoding PAL CAV: Domesday_DD86-DS12_CommunitySouth_20220710_CAV_PAL_00001-54000_pos45470..."
ld-decode --PAL --start 45470 --length 38 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS12/Domesday_DD86-DS12_CommunitySouth_20220710_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS12_CommunitySouth_20220710_CAV_PAL_00001-54000_pos45470"

echo "[57] Decoding PAL CAV: British_Garden_Birds_DD86-DS1_Side2_20200118_CAV_PAL_00001-53444_pos26824..."
ld-decode --PAL --start 26824 --length 34 "/home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS1/British_Garden_Birds_DD86-DS1_Side2_20200118_CAV_PAL_00001-53444.ldf" "../../ld-decode/pal/cav/British_Garden_Birds_DD86-DS1_Side2_20200118_CAV_PAL_00001-53444_pos26824"

echo "[58] Decoding PAL CAV: Domesday_DD86-DS2_NationalA_PP_20191014_CAV_PAL_00001-54000_pos26615..."
ld-decode --PAL --start 26615 --length 31 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS2/Domesday_DD86-DS2_NationalA_PP_20191014_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS2_NationalA_PP_20191014_CAV_PAL_00001-54000_pos26615"

echo "[59] Decoding PAL CAV: Domesday_DD86-DS2_NationalA_PP_20191014_CAV_PAL_00001-54000_pos43874..."
ld-decode --PAL --start 43874 --length 30 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS2/Domesday_DD86-DS2_NationalA_PP_20191014_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS2_NationalA_PP_20191014_CAV_PAL_00001-54000_pos43874"

echo "[60] Decoding PAL CAV: Domesday_DD86-DS3_CommunitySouth_20191014_CAV_PAL_00001-53040_pos32101..."
ld-decode --PAL --start 32101 --length 40 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS3/Domesday_DD86-DS3_CommunitySouth_20191014_CAV_PAL_00001-53040.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS3_CommunitySouth_20191014_CAV_PAL_00001-53040_pos32101"

echo "[61] Decoding PAL CAV: British_Garden_Birds_DD86-DS3_Side1_20210610_CAV_PAL_00001-53450_pos42698..."
ld-decode --PAL --start 42698 --length 34 "/home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS3/British_Garden_Birds_DD86-DS3_Side1_20210610_CAV_PAL_00001-53450.ldf" "../../ld-decode/pal/cav/British_Garden_Birds_DD86-DS3_Side1_20210610_CAV_PAL_00001-53450_pos42698"

echo "[62] Decoding PAL CAV: Countryside_DD86-DS4_Side2_20210106_CAV_PAL_00001-51000_pos11938..."
ld-decode --PAL --start 11938 --length 31 "/home/sdi/raid/library/BBC_AIV/Countryside/Countryside_DS4/Countryside_DD86-DS4_Side2_20210106_CAV_PAL_00001-51000.ldf" "../../ld-decode/pal/cav/Countryside_DD86-DS4_Side2_20210106_CAV_PAL_00001-51000_pos11938"

echo "[63] Decoding PAL CAV: Countryside_DD86-DS4_Side2_20210106_CAV_PAL_00001-51000_pos30953..."
ld-decode --PAL --start 30953 --length 34 "/home/sdi/raid/library/BBC_AIV/Countryside/Countryside_DS4/Countryside_DD86-DS4_Side2_20210106_CAV_PAL_00001-51000.ldf" "../../ld-decode/pal/cav/Countryside_DD86-DS4_Side2_20210106_CAV_PAL_00001-51000_pos30953"

echo "[64] Decoding PAL CAV: DD_TP06C_Cpy11_CAV_PAL_side1_Armstrong_2020-08-04_11-17-30_pos3437..."
ld-decode --PAL --start 3437 --length 31 "/home/sdi/raid/library/BBC_AIV/Test_Pressings/TP06/DD_TP06C_Cpy11_CAV_PAL_side1_Armstrong_2020-08-04_11-17-30.ldf" "../../ld-decode/pal/cav/DD_TP06C_Cpy11_CAV_PAL_side1_Armstrong_2020-08-04_11-17-30_pos3437"

echo "[65] Decoding PAL CAV: DD_TP06C_Cpy11_CAV_PAL_side1_Armstrong_2020-08-04_11-17-30_pos4875..."
ld-decode --PAL --start 4875 --length 38 "/home/sdi/raid/library/BBC_AIV/Test_Pressings/TP06/DD_TP06C_Cpy11_CAV_PAL_side1_Armstrong_2020-08-04_11-17-30.ldf" "../../ld-decode/pal/cav/DD_TP06C_Cpy11_CAV_PAL_side1_Armstrong_2020-08-04_11-17-30_pos4875"

echo "[66] Decoding PAL CAV: EcoDisc_DD86-DS1_Side2_20200101_CAV_PAL_00001-54000_pos18500..."
ld-decode --PAL --start 18500 --length 39 "/home/sdi/raid/library/BBC_AIV/EcoDisc/EcoDisc_DS1/EcoDisc_DD86-DS1_Side2_20200101_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/EcoDisc_DD86-DS1_Side2_20200101_CAV_PAL_00001-54000_pos18500"

echo "[67] Decoding PAL CAV: Roger_Rabbit_Bonus_Disc_CAV_PAL_side1_2019-12-21_18-22-37_pos22218..."
ld-decode --PAL --start 22218 --length 37 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/PAL/Roger Rabbit/Roger Rabbit Bonus Disc_CAV_PAL_side1_2019-12-21_18-22-37.ldf" "../../ld-decode/pal/cav/Roger_Rabbit_Bonus_Disc_CAV_PAL_side1_2019-12-21_18-22-37_pos22218"

echo "[68] Decoding PAL CAV: Roger_Rabbit_Bonus_Disc_CAV_PAL_side1_2019-12-21_18-22-37_pos24678..."
ld-decode --PAL --start 24678 --length 31 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/PAL/Roger Rabbit/Roger Rabbit Bonus Disc_CAV_PAL_side1_2019-12-21_18-22-37.ldf" "../../ld-decode/pal/cav/Roger_Rabbit_Bonus_Disc_CAV_PAL_side1_2019-12-21_18-22-37_pos24678"

echo "[69] Decoding PAL CAV: Domesday_DD86-DS4_CommunityNorth_20191014_CAV_PAL_00001-54000_pos20334..."
ld-decode --PAL --start 20334 --length 35 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS4/Domesday_DD86-DS4_CommunityNorth_20191014_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS4_CommunityNorth_20191014_CAV_PAL_00001-54000_pos20334"

echo "[70] Decoding PAL CAV: City-Disc_DD86-DS1_Culture2-Side1_20210101_CAV_PAL_00001-39104_pos9630..."
ld-decode --PAL --start 9630 --length 39 "/home/sdi/raid/library/BBC_AIV/City_Disc/City_Disc_DS1/City-Disc_DD86-DS1_Culture2-Side1_20210101_CAV_PAL_00001-39104.ldf" "../../ld-decode/pal/cav/City-Disc_DD86-DS1_Culture2-Side1_20210101_CAV_PAL_00001-39104_pos9630"

echo "[71] Decoding PAL CAV: City-Disc_DD86-DS1_Culture2-Side1_20210101_CAV_PAL_00001-39104_pos24731..."
ld-decode --PAL --start 24731 --length 38 "/home/sdi/raid/library/BBC_AIV/City_Disc/City_Disc_DS1/City-Disc_DD86-DS1_Culture2-Side1_20210101_CAV_PAL_00001-39104.ldf" "../../ld-decode/pal/cav/City-Disc_DD86-DS1_Culture2-Side1_20210101_CAV_PAL_00001-39104_pos24731"

echo "[72] Decoding PAL CAV: British_Garden_Birds_DD86-DS2_Side2_20210104_CAV_PAL_00001-53474_pos47950..."
ld-decode --PAL --start 47950 --length 33 "/home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS2/British_Garden_Birds_DD86-DS2_Side2_20210104_CAV_PAL_00001-53474.ldf" "../../ld-decode/pal/cav/British_Garden_Birds_DD86-DS2_Side2_20210104_CAV_PAL_00001-53474_pos47950"

echo "[73] Decoding PAL CAV: Domesday_DD86-DS10_NationalA_PP_20200829_CAV_PAL_00001-51594_pos4142..."
ld-decode --PAL --start 4142 --length 39 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS10/Domesday_DD86-DS10_NationalA_PP_20200829_CAV_PAL_00001-51594.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS10_NationalA_PP_20200829_CAV_PAL_00001-51594_pos4142"

echo "[74] Decoding PAL CAV: British_Garden_Birds_DD86-DS4_Side1_20220402_CAV_PAL_00001-53450_pos1071..."
ld-decode --PAL --start 1071 --length 33 "/home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS4/British_Garden_Birds_DD86-DS4_Side1_20220402_CAV_PAL_00001-53450.ldf" "../../ld-decode/pal/cav/British_Garden_Birds_DD86-DS4_Side1_20220402_CAV_PAL_00001-53450_pos1071"

echo "[75] Decoding PAL CAV: City-Disc_DD86-DS2_Culture1-Side1_20210101_CAV_PAL_00001-44003_pos9870..."
ld-decode --PAL --start 9870 --length 35 "/home/sdi/raid/library/BBC_AIV/City_Disc/City_Disc_DS2/City-Disc_DD86-DS2_Culture1-Side1_20210101_CAV_PAL_00001-44003.ldf" "../../ld-decode/pal/cav/City-Disc_DD86-DS2_Culture1-Side1_20210101_CAV_PAL_00001-44003_pos9870"

echo "[76] Decoding PAL CAV: City-Disc_DD86-DS2_Culture1-Side1_20210101_CAV_PAL_00001-44003_pos30877..."
ld-decode --PAL --start 30877 --length 35 "/home/sdi/raid/library/BBC_AIV/City_Disc/City_Disc_DS2/City-Disc_DD86-DS2_Culture1-Side1_20210101_CAV_PAL_00001-44003.ldf" "../../ld-decode/pal/cav/City-Disc_DD86-DS2_Culture1-Side1_20210101_CAV_PAL_00001-44003_pos30877"

echo "[77] Decoding PAL CAV: DD_TP05_CAV_PAL_side1_Armstrong_2020-08-04_12-56-13_pos39277..."
ld-decode --PAL --start 39277 --length 40 "/home/sdi/raid/library/BBC_AIV/Test_Pressings/TP05/DD_TP05_CAV_PAL_side1_Armstrong_2020-08-04_12-56-13.ldf" "../../ld-decode/pal/cav/DD_TP05_CAV_PAL_side1_Armstrong_2020-08-04_12-56-13_pos39277"

echo "[78] Decoding PAL CAV: Domesday_DD86-DS9_NationalA_NP_20200829_CAV_PAL_00001-53000_pos10038..."
ld-decode --PAL --start 10038 --length 32 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS9/Domesday_DD86-DS9_NationalA_NP_20200829_CAV_PAL_00001-53000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS9_NationalA_NP_20200829_CAV_PAL_00001-53000_pos10038"

echo "[79] Decoding PAL CAV: The_World_the_UN_and_You_CAV_PAL_Disc1_2019-09-15_18-27-44_pos30281..."
ld-decode --PAL --start 30281 --length 39 "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc1_2019-09-15_18-27-44.ldf" "../../ld-decode/pal/cav/The_World_the_UN_and_You_CAV_PAL_Disc1_2019-09-15_18-27-44_pos30281"

echo "[80] Decoding PAL CAV: Domesday_DD86-DS12_CommunityNorth_20220710_CAV_PAL_00001-54000_pos16424..."
ld-decode --PAL --start 16424 --length 32 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS12/Domesday_DD86-DS12_CommunityNorth_20220710_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS12_CommunityNorth_20220710_CAV_PAL_00001-54000_pos16424"

echo "[81] Decoding PAL CAV: Domesday_DD86-DS12_CommunityNorth_20220710_CAV_PAL_00001-54000_pos7698..."
ld-decode --PAL --start 7698 --length 32 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS12/Domesday_DD86-DS12_CommunityNorth_20220710_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS12_CommunityNorth_20220710_CAV_PAL_00001-54000_pos7698"

echo "[82] Decoding PAL CAV: City-Disc_DD86-DS2_Culture2-Side1_20210101_CAV_PAL_00001-39104_pos35732..."
ld-decode --PAL --start 35732 --length 31 "/home/sdi/raid/library/BBC_AIV/City_Disc/City_Disc_DS2/City-Disc_DD86-DS2_Culture2-Side1_20210101_CAV_PAL_00001-39104.ldf" "../../ld-decode/pal/cav/City-Disc_DD86-DS2_Culture2-Side1_20210101_CAV_PAL_00001-39104_pos35732"

echo "[83] Decoding PAL CAV: Domesday_DD86-DS4_CommunitySouth_20191014_CAV_PAL_00001-54000_pos40419..."
ld-decode --PAL --start 40419 --length 36 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS4/Domesday_DD86-DS4_CommunitySouth_20191014_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS4_CommunitySouth_20191014_CAV_PAL_00001-54000_pos40419"

echo "[84] Decoding PAL CAV: Domesday_DD86-DS9_CommunitySouth_20200814_CAV_PAL_00001-54000_pos28412..."
ld-decode --PAL --start 28412 --length 34 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS9/Domesday_DD86-DS9_CommunitySouth_20200814_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS9_CommunitySouth_20200814_CAV_PAL_00001-54000_pos28412"

echo "[85] Decoding PAL CAV: Domesday_DD86-DS9_CommunitySouth_20200814_CAV_PAL_00001-54000_pos37333..."
ld-decode --PAL --start 37333 --length 38 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS9/Domesday_DD86-DS9_CommunitySouth_20200814_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS9_CommunitySouth_20200814_CAV_PAL_00001-54000_pos37333"

echo "[86] Decoding PAL CAV: Counter_Intelligence_CAV_PAL_side1_DS2_2019-10-22_16-58-25_pos8797..."
ld-decode --PAL --start 8797 --length 33 "/home/sdi/raid/library/Interactive_Video/Counter_Intelligence/Counter Intelligence_CAV_PAL_side1_DS2_2019-10-22_16-58-25.ldf" "../../ld-decode/pal/cav/Counter_Intelligence_CAV_PAL_side1_DS2_2019-10-22_16-58-25_pos8797"

echo "[87] Decoding PAL CAV: Counter_Intelligence_CAV_PAL_side1_DS2_2019-10-22_16-58-25_pos10291..."
ld-decode --PAL --start 10291 --length 39 "/home/sdi/raid/library/Interactive_Video/Counter_Intelligence/Counter Intelligence_CAV_PAL_side1_DS2_2019-10-22_16-58-25.ldf" "../../ld-decode/pal/cav/Counter_Intelligence_CAV_PAL_side1_DS2_2019-10-22_16-58-25_pos10291"

echo "[88] Decoding PAL CAV: Domesday_DD86-DS9_CommunityNorth_20200814_CAV_PAL_00001-54000_pos35780..."
ld-decode --PAL --start 35780 --length 32 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS9/Domesday_DD86-DS9_CommunityNorth_20200814_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS9_CommunityNorth_20200814_CAV_PAL_00001-54000_pos35780"

echo "[89] Decoding PAL CAV: EcoDisc_DD86-DS3_Side1_20200803_CAV_PAL_00001-54000_pos26352..."
ld-decode --PAL --start 26352 --length 34 "/home/sdi/raid/library/BBC_AIV/EcoDisc/EcoDisc_DS3/EcoDisc_DD86-DS3_Side1_20200803_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/EcoDisc_DD86-DS3_Side1_20200803_CAV_PAL_00001-54000_pos26352"

echo "[90] Decoding PAL CAV: The_World_the_UN_and_You_CAV_PAL_Disc7_2019-09-15_21-59-24_pos13497..."
ld-decode --PAL --start 13497 --length 36 "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc7_2019-09-15_21-59-24.ldf" "../../ld-decode/pal/cav/The_World_the_UN_and_You_CAV_PAL_Disc7_2019-09-15_21-59-24_pos13497"

echo "[91] Decoding PAL CAV: GGV1011_CAV_PAL_side2_DD1_2019-06-12_20-35-19_pos12167..."
ld-decode --PAL --start 12167 --length 33 "/home/sdi/raid/library/Calibration/GGV1011/GGV1011_CAV_PAL_side2_DD1_2019-06-12_20-35-19.ldf" "../../ld-decode/pal/cav/GGV1011_CAV_PAL_side2_DD1_2019-06-12_20-35-19_pos12167"

echo "[92] Decoding PAL CAV: GGV1011_CAV_PAL_side1_DD1_2019-06-12_20-18-21_pos7824..."
ld-decode --PAL --start 7824 --length 35 "/home/sdi/raid/library/Calibration/GGV1011/GGV1011_CAV_PAL_side1_DD1_2019-06-12_20-18-21.ldf" "../../ld-decode/pal/cav/GGV1011_CAV_PAL_side1_DD1_2019-06-12_20-18-21_pos7824"

echo "[93] Decoding PAL CAV: GGV1011_CAV_PAL_side1_DD1_2019-06-12_20-18-21_pos11505..."
ld-decode --PAL --start 11505 --length 36 "/home/sdi/raid/library/Calibration/GGV1011/GGV1011_CAV_PAL_side1_DD1_2019-06-12_20-18-21.ldf" "../../ld-decode/pal/cav/GGV1011_CAV_PAL_side1_DD1_2019-06-12_20-18-21_pos11505"

echo "[94] Decoding PAL CAV: Countryside_DD86-DS4_Side1_20210106_CAV_PAL_00001-54085_pos26326..."
ld-decode --PAL --start 26326 --length 40 "/home/sdi/raid/library/BBC_AIV/Countryside/Countryside_DS4/Countryside_DD86-DS4_Side1_20210106_CAV_PAL_00001-54085.ldf" "../../ld-decode/pal/cav/Countryside_DD86-DS4_Side1_20210106_CAV_PAL_00001-54085_pos26326"

echo "[95] Decoding PAL CAV: Countryside_DD86-DS4_Side1_20210106_CAV_PAL_00001-54085_pos4463..."
ld-decode --PAL --start 4463 --length 35 "/home/sdi/raid/library/BBC_AIV/Countryside/Countryside_DS4/Countryside_DD86-DS4_Side1_20210106_CAV_PAL_00001-54085.ldf" "../../ld-decode/pal/cav/Countryside_DD86-DS4_Side1_20210106_CAV_PAL_00001-54085_pos4463"

echo "[96] Decoding PAL CAV: Countryside_DD86-DS1_Side1_20200101_CAV_PAL_00001-54085_pos34925..."
ld-decode --PAL --start 34925 --length 36 "/home/sdi/raid/library/BBC_AIV/Countryside/Countryside_DS1/Countryside_DD86-DS1_Side1_20200101_CAV_PAL_00001-54085.ldf" "../../ld-decode/pal/cav/Countryside_DD86-DS1_Side1_20200101_CAV_PAL_00001-54085_pos34925"

echo "[97] Decoding PAL CAV: North_Polar_Expedition_DD86-DS1_Side1_20210103_CAV_PAL_00001-51437_pos34258..."
ld-decode --PAL --start 34258 --length 37 "/home/sdi/raid/library/BBC_AIV/North_Polar_Expedition/NPE_DS1/North_Polar_Expedition_DD86-DS1_Side1_20210103_CAV_PAL_00001-51437.ldf" "../../ld-decode/pal/cav/North_Polar_Expedition_DD86-DS1_Side1_20210103_CAV_PAL_00001-51437_pos34258"

echo "[98] Decoding PAL CAV: North_Polar_Expedition_DD86-DS1_Side1_20210103_CAV_PAL_00001-51437_pos13999..."
ld-decode --PAL --start 13999 --length 33 "/home/sdi/raid/library/BBC_AIV/North_Polar_Expedition/NPE_DS1/North_Polar_Expedition_DD86-DS1_Side1_20210103_CAV_PAL_00001-51437.ldf" "../../ld-decode/pal/cav/North_Polar_Expedition_DD86-DS1_Side1_20210103_CAV_PAL_00001-51437_pos13999"

echo "[99] Decoding PAL CAV: Domesday_DD86-DS11_CommunitySouth_20200814_CAV_PAL_00001-54000_pos25316..."
ld-decode --PAL --start 25316 --length 40 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS11/Domesday_DD86-DS11_CommunitySouth_20200814_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS11_CommunitySouth_20200814_CAV_PAL_00001-54000_pos25316"

echo "[100] Decoding PAL CAV: Domesday_DD86-DS11_CommunitySouth_20200814_CAV_PAL_00001-54000_pos14016..."
ld-decode --PAL --start 14016 --length 31 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS11/Domesday_DD86-DS11_CommunitySouth_20200814_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS11_CommunitySouth_20200814_CAV_PAL_00001-54000_pos14016"

echo "[101] Decoding PAL CAV: Countryside_DD86-DS2_Side1_20200803_CAV_PAL_00001-54085_pos43318..."
ld-decode --PAL --start 43318 --length 37 "/home/sdi/raid/library/BBC_AIV/Countryside/Countryside_DS2/Countryside_DD86-DS2_Side1_20200803_CAV_PAL_00001-54085.ldf" "../../ld-decode/pal/cav/Countryside_DD86-DS2_Side1_20200803_CAV_PAL_00001-54085_pos43318"

echo "[102] Decoding PAL CAV: Domesday_DD86-DS4_NationalA_PP_20191014_CAV_PAL_00001-54000_pos44011..."
ld-decode --PAL --start 44011 --length 39 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS4/Domesday_DD86-DS4_NationalA_PP_20191014_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS4_NationalA_PP_20191014_CAV_PAL_00001-54000_pos44011"

echo "[103] Decoding PAL CAV: Domesday_DD86-DS4_NationalA_PP_20191014_CAV_PAL_00001-54000_pos47667..."
ld-decode --PAL --start 47667 --length 33 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS4/Domesday_DD86-DS4_NationalA_PP_20191014_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS4_NationalA_PP_20191014_CAV_PAL_00001-54000_pos47667"

echo "[104] Decoding PAL CAV: Volcanoes_DD86-DS1_Side1_20191227_CAV_PAL_00001-54000_pos10906..."
ld-decode --PAL --start 10906 --length 35 "/home/sdi/raid/library/BBC_AIV/Volcanoes/Volcanoes_DS1/Volcanoes_DD86-DS1_Side1_20191227_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Volcanoes_DD86-DS1_Side1_20191227_CAV_PAL_00001-54000_pos10906"

echo "=== PAL CLV Decodes (4-5 per disc, MORE since fewer files) ==="
echo "[105] Decoding PAL CLV: Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60_pos49008..."
ld-decode --PAL --start 49008 --length 35 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS1/Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60_pos49008"

echo "[106] Decoding PAL CLV: Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60_pos1504..."
ld-decode --PAL --start 1504 --length 30 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS1/Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60_pos1504"

echo "[107] Decoding PAL CLV: Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60_pos60488..."
ld-decode --PAL --start 60488 --length 30 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS1/Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60_pos60488"

echo "[108] Decoding PAL CLV: Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60_pos6674..."
ld-decode --PAL --start 6674 --length 33 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS1/Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60_pos6674"

echo "[109] Decoding PAL CLV: Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60_pos34190..."
ld-decode --PAL --start 34190 --length 32 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS2/Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60_pos34190"

echo "[110] Decoding PAL CLV: Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60_pos30145..."
ld-decode --PAL --start 30145 --length 34 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS2/Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60_pos30145"

echo "[111] Decoding PAL CLV: Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60_pos5386..."
ld-decode --PAL --start 5386 --length 32 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS2/Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60_pos5386"

echo "[112] Decoding PAL CLV: Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60_pos43883..."
ld-decode --PAL --start 43883 --length 37 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS2/Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60_pos43883"

echo "[113] Decoding PAL CLV: Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60_pos53898..."
ld-decode --PAL --start 53898 --length 39 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS2/Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60_pos53898"

echo "[114] Decoding PAL CLV: Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58_pos18500..."
ld-decode --PAL --start 18500 --length 38 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS3/Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58_pos18500"

echo "[115] Decoding PAL CLV: Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58_pos6203..."
ld-decode --PAL --start 6203 --length 32 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS3/Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58_pos6203"

echo "[116] Decoding PAL CLV: Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58_pos4143..."
ld-decode --PAL --start 4143 --length 36 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS3/Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58_pos4143"

echo "[117] Decoding PAL CLV: Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58_pos5085..."
ld-decode --PAL --start 5085 --length 36 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS3/Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58_pos5085"

echo "[118] Decoding PAL CLV: Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58_pos58899..."
ld-decode --PAL --start 58899 --length 39 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS3/Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58_pos58899"

echo "[119] Decoding PAL CLV: Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60_pos4058..."
ld-decode --PAL --start 4058 --length 36 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS4/Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60_pos4058"

echo "[120] Decoding PAL CLV: Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60_pos9984..."
ld-decode --PAL --start 9984 --length 36 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS4/Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60_pos9984"

echo "[121] Decoding PAL CLV: Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60_pos53919..."
ld-decode --PAL --start 53919 --length 31 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS4/Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60_pos53919"

echo "[122] Decoding PAL CLV: Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60_pos5691..."
ld-decode --PAL --start 5691 --length 35 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS4/Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60_pos5691"

echo "[123] Decoding PAL CLV: Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60_pos48074..."
ld-decode --PAL --start 48074 --length 33 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS4/Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60_pos48074"

echo "[124] Decoding PAL CLV: Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60_pos62194..."
ld-decode --PAL --start 62194 --length 35 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS5/Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60_pos62194"

echo "[125] Decoding PAL CLV: Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60_pos85883..."
ld-decode --PAL --start 85883 --length 39 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS5/Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60_pos85883"

echo "[126] Decoding PAL CLV: Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60_pos33545..."
ld-decode --PAL --start 33545 --length 37 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS5/Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60_pos33545"

echo "[127] Decoding PAL CLV: Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60_pos70474..."
ld-decode --PAL --start 70474 --length 31 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS5/Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60_pos70474"

echo "[128] Decoding PAL CLV: Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60_pos31298..."
ld-decode --PAL --start 31298 --length 33 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS6/Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60_pos31298"

echo "[129] Decoding PAL CLV: Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60_pos64253..."
ld-decode --PAL --start 64253 --length 32 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS6/Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60_pos64253"

echo "[130] Decoding PAL CLV: Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60_pos84106..."
ld-decode --PAL --start 84106 --length 39 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS6/Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60_pos84106"

echo "[131] Decoding PAL CLV: Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60_pos67156..."
ld-decode --PAL --start 67156 --length 36 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS6/Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60_pos67156"

echo "[132] Decoding PAL CLV: Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44_pos10793..."
ld-decode --PAL --start 10793 --length 33 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS7/Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44_pos10793"

echo "[133] Decoding PAL CLV: Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44_pos26287..."
ld-decode --PAL --start 26287 --length 33 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS7/Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44_pos26287"

echo "[134] Decoding PAL CLV: Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44_pos48090..."
ld-decode --PAL --start 48090 --length 31 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS7/Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44_pos48090"

echo "[135] Decoding PAL CLV: Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44_pos7299..."
ld-decode --PAL --start 7299 --length 39 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS7/Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44_pos7299"

echo "[136] Decoding PAL CLV: Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60_pos4879..."
ld-decode --PAL --start 4879 --length 33 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS8/Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60_pos4879"

echo "[137] Decoding PAL CLV: Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60_pos37673..."
ld-decode --PAL --start 37673 --length 39 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS8/Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60_pos37673"

echo "[138] Decoding PAL CLV: Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60_pos9513..."
ld-decode --PAL --start 9513 --length 33 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS8/Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60_pos9513"

echo "[139] Decoding PAL CLV: Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60_pos51722..."
ld-decode --PAL --start 51722 --length 32 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS8/Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60_pos51722"

echo "[140] Decoding PAL CLV: Domesday_DD86-DS9_NationalB_NP_20200829_CLV_PAL_00-58_pos26874..."
ld-decode --PAL --start 26874 --length 39 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS9/Domesday_DD86-DS9_NationalB_NP_20200829_CLV_PAL_00-58.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS9_NationalB_NP_20200829_CLV_PAL_00-58_pos26874"

echo "[141] Decoding PAL CLV: Domesday_DD86-DS9_NationalB_NP_20200829_CLV_PAL_00-58_pos70755..."
ld-decode --PAL --start 70755 --length 33 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS9/Domesday_DD86-DS9_NationalB_NP_20200829_CLV_PAL_00-58.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS9_NationalB_NP_20200829_CLV_PAL_00-58_pos70755"

echo "[142] Decoding PAL CLV: Domesday_DD86-DS9_NationalB_NP_20200829_CLV_PAL_00-58_pos61045..."
ld-decode --PAL --start 61045 --length 34 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS9/Domesday_DD86-DS9_NationalB_NP_20200829_CLV_PAL_00-58.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS9_NationalB_NP_20200829_CLV_PAL_00-58_pos61045"

echo "[143] Decoding PAL CLV: Domesday_DD86-DS9_NationalB_NP_20200829_CLV_PAL_00-58_pos30988..."
ld-decode --PAL --start 30988 --length 31 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS9/Domesday_DD86-DS9_NationalB_NP_20200829_CLV_PAL_00-58.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS9_NationalB_NP_20200829_CLV_PAL_00-58_pos30988"

echo "[144] Decoding PAL CLV: Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60_pos31121..."
ld-decode --PAL --start 31121 --length 35 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS10/Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60_pos31121"

echo "[145] Decoding PAL CLV: Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60_pos42925..."
ld-decode --PAL --start 42925 --length 34 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS10/Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60_pos42925"

echo "[146] Decoding PAL CLV: Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60_pos41424..."
ld-decode --PAL --start 41424 --length 30 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS10/Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60_pos41424"

echo "[147] Decoding PAL CLV: Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60_pos66295..."
ld-decode --PAL --start 66295 --length 30 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS10/Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60_pos66295"

echo "[148] Decoding PAL CLV: Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60_pos51212..."
ld-decode --PAL --start 51212 --length 31 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS10/Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60_pos51212"

echo "[149] Decoding PAL CLV: Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60_pos30455..."
ld-decode --PAL --start 30455 --length 31 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS11/Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60_pos30455"

echo "[150] Decoding PAL CLV: Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60_pos70341..."
ld-decode --PAL --start 70341 --length 32 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS11/Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60_pos70341"

echo "[151] Decoding PAL CLV: Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60_pos6412..."
ld-decode --PAL --start 6412 --length 37 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS11/Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60_pos6412"

echo "[152] Decoding PAL CLV: Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60_pos61479..."
ld-decode --PAL --start 61479 --length 34 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS11/Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60_pos61479"

echo "[153] Decoding PAL CLV: Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60_pos5133..."
ld-decode --PAL --start 5133 --length 32 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS11/Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60_pos5133"

echo "[154] Decoding PAL CLV: Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60_pos59393..."
ld-decode --PAL --start 59393 --length 36 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS12/Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60_pos59393"

echo "[155] Decoding PAL CLV: Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60_pos3715..."
ld-decode --PAL --start 3715 --length 34 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS12/Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60_pos3715"

echo "[156] Decoding PAL CLV: Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60_pos44864..."
ld-decode --PAL --start 44864 --length 37 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS12/Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60_pos44864"

echo "[157] Decoding PAL CLV: Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60_pos51613..."
ld-decode --PAL --start 51613 --length 37 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS12/Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60_pos51613"

echo "[158] Decoding PAL CLV: Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60_pos33501..."
ld-decode --PAL --start 33501 --length 38 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS12/Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60_pos33501"

echo "[159] Decoding PAL CLV: DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49_pos57400..."
ld-decode --PAL --start 57400 --length 30 "/home/sdi/raid/library/BBC_AIV/Test_Pressings/TP06/DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49.ldf" "../../ld-decode/pal/clv/DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49_pos57400"

echo "[160] Decoding PAL CLV: DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49_pos69969..."
ld-decode --PAL --start 69969 --length 37 "/home/sdi/raid/library/BBC_AIV/Test_Pressings/TP06/DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49.ldf" "../../ld-decode/pal/clv/DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49_pos69969"

echo "[161] Decoding PAL CLV: DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49_pos33432..."
ld-decode --PAL --start 33432 --length 33 "/home/sdi/raid/library/BBC_AIV/Test_Pressings/TP06/DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49.ldf" "../../ld-decode/pal/clv/DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49_pos33432"

echo "[162] Decoding PAL CLV: DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49_pos30188..."
ld-decode --PAL --start 30188 --length 35 "/home/sdi/raid/library/BBC_AIV/Test_Pressings/TP06/DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49.ldf" "../../ld-decode/pal/clv/DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49_pos30188"

echo ""
echo "======================================="
echo "Generated 162 decode commands"
echo "======================================="
