# decode-orc-testdata
A repository of test data for the Decode ORC project

## Overview
This repository contains test data and automated scripts for generating ld-decode test files from a curated collection of LaserDisc captures. The test data is used to validate the decode-orc project.

## Repository Structure

```
decode-orc-testdata/
├── ld-decode/                    # Test data output directory
│   ├── ntsc/
│   │   ├── cav/                  # NTSC CAV test files
│   │   └── clv/                  # NTSC CLV test files
│   ├── pal/
│   │   ├── cav/                  # PAL CAV test files
│   │   └── clv/                  # PAL CLV test files
│   ├── ntsc-cav-master.txt       # NTSC CAV source list with frame ranges
│   ├── ntsc-clv-master.txt       # NTSC CLV source list with frame ranges
│   ├── pal-cav-master.txt        # PAL CAV source list with frame ranges
│   ├── pal-clv-master.txt        # PAL CLV source list with frame ranges
│   └── TBC_SIZE_LIMITS.txt       # Frame count limits for 50MB TBC files
│
├── scripts/ld-decode/            # Test generation and management scripts
│   ├── generate_test_decodes.sh  # Generates decode_commands.sh
│   ├── decode_commands.sh        # Executes all test decodes
│   ├── clean_test_files.sh       # Removes all generated test files
│   ├── ntsc-cav-master.txt       # Master lists (symlinked/copied here)
│   ├── ntsc-clv-master.txt
│   ├── pal-cav-master.txt
│   └── pal-clv-master.txt
│
├── ntsc-ld-sources.txt           # Original NTSC LaserDisc file list
├── pal-ld-sources.txt            # Original PAL LaserDisc file list
└── venv.txt                      # Python venv location for ld-decode
```

## Source Data

The test data is generated from **20 discs** (out of 77 analyzed LaserDisc captures) to provide maximum format and content diversity:

- **NTSC CAV**: 5 discs (calibration, arcade games, educational, audio test)
- **NTSC CLV**: 2 discs (movies)
- **PAL CAV**: 6 discs (calibration, documentaries, educational, data, entertainment)
- **PAL CLV**: 7 discs (historical data discs with variant types)

All 77 source discs have been analyzed to determine valid VBI frame ranges and file positions. The 20 selected discs represent the most diverse subset for testing purposes.

## Test File Generation

### Generate Test Files

The `generate_test_decodes.sh` script creates randomized test .ldf snippets:

```bash
cd scripts/ld-decode
./generate_test_decodes.sh
```

This generates `decode_commands.sh` with **20 decode commands** (one per selected disc) that:
- Use `--write-test-ldf` to create .ldf snippet files only (no full TBC output)
- Extract 48-58 frames for NTSC (typical .ldf size: ~50-80MB)
- Extract 30-40 frames for PAL (typical .ldf size: ~50-80MB)
- Sample from randomized positions (start/middle/end of each disc)
- Automatically clean up temporary .tbc/.json files after .ldf creation

### Execute Decodes

```bash
cd scripts/ld-decode
./decode_commands.sh
```

This will generate **20 .ldf snippet files** in:
- `ld-decode/ntsc/cav/` (5 files)
- `ld-decode/ntsc/clv/` (2 files)
- `ld-decode/pal/cav/` (6 files)
- `ld-decode/pal/clv/` (7 files)

The .ldf files contain only the RF samples needed for the selected frame ranges, making them ideal for test data repositories.

### Clean Test Files

```bash
cd scripts/ld-decode
./clean_test_files.sh
```

Removes all generated files from the output directories. Since we use `--write-test-ldf`, typically only .ldf files remain (temporary .tbc/.json files are auto-deleted during generation).

## File Size Guidelines

Based on actual measurements:

- **NTSC .ldf snippets**: 48-58 frames → typical size 50-80MB
- **PAL .ldf snippets**: 30-40 frames → typical size 50-80MB

These frame counts keep individual test files at a reasonable size for GitHub repositories while providing sufficient data for testing.

See `scripts/ld-decode/TBC_SIZE_LIMITS.txt` for TBC size calculations.

## Source Stages

Decode ORC provides source stages for different input types:

- **LDPALsource**: LaserDisc PAL TBC/metadata produced by `ld-decode --PAL`
- **LDNTSCsource**: LaserDisc NTSC TBC/metadata produced by `ld-decode --NTSC` or `--NTSCJ`

## Master Lists

Each master list (`*-master.txt`) contains:
- Full path to source `.ldf` file
- VBI frame/timecode range (where available)
- File position range for decode start/length parameters

Format: `filepath: VBI start - end | File pos start - end`

Example:
```
/path/to/disc.ldf: VBI 715 - 20715 | File pos 1000 - 21000
/path/to/disc.ldf: VBI 0:23.19 - 39:19.10 | File pos 1000 - 71000
```

## Requirements

- ld-decode installation in Python virtual environment
- Path to venv specified in `venv.txt`
- Access to LaserDisc `.ldf` capture files

## Future Additions

- VHS-decode PAL test data
- VHS-decode NTSC test data
- Chroma-encoder source test data
