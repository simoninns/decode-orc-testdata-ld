# Multi-Disc Stacking Test Files

This directory contains test `.ldf` files for testing multi-disc stacking functionality in ld-decode.

## Purpose

Multi-disc stacking allows ld-decode to combine multiple copies of the same laserdisc to improve quality by:
- Averaging out dropout errors
- Reducing noise
- Improving overall signal quality

These test files contain the **same master content** but from **different physical disc copies**, allowing stacking algorithms to process them together.

## File Organization

```
ld-decode-stacking/
├── ntsc/cav/    - NTSC CAV discs (53 frames each)
├── pal/cav/     - PAL CAV discs (35 frames each)
└── pal/clv/     - PAL CLV discs (35 frames each)
```

## Test Sets

### 1. Dragon's Lair (NTSC CAV) - 4 copies
All aligned to **VBI frame 15000**:
- `Dragons-Lair_DS1_Side1_VBI15000.ldf`
- `Dragons-Lair_DS2_Side1_VBI15000.ldf`
- `Dragons-Lair_DS3_Side1_VBI15000.ldf`
- `Dragons-Lair_DS4_Side1_VBI15000.ldf`

Each file: ~40MB, 53 frames

### 2. The World the UN and You (PAL CAV) - 7 copies
All aligned to **VBI frame 15000**:
- `UN-You_Disc1_VBI15000.ldf`
- `UN-You_Disc2_VBI15000.ldf`
- `UN-You_Disc3_VBI15000.ldf`
- `UN-You_Disc4_VBI15000.ldf`
- `UN-You_Disc5_VBI15000.ldf`
- `UN-You_Disc6_VBI15000.ldf`
- `UN-You_Disc7_VBI15000.ldf`

Each file: ~33MB, 35 frames

### 3. Domesday NationalB_PP (PAL CLV) - 7 copies
All starting at **file position 5000**:
- `Domesday_DS1_NationalB_PP_pos5000.ldf`
- `Domesday_DS2_NationalB_PP_pos5000.ldf`
- `Domesday_DS4_NationalB_PP_pos5000.ldf`
- `Domesday_DS6_NationalB_PP_pos5000.ldf`
- `Domesday_DS8_NationalB_PP_pos5000.ldf`
- `Domesday_DS10_NationalB_PP_pos5000.ldf`
- `Domesday_DS12_NationalB_PP_pos5000.ldf`

Each file: ~33MB, 35 frames
Note: CLV discs use file position alignment as they are timecode-based, not VBI frame-based.

### 4. British Garden Birds Side1 (PAL CAV) - 4 copies
All aligned to **VBI frame 15000**:
- `British-Garden-Birds_DS1_Side1_VBI15000.ldf`
- `British-Garden-Birds_DS2_Side1_VBI15000.ldf`
- `British-Garden-Birds_DS3_Side1_VBI15000.ldf`
- `British-Garden-Birds_DS4_Side1_VBI15000.ldf`

Each file: ~33MB, 35 frames

### 5. British Garden Birds Side2 (PAL CAV) - 4 copies
All aligned to **VBI frame 15000**:
- `British-Garden-Birds_DS1_Side2_VBI15000.ldf`
- `British-Garden-Birds_DS2_Side2_VBI15000.ldf`
- `British-Garden-Birds_DS3_Side2_VBI15000.ldf`
- `British-Garden-Birds_DS4_Side2_VBI15000.ldf`

Each file: ~33MB, 35 frames

## Total Files
- **26 .ldf files** across 5 disc sets
- **Total size: ~922MB**

## VBI/Frame Alignment Methodology

For CAV discs, each physical copy has slightly different spin-up characteristics, causing the same VBI frame to appear at different file positions. To ensure all copies within a set align to the **same VBI frame range**, we:

1. Probed each disc at file position 5000
2. Extracted the VBI frame number from the metadata
3. Calculated the VBI offset: `offset = vbi_at_5000 - (2.0 × 5000)`
4. Calculated the required file position: `filepos = (target_vbi - offset) / 2.0`

This ensures all copies within each CAV set decode to the same VBI frames (e.g., 15000-15052 for NTSC, 15000-15034 for PAL).

For CLV discs, the same file position is used across all copies as CLV is timecode-based rather than VBI-based.

## Generation

Files were generated using:
- `scripts/ld-decode/probe_and_generate_all_stacking.sh` - Probes discs and generates decode commands
- `scripts/ld-decode/decode_stacking_commands_complete.sh` - Executes all decode commands

Command used:
```bash
ld-decode --PAL/--NTSC --start <filepos> --length <frames> --write-test-ldf <output.ldf> <source.ldf> <temp_output>
```

## Usage

To test multi-disc stacking:
1. Select a disc set (e.g., all 7 UN discs)
2. Use ld-decode's stacking functionality to combine them
3. Verify that frames align correctly and quality improves

Example:
```bash
# Stack all 7 UN discs (implementation depends on ld-decode's stacking feature)
ld-decode --stack UN-You_Disc*.ldf output_stacked
```

## Notes

- DS7 from Domesday was excluded as it has a shorter length than other copies
- DS5 from Dragon's Lair was excluded as it only contains 1 frame
- All files use the `--write-test-ldf` flag, generating raw RF samples without decoding
- VBI frame 15000 was chosen as a test point well into the disc but before content ends
- File position 5000 was used for CLV testing (arbitrary but consistent)
