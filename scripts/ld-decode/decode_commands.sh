#!/bin/bash

# Activate venv
export VDIR=~/Coding/github/ld-decode-venv
source $VDIR/bin/activate

echo "========================================"
echo "Generating ld-decode test files"
echo "========================================"
echo ""

echo "=== NTSC CAV Decodes (1-2 per disc) ==="
echo "[1] Decoding NTSC CAV: Pioneer_GGV1069_CAV_NTSC_side1_dup1_2019-09-12_21-11-38_pos13963..."
ld-decode --NTSC --start 13963 --length 50 "/home/sdi/raid/library/Calibration/GGV1069/Pioneer GGV1069_CAV_NTSC_side1_dup1_2019-09-12_21-11-38.ldf" "../../ld-decode/ntsc/cav/Pioneer_GGV1069_CAV_NTSC_side1_dup1_2019-09-12_21-11-38_pos13963"

echo "[2] Decoding NTSC CAV: Dragons-Lair_DS1_Side1_20191230_CAV_NTSC_pos10182..."
ld-decode --NTSC --start 10182 --length 56 "/home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_DS1_Side1_20191230_CAV_NTSC.ldf" "../../ld-decode/ntsc/cav/Dragons-Lair_DS1_Side1_20191230_CAV_NTSC_pos10182"

echo "[3] Decoding NTSC CAV: Dragons-Lair_DS1_Side1_20191230_CAV_NTSC_pos14633..."
ld-decode --NTSC --start 14633 --length 58 "/home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_DS1_Side1_20191230_CAV_NTSC.ldf" "../../ld-decode/ntsc/cav/Dragons-Lair_DS1_Side1_20191230_CAV_NTSC_pos14633"

echo "[4] Decoding NTSC CAV: Dragons-Lair_DS2_Side1_20191230_CAV_NTSC_pos29153..."
ld-decode --NTSC --start 29153 --length 54 "/home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_DS2_Side1_20191230_CAV_NTSC.ldf" "../../ld-decode/ntsc/cav/Dragons-Lair_DS2_Side1_20191230_CAV_NTSC_pos29153"

echo "[5] Decoding NTSC CAV: Dragons-Lair_DS4_Side1_20191230_CAV_NTSC_pos5152..."
ld-decode --NTSC --start 5152 --length 57 "/home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_DS4_Side1_20191230_CAV_NTSC.ldf" "../../ld-decode/ntsc/cav/Dragons-Lair_DS4_Side1_20191230_CAV_NTSC_pos5152"

echo "[6] Decoding NTSC CAV: Dragons-Lair_DS4_Side1_20191230_CAV_NTSC_pos20573..."
ld-decode --NTSC --start 20573 --length 53 "/home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_DS4_Side1_20191230_CAV_NTSC.ldf" "../../ld-decode/ntsc/cav/Dragons-Lair_DS4_Side1_20191230_CAV_NTSC_pos20573"

echo "[7] Decoding NTSC CAV: Dragons-Lair_DS5_Side1_20191230_CAV_NTSC_pos1000..."
ld-decode --NTSC --start 1000 --length 56 "/home/sdi/raid/library/Arcade/Dragons_Lair/Dragons-Lair_DS5_Side1_20191230_CAV_NTSC.ldf" "../../ld-decode/ntsc/cav/Dragons-Lair_DS5_Side1_20191230_CAV_NTSC_pos1000"

echo "[8] Decoding NTSC CAV: FIREFOX_CAV_NTSC_side1_2020-08-15_23-46-02_pos41395..."
ld-decode --NTSC --start 41395 --length 48 "/home/sdi/raid/library/Arcade/Firefox/FIREFOX_CAV_NTSC_side1_2020-08-15_23-46-02.ldf" "../../ld-decode/ntsc/cav/FIREFOX_CAV_NTSC_side1_2020-08-15_23-46-02_pos41395"

echo "[9] Decoding NTSC CAV: National_Gallery_of_Art_CAV_NTSC_side1__2020-01-19_20-17-39_pos14940..."
ld-decode --NTSC --start 14940 --length 48 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/National Gallery of Art/National Gallery of Art_CAV_NTSC_side1__2020-01-19_20-17-39.ldf" "../../ld-decode/ntsc/cav/National_Gallery_of_Art_CAV_NTSC_side1__2020-01-19_20-17-39_pos14940"

echo "[10] Decoding NTSC CAV: National_Gallery_of_Art_CAV_NTSC_side2__2020-01-19_20-46-47_pos14912..."
ld-decode --NTSC --start 14912 --length 57 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/National Gallery of Art/National Gallery of Art_CAV_NTSC_side2__2020-01-19_20-46-47.ldf" "../../ld-decode/ntsc/cav/National_Gallery_of_Art_CAV_NTSC_side2__2020-01-19_20-46-47_pos14912"

echo "[11] Decoding NTSC CAV: CheckingDolbySurround_CAV_NTSC_side1_2021-01-04_22-08-00_pos21128..."
ld-decode --NTSC --start 21128 --length 58 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/CheckingDolbySurround/CheckingDolbySurround_CAV_NTSC_side1_2021-01-04_22-08-00.ldf" "../../ld-decode/ntsc/cav/CheckingDolbySurround_CAV_NTSC_side1_2021-01-04_22-08-00_pos21128"

echo "[12] Decoding NTSC CAV: Pioneer_GGV1069_CAV_NTSC_side1_dup1_2020-07-08_17-12-46_pos20731..."
ld-decode --NTSC --start 20731 --length 52 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Calibration Discs/Pioneer_GGV1069_CAV_NTSC_side1_dup1_2020-07-08_17-12-46.ldf" "../../ld-decode/ntsc/cav/Pioneer_GGV1069_CAV_NTSC_side1_dup1_2020-07-08_17-12-46_pos20731"

echo "[13] Decoding NTSC CAV: Pioneer_GGV1069_CAV_NTSC_side1_dup1_2020-07-08_17-12-46_pos5011..."
ld-decode --NTSC --start 5011 --length 51 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Calibration Discs/Pioneer_GGV1069_CAV_NTSC_side1_dup1_2020-07-08_17-12-46.ldf" "../../ld-decode/ntsc/cav/Pioneer_GGV1069_CAV_NTSC_side1_dup1_2020-07-08_17-12-46_pos5011"

echo "[14] Decoding NTSC CAV: Apple_Visual_Almanac_DD86-DS1_SideA_20200119_CAV_NTSC_00001-50683_pos7517..."
ld-decode --NTSC --start 7517 --length 50 "/home/sdi/raid/library/Interactive_Video/Apple_Visual_Almanac/Apple_Visual_Almanac_DS1/Apple_Visual_Almanac_DD86-DS1_SideA_20200119_CAV_NTSC_00001-50683.ldf" "../../ld-decode/ntsc/cav/Apple_Visual_Almanac_DD86-DS1_SideA_20200119_CAV_NTSC_00001-50683_pos7517"

echo "[15] Decoding NTSC CAV: Apple_Visual_Almanac_DD86-DS1_SideA_20200119_CAV_NTSC_00001-50683_pos45571..."
ld-decode --NTSC --start 45571 --length 57 "/home/sdi/raid/library/Interactive_Video/Apple_Visual_Almanac/Apple_Visual_Almanac_DS1/Apple_Visual_Almanac_DD86-DS1_SideA_20200119_CAV_NTSC_00001-50683.ldf" "../../ld-decode/ntsc/cav/Apple_Visual_Almanac_DD86-DS1_SideA_20200119_CAV_NTSC_00001-50683_pos45571"

echo "[16] Decoding NTSC CAV: Apple_Visual_Almanac_DD86-DS3_SideB_20210106_CAV_NTSC_00001-53361_pos47463..."
ld-decode --NTSC --start 47463 --length 58 "/home/sdi/raid/library/Interactive_Video/Apple_Visual_Almanac/Apple_Visual_Almanac_DS3/Apple_Visual_Almanac_DD86-DS3_SideB_20210106_CAV_NTSC_00001-53361.ldf" "../../ld-decode/ntsc/cav/Apple_Visual_Almanac_DD86-DS3_SideB_20210106_CAV_NTSC_00001-53361_pos47463"

echo "[17] Decoding NTSC CAV: Apple_Visual_Almanac_DD86-DS2_SideA_20190205_CAV_NTSC_00001-50683_pos17615..."
ld-decode --NTSC --start 17615 --length 58 "/home/sdi/raid/library/Interactive_Video/Apple_Visual_Almanac/Apple_Visual_Almanac_DS2/Apple_Visual_Almanac_DD86-DS2_SideA_20190205_CAV_NTSC_00001-50683.ldf" "../../ld-decode/ntsc/cav/Apple_Visual_Almanac_DD86-DS2_SideA_20190205_CAV_NTSC_00001-50683_pos17615"

echo "[18] Decoding NTSC CAV: Apple_Visual_Almanac_DD86-DS2_SideA_20190205_CAV_NTSC_00001-50683_pos49291..."
ld-decode --NTSC --start 49291 --length 57 "/home/sdi/raid/library/Interactive_Video/Apple_Visual_Almanac/Apple_Visual_Almanac_DS2/Apple_Visual_Almanac_DD86-DS2_SideA_20190205_CAV_NTSC_00001-50683.ldf" "../../ld-decode/ntsc/cav/Apple_Visual_Almanac_DD86-DS2_SideA_20190205_CAV_NTSC_00001-50683_pos49291"

echo "[19] Decoding NTSC CAV: Apple_Visual_Almanac_DD86-DS1_SideB_20200119_CAV_NTSC_00001-53361_pos11068..."
ld-decode --NTSC --start 11068 --length 51 "/home/sdi/raid/library/Interactive_Video/Apple_Visual_Almanac/Apple_Visual_Almanac_DS1/Apple_Visual_Almanac_DD86-DS1_SideB_20200119_CAV_NTSC_00001-53361.ldf" "../../ld-decode/ntsc/cav/Apple_Visual_Almanac_DD86-DS1_SideB_20200119_CAV_NTSC_00001-53361_pos11068"

echo "[20] Decoding NTSC CAV: Apple_Visual_Almanac_DD86-DS1_SideB_20200119_CAV_NTSC_00001-53361_pos42910..."
ld-decode --NTSC --start 42910 --length 57 "/home/sdi/raid/library/Interactive_Video/Apple_Visual_Almanac/Apple_Visual_Almanac_DS1/Apple_Visual_Almanac_DD86-DS1_SideB_20200119_CAV_NTSC_00001-53361.ldf" "../../ld-decode/ntsc/cav/Apple_Visual_Almanac_DD86-DS1_SideB_20200119_CAV_NTSC_00001-53361_pos42910"

echo "[21] Decoding NTSC CAV: Apple_Visual_Almanac_DD86-DS3_SideA_20210106_CAV_NTSC_00001-50683_pos15650..."
ld-decode --NTSC --start 15650 --length 50 "/home/sdi/raid/library/Interactive_Video/Apple_Visual_Almanac/Apple_Visual_Almanac_DS3/Apple_Visual_Almanac_DD86-DS3_SideA_20210106_CAV_NTSC_00001-50683.ldf" "../../ld-decode/ntsc/cav/Apple_Visual_Almanac_DD86-DS3_SideA_20210106_CAV_NTSC_00001-50683_pos15650"

echo "[22] Decoding NTSC CAV: Apple_Visual_Almanac_DD86-DS3_SideA_20210106_CAV_NTSC_00001-50683_pos12606..."
ld-decode --NTSC --start 12606 --length 48 "/home/sdi/raid/library/Interactive_Video/Apple_Visual_Almanac/Apple_Visual_Almanac_DS3/Apple_Visual_Almanac_DD86-DS3_SideA_20210106_CAV_NTSC_00001-50683.ldf" "../../ld-decode/ntsc/cav/Apple_Visual_Almanac_DD86-DS3_SideA_20210106_CAV_NTSC_00001-50683_pos12606"

echo "=== NTSC CLV Decodes (5-6 per disc, MORE since fewer files) ==="
echo "[23] Decoding NTSC CLV: Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04_pos47693..."
ld-decode --NTSC --start 47693 --length 50 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Cinderella Japan/Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04.ldf" "../../ld-decode/ntsc/clv/Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04_pos47693"

echo "[24] Decoding NTSC CLV: Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04_pos26380..."
ld-decode --NTSC --start 26380 --length 55 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Cinderella Japan/Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04.ldf" "../../ld-decode/ntsc/clv/Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04_pos26380"

echo "[25] Decoding NTSC CLV: Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04_pos26475..."
ld-decode --NTSC --start 26475 --length 49 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Cinderella Japan/Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04.ldf" "../../ld-decode/ntsc/clv/Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04_pos26475"

echo "[26] Decoding NTSC CLV: Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04_pos32518..."
ld-decode --NTSC --start 32518 --length 58 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Cinderella Japan/Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04.ldf" "../../ld-decode/ntsc/clv/Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04_pos32518"

echo "[27] Decoding NTSC CLV: Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04_pos23709..."
ld-decode --NTSC --start 23709 --length 53 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Cinderella Japan/Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04.ldf" "../../ld-decode/ntsc/clv/Cinderella_CLV_NTSC_side1_JapanImport_CC_2020-01-22_18-19-04_pos23709"

echo "[28] Decoding NTSC CLV: Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23_pos16849..."
ld-decode --NTSC --start 16849 --length 52 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Cinderella Japan/Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23.ldf" "../../ld-decode/ntsc/clv/Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23_pos16849"

echo "[29] Decoding NTSC CLV: Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23_pos41381..."
ld-decode --NTSC --start 41381 --length 58 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Cinderella Japan/Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23.ldf" "../../ld-decode/ntsc/clv/Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23_pos41381"

echo "[30] Decoding NTSC CLV: Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23_pos36049..."
ld-decode --NTSC --start 36049 --length 49 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Cinderella Japan/Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23.ldf" "../../ld-decode/ntsc/clv/Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23_pos36049"

echo "[31] Decoding NTSC CLV: Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23_pos36101..."
ld-decode --NTSC --start 36101 --length 50 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Cinderella Japan/Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23.ldf" "../../ld-decode/ntsc/clv/Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23_pos36101"

echo "[32] Decoding NTSC CLV: Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23_pos30911..."
ld-decode --NTSC --start 30911 --length 49 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Cinderella Japan/Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23.ldf" "../../ld-decode/ntsc/clv/Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23_pos30911"

echo "[33] Decoding NTSC CLV: Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23_pos27312..."
ld-decode --NTSC --start 27312 --length 57 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Cinderella Japan/Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23.ldf" "../../ld-decode/ntsc/clv/Cinderella_CLV_NTSC_side2_JapanImport_CC_2020-01-22_19-29-23_pos27312"

echo "[34] Decoding NTSC CLV: Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19_pos46637..."
ld-decode --NTSC --start 46637 --length 56 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Bambi Japan/Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19.ldf" "../../ld-decode/ntsc/clv/Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19_pos46637"

echo "[35] Decoding NTSC CLV: Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19_pos21363..."
ld-decode --NTSC --start 21363 --length 53 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Bambi Japan/Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19.ldf" "../../ld-decode/ntsc/clv/Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19_pos21363"

echo "[36] Decoding NTSC CLV: Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19_pos10999..."
ld-decode --NTSC --start 10999 --length 57 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Bambi Japan/Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19.ldf" "../../ld-decode/ntsc/clv/Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19_pos10999"

echo "[37] Decoding NTSC CLV: Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19_pos48727..."
ld-decode --NTSC --start 48727 --length 52 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Bambi Japan/Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19.ldf" "../../ld-decode/ntsc/clv/Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19_pos48727"

echo "[38] Decoding NTSC CLV: Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19_pos26589..."
ld-decode --NTSC --start 26589 --length 49 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Bambi Japan/Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19.ldf" "../../ld-decode/ntsc/clv/Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19_pos26589"

echo "[39] Decoding NTSC CLV: Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19_pos34501..."
ld-decode --NTSC --start 34501 --length 49 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Bambi Japan/Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19.ldf" "../../ld-decode/ntsc/clv/Bambi_CLV_NTSC_side1_JapanImport_LDG_2020-01-22_20-25-19_pos34501"

echo "[40] Decoding NTSC CLV: Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20_pos4449..."
ld-decode --NTSC --start 4449 --length 54 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Bambi Japan/Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20.ldf" "../../ld-decode/ntsc/clv/Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20_pos4449"

echo "[41] Decoding NTSC CLV: Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20_pos54499..."
ld-decode --NTSC --start 54499 --length 55 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Bambi Japan/Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20.ldf" "../../ld-decode/ntsc/clv/Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20_pos54499"

echo "[42] Decoding NTSC CLV: Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20_pos46203..."
ld-decode --NTSC --start 46203 --length 57 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Bambi Japan/Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20.ldf" "../../ld-decode/ntsc/clv/Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20_pos46203"

echo "[43] Decoding NTSC CLV: Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20_pos15197..."
ld-decode --NTSC --start 15197 --length 52 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Bambi Japan/Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20.ldf" "../../ld-decode/ntsc/clv/Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20_pos15197"

echo "[44] Decoding NTSC CLV: Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20_pos28362..."
ld-decode --NTSC --start 28362 --length 58 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/NTSC/Bambi Japan/Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20.ldf" "../../ld-decode/ntsc/clv/Bambi_CLV_NTSC_side2_JapanImport_LDG_2020-01-22_21-20-20_pos28362"

echo "=== PAL CAV Decodes (1-2 per disc) ==="
echo "[45] Decoding PAL CAV: British_Garden_Birds_DD86-DS2_Side1_20210104_CAV_PAL_00001-53450_pos9748..."
ld-decode --PAL --start 9748 --length 37 "/home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS2/British_Garden_Birds_DD86-DS2_Side1_20210104_CAV_PAL_00001-53450.ldf" "../../ld-decode/pal/cav/British_Garden_Birds_DD86-DS2_Side1_20210104_CAV_PAL_00001-53450_pos9748"

echo "[46] Decoding PAL CAV: The_World_the_UN_and_You_CAV_PAL_Disc5_2019-09-15_20-56-00_pos20040..."
ld-decode --PAL --start 20040 --length 33 "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc5_2019-09-15_20-56-00.ldf" "../../ld-decode/pal/cav/The_World_the_UN_and_You_CAV_PAL_Disc5_2019-09-15_20-56-00_pos20040"

echo "[47] Decoding PAL CAV: Domesday_DD86-DS11_NationalA_NP_20200830_CAV_PAL_00001-51000_pos7153..."
ld-decode --PAL --start 7153 --length 39 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS11/Domesday_DD86-DS11_NationalA_NP_20200830_CAV_PAL_00001-51000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS11_NationalA_NP_20200830_CAV_PAL_00001-51000_pos7153"

echo "[48] Decoding PAL CAV: Domesday_DD86-DS11_NationalA_NP_20200830_CAV_PAL_00001-51000_pos24784..."
ld-decode --PAL --start 24784 --length 37 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS11/Domesday_DD86-DS11_NationalA_NP_20200830_CAV_PAL_00001-51000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS11_NationalA_NP_20200830_CAV_PAL_00001-51000_pos24784"

echo "[49] Decoding PAL CAV: Countryside_DD86-DS3_Side1_20200803_CAV_PAL_00001-54085_pos29106..."
ld-decode --PAL --start 29106 --length 37 "/home/sdi/raid/library/BBC_AIV/Countryside/Countryside_DS3/Countryside_DD86-DS3_Side1_20200803_CAV_PAL_00001-54085.ldf" "../../ld-decode/pal/cav/Countryside_DD86-DS3_Side1_20200803_CAV_PAL_00001-54085_pos29106"

echo "[50] Decoding PAL CAV: Countryside_DD86-DS3_Side1_20200803_CAV_PAL_00001-54085_pos46619..."
ld-decode --PAL --start 46619 --length 34 "/home/sdi/raid/library/BBC_AIV/Countryside/Countryside_DS3/Countryside_DD86-DS3_Side1_20200803_CAV_PAL_00001-54085.ldf" "../../ld-decode/pal/cav/Countryside_DD86-DS3_Side1_20200803_CAV_PAL_00001-54085_pos46619"

echo "[51] Decoding PAL CAV: Domesday_DD86-DS3_CommunityNorth_20191014_CAV_PAL_00001-54000_pos39618..."
ld-decode --PAL --start 39618 --length 34 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS3/Domesday_DD86-DS3_CommunityNorth_20191014_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS3_CommunityNorth_20191014_CAV_PAL_00001-54000_pos39618"

echo "[52] Decoding PAL CAV: City-Disc_DD86-DS1_Culture1-Side2_20210101_CAV_PAL_00001-44003_pos28386..."
ld-decode --PAL --start 28386 --length 33 "/home/sdi/raid/library/BBC_AIV/City_Disc/City_Disc_DS1/City-Disc_DD86-DS1_Culture1-Side2_20210101_CAV_PAL_00001-44003.ldf" "../../ld-decode/pal/cav/City-Disc_DD86-DS1_Culture1-Side2_20210101_CAV_PAL_00001-44003_pos28386"

echo "[53] Decoding PAL CAV: City-Disc_DD86-DS2_Financial2-Side1_20210101_CAV_PAL_00001-44611_pos9274..."
ld-decode --PAL --start 9274 --length 38 "/home/sdi/raid/library/BBC_AIV/City_Disc/City_Disc_DS2/City-Disc_DD86-DS2_Financial2-Side1_20210101_CAV_PAL_00001-44611.ldf" "../../ld-decode/pal/cav/City-Disc_DD86-DS2_Financial2-Side1_20210101_CAV_PAL_00001-44611_pos9274"

echo "[54] Decoding PAL CAV: City-Disc_DD86-DS2_Financial2-Side1_20210101_CAV_PAL_00001-44611_pos28711..."
ld-decode --PAL --start 28711 --length 30 "/home/sdi/raid/library/BBC_AIV/City_Disc/City_Disc_DS2/City-Disc_DD86-DS2_Financial2-Side1_20210101_CAV_PAL_00001-44611.ldf" "../../ld-decode/pal/cav/City-Disc_DD86-DS2_Financial2-Side1_20210101_CAV_PAL_00001-44611_pos28711"

echo "[55] Decoding PAL CAV: British_Garden_Birds_DD86-DS3_Side2_20210610_CAV_PAL_00001-53474_pos21299..."
ld-decode --PAL --start 21299 --length 31 "/home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS3/British_Garden_Birds_DD86-DS3_Side2_20210610_CAV_PAL_00001-53474.ldf" "../../ld-decode/pal/cav/British_Garden_Birds_DD86-DS3_Side2_20210610_CAV_PAL_00001-53474_pos21299"

echo "[56] Decoding PAL CAV: The_World_the_UN_and_You_CAV_PAL_Disc3_2019-09-15_19-36-50_pos17447..."
ld-decode --PAL --start 17447 --length 30 "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc3_2019-09-15_19-36-50.ldf" "../../ld-decode/pal/cav/The_World_the_UN_and_You_CAV_PAL_Disc3_2019-09-15_19-36-50_pos17447"

echo "[57] Decoding PAL CAV: Domesday_DD86-DS6_NationalA_PP_20200803_CAV_PAL_00001-54000_pos23540..."
ld-decode --PAL --start 23540 --length 37 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS6/Domesday_DD86-DS6_NationalA_PP_20200803_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS6_NationalA_PP_20200803_CAV_PAL_00001-54000_pos23540"

echo "[58] Decoding PAL CAV: Domesday_DD86-DS12_CommunitySouth_20220710_CAV_PAL_00001-54000_pos7025..."
ld-decode --PAL --start 7025 --length 36 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS12/Domesday_DD86-DS12_CommunitySouth_20220710_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS12_CommunitySouth_20220710_CAV_PAL_00001-54000_pos7025"

echo "[59] Decoding PAL CAV: British_Garden_Birds_DD86-DS1_Side2_20200118_CAV_PAL_00001-53444_pos17868..."
ld-decode --PAL --start 17868 --length 32 "/home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS1/British_Garden_Birds_DD86-DS1_Side2_20200118_CAV_PAL_00001-53444.ldf" "../../ld-decode/pal/cav/British_Garden_Birds_DD86-DS1_Side2_20200118_CAV_PAL_00001-53444_pos17868"

echo "[60] Decoding PAL CAV: Domesday_DD86-DS2_NationalA_PP_20191014_CAV_PAL_00001-54000_pos24937..."
ld-decode --PAL --start 24937 --length 33 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS2/Domesday_DD86-DS2_NationalA_PP_20191014_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS2_NationalA_PP_20191014_CAV_PAL_00001-54000_pos24937"

echo "[61] Decoding PAL CAV: Domesday_DD86-DS3_CommunitySouth_20191014_CAV_PAL_00001-53040_pos42761..."
ld-decode --PAL --start 42761 --length 34 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS3/Domesday_DD86-DS3_CommunitySouth_20191014_CAV_PAL_00001-53040.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS3_CommunitySouth_20191014_CAV_PAL_00001-53040_pos42761"

echo "[62] Decoding PAL CAV: British_Garden_Birds_DD86-DS3_Side1_20210610_CAV_PAL_00001-53450_pos1648..."
ld-decode --PAL --start 1648 --length 34 "/home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS3/British_Garden_Birds_DD86-DS3_Side1_20210610_CAV_PAL_00001-53450.ldf" "../../ld-decode/pal/cav/British_Garden_Birds_DD86-DS3_Side1_20210610_CAV_PAL_00001-53450_pos1648"

echo "[63] Decoding PAL CAV: British_Garden_Birds_DD86-DS3_Side1_20210610_CAV_PAL_00001-53450_pos18574..."
ld-decode --PAL --start 18574 --length 35 "/home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS3/British_Garden_Birds_DD86-DS3_Side1_20210610_CAV_PAL_00001-53450.ldf" "../../ld-decode/pal/cav/British_Garden_Birds_DD86-DS3_Side1_20210610_CAV_PAL_00001-53450_pos18574"

echo "[64] Decoding PAL CAV: Countryside_DD86-DS4_Side2_20210106_CAV_PAL_00001-51000_pos46199..."
ld-decode --PAL --start 46199 --length 35 "/home/sdi/raid/library/BBC_AIV/Countryside/Countryside_DS4/Countryside_DD86-DS4_Side2_20210106_CAV_PAL_00001-51000.ldf" "../../ld-decode/pal/cav/Countryside_DD86-DS4_Side2_20210106_CAV_PAL_00001-51000_pos46199"

echo "[65] Decoding PAL CAV: Countryside_DD86-DS4_Side2_20210106_CAV_PAL_00001-51000_pos13093..."
ld-decode --PAL --start 13093 --length 34 "/home/sdi/raid/library/BBC_AIV/Countryside/Countryside_DS4/Countryside_DD86-DS4_Side2_20210106_CAV_PAL_00001-51000.ldf" "../../ld-decode/pal/cav/Countryside_DD86-DS4_Side2_20210106_CAV_PAL_00001-51000_pos13093"

echo "[66] Decoding PAL CAV: DD_TP06C_Cpy11_CAV_PAL_side1_Armstrong_2020-08-04_11-17-30_pos32730..."
ld-decode --PAL --start 32730 --length 38 "/home/sdi/raid/library/BBC_AIV/Test_Pressings/TP06/DD_TP06C_Cpy11_CAV_PAL_side1_Armstrong_2020-08-04_11-17-30.ldf" "../../ld-decode/pal/cav/DD_TP06C_Cpy11_CAV_PAL_side1_Armstrong_2020-08-04_11-17-30_pos32730"

echo "[67] Decoding PAL CAV: DD_TP06C_Cpy11_CAV_PAL_side1_Armstrong_2020-08-04_11-17-30_pos20775..."
ld-decode --PAL --start 20775 --length 38 "/home/sdi/raid/library/BBC_AIV/Test_Pressings/TP06/DD_TP06C_Cpy11_CAV_PAL_side1_Armstrong_2020-08-04_11-17-30.ldf" "../../ld-decode/pal/cav/DD_TP06C_Cpy11_CAV_PAL_side1_Armstrong_2020-08-04_11-17-30_pos20775"

echo "[68] Decoding PAL CAV: EcoDisc_DD86-DS1_Side2_20200101_CAV_PAL_00001-54000_pos19872..."
ld-decode --PAL --start 19872 --length 34 "/home/sdi/raid/library/BBC_AIV/EcoDisc/EcoDisc_DS1/EcoDisc_DD86-DS1_Side2_20200101_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/EcoDisc_DD86-DS1_Side2_20200101_CAV_PAL_00001-54000_pos19872"

echo "[69] Decoding PAL CAV: Roger_Rabbit_Bonus_Disc_CAV_PAL_side1_2019-12-21_18-22-37_pos17164..."
ld-decode --PAL --start 17164 --length 34 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/PAL/Roger Rabbit/Roger Rabbit Bonus Disc_CAV_PAL_side1_2019-12-21_18-22-37.ldf" "../../ld-decode/pal/cav/Roger_Rabbit_Bonus_Disc_CAV_PAL_side1_2019-12-21_18-22-37_pos17164"

echo "[70] Decoding PAL CAV: Roger_Rabbit_Bonus_Disc_CAV_PAL_side1_2019-12-21_18-22-37_pos35569..."
ld-decode --PAL --start 35569 --length 38 "/home/sdi/raid/sftp/simoninns/LDV4300D_1/PAL/Roger Rabbit/Roger Rabbit Bonus Disc_CAV_PAL_side1_2019-12-21_18-22-37.ldf" "../../ld-decode/pal/cav/Roger_Rabbit_Bonus_Disc_CAV_PAL_side1_2019-12-21_18-22-37_pos35569"

echo "[71] Decoding PAL CAV: Domesday_DD86-DS4_CommunityNorth_20191014_CAV_PAL_00001-54000_pos37607..."
ld-decode --PAL --start 37607 --length 39 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS4/Domesday_DD86-DS4_CommunityNorth_20191014_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS4_CommunityNorth_20191014_CAV_PAL_00001-54000_pos37607"

echo "[72] Decoding PAL CAV: Domesday_DD86-DS4_CommunityNorth_20191014_CAV_PAL_00001-54000_pos11951..."
ld-decode --PAL --start 11951 --length 39 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS4/Domesday_DD86-DS4_CommunityNorth_20191014_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS4_CommunityNorth_20191014_CAV_PAL_00001-54000_pos11951"

echo "[73] Decoding PAL CAV: City-Disc_DD86-DS1_Culture2-Side1_20210101_CAV_PAL_00001-39104_pos23055..."
ld-decode --PAL --start 23055 --length 38 "/home/sdi/raid/library/BBC_AIV/City_Disc/City_Disc_DS1/City-Disc_DD86-DS1_Culture2-Side1_20210101_CAV_PAL_00001-39104.ldf" "../../ld-decode/pal/cav/City-Disc_DD86-DS1_Culture2-Side1_20210101_CAV_PAL_00001-39104_pos23055"

echo "[74] Decoding PAL CAV: British_Garden_Birds_DD86-DS2_Side2_20210104_CAV_PAL_00001-53474_pos3558..."
ld-decode --PAL --start 3558 --length 33 "/home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS2/British_Garden_Birds_DD86-DS2_Side2_20210104_CAV_PAL_00001-53474.ldf" "../../ld-decode/pal/cav/British_Garden_Birds_DD86-DS2_Side2_20210104_CAV_PAL_00001-53474_pos3558"

echo "[75] Decoding PAL CAV: Domesday_DD86-DS10_NationalA_PP_20200829_CAV_PAL_00001-51594_pos26796..."
ld-decode --PAL --start 26796 --length 36 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS10/Domesday_DD86-DS10_NationalA_PP_20200829_CAV_PAL_00001-51594.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS10_NationalA_PP_20200829_CAV_PAL_00001-51594_pos26796"

echo "[76] Decoding PAL CAV: British_Garden_Birds_DD86-DS4_Side1_20220402_CAV_PAL_00001-53450_pos16760..."
ld-decode --PAL --start 16760 --length 30 "/home/sdi/raid/library/Interactive_Video/British_Garden_Birds/British_Garden_Birds_DS4/British_Garden_Birds_DD86-DS4_Side1_20220402_CAV_PAL_00001-53450.ldf" "../../ld-decode/pal/cav/British_Garden_Birds_DD86-DS4_Side1_20220402_CAV_PAL_00001-53450_pos16760"

echo "[77] Decoding PAL CAV: City-Disc_DD86-DS2_Culture1-Side1_20210101_CAV_PAL_00001-44003_pos27482..."
ld-decode --PAL --start 27482 --length 32 "/home/sdi/raid/library/BBC_AIV/City_Disc/City_Disc_DS2/City-Disc_DD86-DS2_Culture1-Side1_20210101_CAV_PAL_00001-44003.ldf" "../../ld-decode/pal/cav/City-Disc_DD86-DS2_Culture1-Side1_20210101_CAV_PAL_00001-44003_pos27482"

echo "[78] Decoding PAL CAV: DD_TP05_CAV_PAL_side1_Armstrong_2020-08-04_12-56-13_pos31819..."
ld-decode --PAL --start 31819 --length 33 "/home/sdi/raid/library/BBC_AIV/Test_Pressings/TP05/DD_TP05_CAV_PAL_side1_Armstrong_2020-08-04_12-56-13.ldf" "../../ld-decode/pal/cav/DD_TP05_CAV_PAL_side1_Armstrong_2020-08-04_12-56-13_pos31819"

echo "[79] Decoding PAL CAV: DD_TP05_CAV_PAL_side1_Armstrong_2020-08-04_12-56-13_pos42927..."
ld-decode --PAL --start 42927 --length 30 "/home/sdi/raid/library/BBC_AIV/Test_Pressings/TP05/DD_TP05_CAV_PAL_side1_Armstrong_2020-08-04_12-56-13.ldf" "../../ld-decode/pal/cav/DD_TP05_CAV_PAL_side1_Armstrong_2020-08-04_12-56-13_pos42927"

echo "[80] Decoding PAL CAV: Domesday_DD86-DS9_NationalA_NP_20200829_CAV_PAL_00001-53000_pos7414..."
ld-decode --PAL --start 7414 --length 39 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS9/Domesday_DD86-DS9_NationalA_NP_20200829_CAV_PAL_00001-53000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS9_NationalA_NP_20200829_CAV_PAL_00001-53000_pos7414"

echo "[81] Decoding PAL CAV: Domesday_DD86-DS9_NationalA_NP_20200829_CAV_PAL_00001-53000_pos48683..."
ld-decode --PAL --start 48683 --length 37 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS9/Domesday_DD86-DS9_NationalA_NP_20200829_CAV_PAL_00001-53000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS9_NationalA_NP_20200829_CAV_PAL_00001-53000_pos48683"

echo "[82] Decoding PAL CAV: The_World_the_UN_and_You_CAV_PAL_Disc1_2019-09-15_18-27-44_pos35106..."
ld-decode --PAL --start 35106 --length 40 "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc1_2019-09-15_18-27-44.ldf" "../../ld-decode/pal/cav/The_World_the_UN_and_You_CAV_PAL_Disc1_2019-09-15_18-27-44_pos35106"

echo "[83] Decoding PAL CAV: The_World_the_UN_and_You_CAV_PAL_Disc1_2019-09-15_18-27-44_pos5852..."
ld-decode --PAL --start 5852 --length 38 "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc1_2019-09-15_18-27-44.ldf" "../../ld-decode/pal/cav/The_World_the_UN_and_You_CAV_PAL_Disc1_2019-09-15_18-27-44_pos5852"

echo "[84] Decoding PAL CAV: Domesday_DD86-DS12_CommunityNorth_20220710_CAV_PAL_00001-54000_pos34533..."
ld-decode --PAL --start 34533 --length 30 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS12/Domesday_DD86-DS12_CommunityNorth_20220710_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS12_CommunityNorth_20220710_CAV_PAL_00001-54000_pos34533"

echo "[85] Decoding PAL CAV: City-Disc_DD86-DS2_Culture2-Side1_20210101_CAV_PAL_00001-39104_pos16029..."
ld-decode --PAL --start 16029 --length 31 "/home/sdi/raid/library/BBC_AIV/City_Disc/City_Disc_DS2/City-Disc_DD86-DS2_Culture2-Side1_20210101_CAV_PAL_00001-39104.ldf" "../../ld-decode/pal/cav/City-Disc_DD86-DS2_Culture2-Side1_20210101_CAV_PAL_00001-39104_pos16029"

echo "[86] Decoding PAL CAV: Domesday_DD86-DS4_CommunitySouth_20191014_CAV_PAL_00001-54000_pos9138..."
ld-decode --PAL --start 9138 --length 40 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS4/Domesday_DD86-DS4_CommunitySouth_20191014_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS4_CommunitySouth_20191014_CAV_PAL_00001-54000_pos9138"

echo "[87] Decoding PAL CAV: Domesday_DD86-DS4_CommunitySouth_20191014_CAV_PAL_00001-54000_pos48215..."
ld-decode --PAL --start 48215 --length 36 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS4/Domesday_DD86-DS4_CommunitySouth_20191014_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS4_CommunitySouth_20191014_CAV_PAL_00001-54000_pos48215"

echo "[88] Decoding PAL CAV: Domesday_DD86-DS9_CommunitySouth_20200814_CAV_PAL_00001-54000_pos37933..."
ld-decode --PAL --start 37933 --length 32 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS9/Domesday_DD86-DS9_CommunitySouth_20200814_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS9_CommunitySouth_20200814_CAV_PAL_00001-54000_pos37933"

echo "[89] Decoding PAL CAV: Domesday_DD86-DS9_CommunitySouth_20200814_CAV_PAL_00001-54000_pos9090..."
ld-decode --PAL --start 9090 --length 39 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS9/Domesday_DD86-DS9_CommunitySouth_20200814_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS9_CommunitySouth_20200814_CAV_PAL_00001-54000_pos9090"

echo "[90] Decoding PAL CAV: Counter_Intelligence_CAV_PAL_side1_DS2_2019-10-22_16-58-25_pos12645..."
ld-decode --PAL --start 12645 --length 31 "/home/sdi/raid/library/Interactive_Video/Counter_Intelligence/Counter Intelligence_CAV_PAL_side1_DS2_2019-10-22_16-58-25.ldf" "../../ld-decode/pal/cav/Counter_Intelligence_CAV_PAL_side1_DS2_2019-10-22_16-58-25_pos12645"

echo "[91] Decoding PAL CAV: Counter_Intelligence_CAV_PAL_side1_DS2_2019-10-22_16-58-25_pos7187..."
ld-decode --PAL --start 7187 --length 31 "/home/sdi/raid/library/Interactive_Video/Counter_Intelligence/Counter Intelligence_CAV_PAL_side1_DS2_2019-10-22_16-58-25.ldf" "../../ld-decode/pal/cav/Counter_Intelligence_CAV_PAL_side1_DS2_2019-10-22_16-58-25_pos7187"

echo "[92] Decoding PAL CAV: Domesday_DD86-DS9_CommunityNorth_20200814_CAV_PAL_00001-54000_pos7213..."
ld-decode --PAL --start 7213 --length 33 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS9/Domesday_DD86-DS9_CommunityNorth_20200814_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS9_CommunityNorth_20200814_CAV_PAL_00001-54000_pos7213"

echo "[93] Decoding PAL CAV: Domesday_DD86-DS9_CommunityNorth_20200814_CAV_PAL_00001-54000_pos10052..."
ld-decode --PAL --start 10052 --length 35 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS9/Domesday_DD86-DS9_CommunityNorth_20200814_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS9_CommunityNorth_20200814_CAV_PAL_00001-54000_pos10052"

echo "[94] Decoding PAL CAV: EcoDisc_DD86-DS3_Side1_20200803_CAV_PAL_00001-54000_pos50019..."
ld-decode --PAL --start 50019 --length 30 "/home/sdi/raid/library/BBC_AIV/EcoDisc/EcoDisc_DS3/EcoDisc_DD86-DS3_Side1_20200803_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/EcoDisc_DD86-DS3_Side1_20200803_CAV_PAL_00001-54000_pos50019"

echo "[95] Decoding PAL CAV: The_World_the_UN_and_You_CAV_PAL_Disc7_2019-09-15_21-59-24_pos29650..."
ld-decode --PAL --start 29650 --length 35 "/home/sdi/raid/library/Interactive_Video/The_UN/The World the UN and You_CAV_PAL_Disc7_2019-09-15_21-59-24.ldf" "../../ld-decode/pal/cav/The_World_the_UN_and_You_CAV_PAL_Disc7_2019-09-15_21-59-24_pos29650"

echo "[96] Decoding PAL CAV: GGV1011_CAV_PAL_side2_DD1_2019-06-12_20-35-19_pos11337..."
ld-decode --PAL --start 11337 --length 39 "/home/sdi/raid/library/Calibration/GGV1011/GGV1011_CAV_PAL_side2_DD1_2019-06-12_20-35-19.ldf" "../../ld-decode/pal/cav/GGV1011_CAV_PAL_side2_DD1_2019-06-12_20-35-19_pos11337"

echo "[97] Decoding PAL CAV: GGV1011_CAV_PAL_side2_DD1_2019-06-12_20-35-19_pos1366..."
ld-decode --PAL --start 1366 --length 38 "/home/sdi/raid/library/Calibration/GGV1011/GGV1011_CAV_PAL_side2_DD1_2019-06-12_20-35-19.ldf" "../../ld-decode/pal/cav/GGV1011_CAV_PAL_side2_DD1_2019-06-12_20-35-19_pos1366"

echo "[98] Decoding PAL CAV: GGV1011_CAV_PAL_side1_DD1_2019-06-12_20-18-21_pos17298..."
ld-decode --PAL --start 17298 --length 32 "/home/sdi/raid/library/Calibration/GGV1011/GGV1011_CAV_PAL_side1_DD1_2019-06-12_20-18-21.ldf" "../../ld-decode/pal/cav/GGV1011_CAV_PAL_side1_DD1_2019-06-12_20-18-21_pos17298"

echo "[99] Decoding PAL CAV: Countryside_DD86-DS4_Side1_20210106_CAV_PAL_00001-54085_pos10378..."
ld-decode --PAL --start 10378 --length 31 "/home/sdi/raid/library/BBC_AIV/Countryside/Countryside_DS4/Countryside_DD86-DS4_Side1_20210106_CAV_PAL_00001-54085.ldf" "../../ld-decode/pal/cav/Countryside_DD86-DS4_Side1_20210106_CAV_PAL_00001-54085_pos10378"

echo "[100] Decoding PAL CAV: Countryside_DD86-DS1_Side1_20200101_CAV_PAL_00001-54085_pos49551..."
ld-decode --PAL --start 49551 --length 34 "/home/sdi/raid/library/BBC_AIV/Countryside/Countryside_DS1/Countryside_DD86-DS1_Side1_20200101_CAV_PAL_00001-54085.ldf" "../../ld-decode/pal/cav/Countryside_DD86-DS1_Side1_20200101_CAV_PAL_00001-54085_pos49551"

echo "[101] Decoding PAL CAV: North_Polar_Expedition_DD86-DS1_Side1_20210103_CAV_PAL_00001-51437_pos13511..."
ld-decode --PAL --start 13511 --length 34 "/home/sdi/raid/library/BBC_AIV/North_Polar_Expedition/NPE_DS1/North_Polar_Expedition_DD86-DS1_Side1_20210103_CAV_PAL_00001-51437.ldf" "../../ld-decode/pal/cav/North_Polar_Expedition_DD86-DS1_Side1_20210103_CAV_PAL_00001-51437_pos13511"

echo "[102] Decoding PAL CAV: North_Polar_Expedition_DD86-DS1_Side1_20210103_CAV_PAL_00001-51437_pos48118..."
ld-decode --PAL --start 48118 --length 40 "/home/sdi/raid/library/BBC_AIV/North_Polar_Expedition/NPE_DS1/North_Polar_Expedition_DD86-DS1_Side1_20210103_CAV_PAL_00001-51437.ldf" "../../ld-decode/pal/cav/North_Polar_Expedition_DD86-DS1_Side1_20210103_CAV_PAL_00001-51437_pos48118"

echo "[103] Decoding PAL CAV: Domesday_DD86-DS11_CommunitySouth_20200814_CAV_PAL_00001-54000_pos28827..."
ld-decode --PAL --start 28827 --length 30 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS11/Domesday_DD86-DS11_CommunitySouth_20200814_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS11_CommunitySouth_20200814_CAV_PAL_00001-54000_pos28827"

echo "[104] Decoding PAL CAV: Domesday_DD86-DS11_CommunitySouth_20200814_CAV_PAL_00001-54000_pos4570..."
ld-decode --PAL --start 4570 --length 33 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS11/Domesday_DD86-DS11_CommunitySouth_20200814_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS11_CommunitySouth_20200814_CAV_PAL_00001-54000_pos4570"

echo "[105] Decoding PAL CAV: Countryside_DD86-DS2_Side1_20200803_CAV_PAL_00001-54085_pos43266..."
ld-decode --PAL --start 43266 --length 30 "/home/sdi/raid/library/BBC_AIV/Countryside/Countryside_DS2/Countryside_DD86-DS2_Side1_20200803_CAV_PAL_00001-54085.ldf" "../../ld-decode/pal/cav/Countryside_DD86-DS2_Side1_20200803_CAV_PAL_00001-54085_pos43266"

echo "[106] Decoding PAL CAV: Domesday_DD86-DS4_NationalA_PP_20191014_CAV_PAL_00001-54000_pos6700..."
ld-decode --PAL --start 6700 --length 31 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS4/Domesday_DD86-DS4_NationalA_PP_20191014_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS4_NationalA_PP_20191014_CAV_PAL_00001-54000_pos6700"

echo "[107] Decoding PAL CAV: Domesday_DD86-DS4_NationalA_PP_20191014_CAV_PAL_00001-54000_pos10459..."
ld-decode --PAL --start 10459 --length 40 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS4/Domesday_DD86-DS4_NationalA_PP_20191014_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Domesday_DD86-DS4_NationalA_PP_20191014_CAV_PAL_00001-54000_pos10459"

echo "[108] Decoding PAL CAV: Volcanoes_DD86-DS1_Side1_20191227_CAV_PAL_00001-54000_pos37942..."
ld-decode --PAL --start 37942 --length 39 "/home/sdi/raid/library/BBC_AIV/Volcanoes/Volcanoes_DS1/Volcanoes_DD86-DS1_Side1_20191227_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Volcanoes_DD86-DS1_Side1_20191227_CAV_PAL_00001-54000_pos37942"

echo "[109] Decoding PAL CAV: Volcanoes_DD86-DS1_Side1_20191227_CAV_PAL_00001-54000_pos44988..."
ld-decode --PAL --start 44988 --length 37 "/home/sdi/raid/library/BBC_AIV/Volcanoes/Volcanoes_DS1/Volcanoes_DD86-DS1_Side1_20191227_CAV_PAL_00001-54000.ldf" "../../ld-decode/pal/cav/Volcanoes_DD86-DS1_Side1_20191227_CAV_PAL_00001-54000_pos44988"

echo "=== PAL CLV Decodes (4-5 per disc, MORE since fewer files) ==="
echo "[110] Decoding PAL CLV: Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60_pos10949..."
ld-decode --PAL --start 10949 --length 35 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS1/Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60_pos10949"

echo "[111] Decoding PAL CLV: Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60_pos9141..."
ld-decode --PAL --start 9141 --length 38 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS1/Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60_pos9141"

echo "[112] Decoding PAL CLV: Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60_pos11758..."
ld-decode --PAL --start 11758 --length 32 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS1/Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60_pos11758"

echo "[113] Decoding PAL CLV: Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60_pos30254..."
ld-decode --PAL --start 30254 --length 37 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS1/Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60_pos30254"

echo "[114] Decoding PAL CLV: Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60_pos32915..."
ld-decode --PAL --start 32915 --length 31 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS1/Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS1_NationalB_PP_20191014_CLV_PAL_00-60_pos32915"

echo "[115] Decoding PAL CLV: Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60_pos1637..."
ld-decode --PAL --start 1637 --length 30 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS2/Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60_pos1637"

echo "[116] Decoding PAL CLV: Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60_pos3627..."
ld-decode --PAL --start 3627 --length 38 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS2/Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60_pos3627"

echo "[117] Decoding PAL CLV: Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60_pos12730..."
ld-decode --PAL --start 12730 --length 30 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS2/Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60_pos12730"

echo "[118] Decoding PAL CLV: Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60_pos21301..."
ld-decode --PAL --start 21301 --length 39 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS2/Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS2_NationalB_PP_20191014_CLV_PAL_00-60_pos21301"

echo "[119] Decoding PAL CLV: Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58_pos78995..."
ld-decode --PAL --start 78995 --length 36 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS3/Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58_pos78995"

echo "[120] Decoding PAL CLV: Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58_pos14518..."
ld-decode --PAL --start 14518 --length 36 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS3/Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58_pos14518"

echo "[121] Decoding PAL CLV: Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58_pos49384..."
ld-decode --PAL --start 49384 --length 32 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS3/Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58_pos49384"

echo "[122] Decoding PAL CLV: Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58_pos23800..."
ld-decode --PAL --start 23800 --length 39 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS3/Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58_pos23800"

echo "[123] Decoding PAL CLV: Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58_pos26860..."
ld-decode --PAL --start 26860 --length 30 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS3/Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS3_NationalB_NP_20191014_CLV_PAL_00-58_pos26860"

echo "[124] Decoding PAL CLV: Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60_pos84396..."
ld-decode --PAL --start 84396 --length 39 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS4/Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60_pos84396"

echo "[125] Decoding PAL CLV: Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60_pos25325..."
ld-decode --PAL --start 25325 --length 39 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS4/Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60_pos25325"

echo "[126] Decoding PAL CLV: Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60_pos19040..."
ld-decode --PAL --start 19040 --length 39 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS4/Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60_pos19040"

echo "[127] Decoding PAL CLV: Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60_pos66261..."
ld-decode --PAL --start 66261 --length 38 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS4/Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS4_NationalB_PP_20191014_CLV_PAL_00-60_pos66261"

echo "[128] Decoding PAL CLV: Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60_pos33703..."
ld-decode --PAL --start 33703 --length 30 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS5/Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60_pos33703"

echo "[129] Decoding PAL CLV: Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60_pos78722..."
ld-decode --PAL --start 78722 --length 34 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS5/Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60_pos78722"

echo "[130] Decoding PAL CLV: Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60_pos58216..."
ld-decode --PAL --start 58216 --length 38 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS5/Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60_pos58216"

echo "[131] Decoding PAL CLV: Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60_pos5758..."
ld-decode --PAL --start 5758 --length 36 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS5/Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS5_NationalB_AK_20191111_CLV_PAL_00-60_pos5758"

echo "[132] Decoding PAL CLV: Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60_pos52992..."
ld-decode --PAL --start 52992 --length 37 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS6/Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60_pos52992"

echo "[133] Decoding PAL CLV: Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60_pos23748..."
ld-decode --PAL --start 23748 --length 32 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS6/Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60_pos23748"

echo "[134] Decoding PAL CLV: Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60_pos41676..."
ld-decode --PAL --start 41676 --length 36 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS6/Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60_pos41676"

echo "[135] Decoding PAL CLV: Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60_pos4174..."
ld-decode --PAL --start 4174 --length 37 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS6/Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS6_NationalB_PP_20200803_CLV_PAL_00-60_pos4174"

echo "[136] Decoding PAL CLV: Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44_pos15535..."
ld-decode --PAL --start 15535 --length 40 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS7/Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44_pos15535"

echo "[137] Decoding PAL CLV: Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44_pos1109..."
ld-decode --PAL --start 1109 --length 33 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS7/Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44_pos1109"

echo "[138] Decoding PAL CLV: Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44_pos10096..."
ld-decode --PAL --start 10096 --length 30 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS7/Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44_pos10096"

echo "[139] Decoding PAL CLV: Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44_pos23090..."
ld-decode --PAL --start 23090 --length 38 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS7/Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44_pos23090"

echo "[140] Decoding PAL CLV: Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44_pos27917..."
ld-decode --PAL --start 27917 --length 32 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS7/Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS7_NationalB_PP_20200215_CLV_PAL_00-44_pos27917"

echo "[141] Decoding PAL CLV: Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60_pos48801..."
ld-decode --PAL --start 48801 --length 37 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS8/Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60_pos48801"

echo "[142] Decoding PAL CLV: Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60_pos12705..."
ld-decode --PAL --start 12705 --length 31 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS8/Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60_pos12705"

echo "[143] Decoding PAL CLV: Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60_pos33536..."
ld-decode --PAL --start 33536 --length 35 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS8/Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60_pos33536"

echo "[144] Decoding PAL CLV: Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60_pos57372..."
ld-decode --PAL --start 57372 --length 30 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS8/Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60_pos57372"

echo "[145] Decoding PAL CLV: Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60_pos75389..."
ld-decode --PAL --start 75389 --length 40 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS8/Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS8_NationalB_PP_20210104_CLV_PAL_00-60_pos75389"

echo "[146] Decoding PAL CLV: Domesday_DD86-DS9_NationalB_NP_20200829_CLV_PAL_00-58_pos52075..."
ld-decode --PAL --start 52075 --length 37 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS9/Domesday_DD86-DS9_NationalB_NP_20200829_CLV_PAL_00-58.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS9_NationalB_NP_20200829_CLV_PAL_00-58_pos52075"

echo "[147] Decoding PAL CLV: Domesday_DD86-DS9_NationalB_NP_20200829_CLV_PAL_00-58_pos70216..."
ld-decode --PAL --start 70216 --length 38 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS9/Domesday_DD86-DS9_NationalB_NP_20200829_CLV_PAL_00-58.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS9_NationalB_NP_20200829_CLV_PAL_00-58_pos70216"

echo "[148] Decoding PAL CLV: Domesday_DD86-DS9_NationalB_NP_20200829_CLV_PAL_00-58_pos25792..."
ld-decode --PAL --start 25792 --length 39 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS9/Domesday_DD86-DS9_NationalB_NP_20200829_CLV_PAL_00-58.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS9_NationalB_NP_20200829_CLV_PAL_00-58_pos25792"

echo "[149] Decoding PAL CLV: Domesday_DD86-DS9_NationalB_NP_20200829_CLV_PAL_00-58_pos58916..."
ld-decode --PAL --start 58916 --length 35 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS9/Domesday_DD86-DS9_NationalB_NP_20200829_CLV_PAL_00-58.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS9_NationalB_NP_20200829_CLV_PAL_00-58_pos58916"

echo "[150] Decoding PAL CLV: Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60_pos59886..."
ld-decode --PAL --start 59886 --length 37 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS10/Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60_pos59886"

echo "[151] Decoding PAL CLV: Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60_pos67040..."
ld-decode --PAL --start 67040 --length 35 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS10/Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60_pos67040"

echo "[152] Decoding PAL CLV: Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60_pos42162..."
ld-decode --PAL --start 42162 --length 33 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS10/Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60_pos42162"

echo "[153] Decoding PAL CLV: Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60_pos65297..."
ld-decode --PAL --start 65297 --length 39 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS10/Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS10_NationalB_PP_20200830_CLV_PAL_00-60_pos65297"

echo "[154] Decoding PAL CLV: Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60_pos61288..."
ld-decode --PAL --start 61288 --length 38 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS11/Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60_pos61288"

echo "[155] Decoding PAL CLV: Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60_pos5306..."
ld-decode --PAL --start 5306 --length 37 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS11/Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60_pos5306"

echo "[156] Decoding PAL CLV: Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60_pos53097..."
ld-decode --PAL --start 53097 --length 37 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS11/Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60_pos53097"

echo "[157] Decoding PAL CLV: Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60_pos31945..."
ld-decode --PAL --start 31945 --length 33 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS11/Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60_pos31945"

echo "[158] Decoding PAL CLV: Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60_pos47600..."
ld-decode --PAL --start 47600 --length 30 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS11/Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS11_NationalB_NP_20200830_CLV_PAL_00-60_pos47600"

echo "[159] Decoding PAL CLV: Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60_pos52751..."
ld-decode --PAL --start 52751 --length 40 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS12/Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60_pos52751"

echo "[160] Decoding PAL CLV: Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60_pos35558..."
ld-decode --PAL --start 35558 --length 37 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS12/Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60_pos35558"

echo "[161] Decoding PAL CLV: Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60_pos43502..."
ld-decode --PAL --start 43502 --length 36 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS12/Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60_pos43502"

echo "[162] Decoding PAL CLV: Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60_pos42041..."
ld-decode --PAL --start 42041 --length 38 "/home/sdi/raid/library/BBC_AIV/Domesday/Domesday_DS12/Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60.ldf" "../../ld-decode/pal/clv/Domesday_DD86-DS12_NationalB_PP_20220710_CLV_PAL_00-60_pos42041"

echo "[163] Decoding PAL CLV: DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49_pos29247..."
ld-decode --PAL --start 29247 --length 35 "/home/sdi/raid/library/BBC_AIV/Test_Pressings/TP06/DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49.ldf" "../../ld-decode/pal/clv/DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49_pos29247"

echo "[164] Decoding PAL CLV: DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49_pos70554..."
ld-decode --PAL --start 70554 --length 32 "/home/sdi/raid/library/BBC_AIV/Test_Pressings/TP06/DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49.ldf" "../../ld-decode/pal/clv/DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49_pos70554"

echo "[165] Decoding PAL CLV: DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49_pos1747..."
ld-decode --PAL --start 1747 --length 30 "/home/sdi/raid/library/BBC_AIV/Test_Pressings/TP06/DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49.ldf" "../../ld-decode/pal/clv/DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49_pos1747"

echo "[166] Decoding PAL CLV: DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49_pos23454..."
ld-decode --PAL --start 23454 --length 31 "/home/sdi/raid/library/BBC_AIV/Test_Pressings/TP06/DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49.ldf" "../../ld-decode/pal/clv/DD_TImagesOf80s_TP06_CLV_PAL_side2_Armstrong_2020-08-04_11-54-49_pos23454"

echo ""
echo "======================================="
echo "Generated 166 decode commands"
echo "======================================="
