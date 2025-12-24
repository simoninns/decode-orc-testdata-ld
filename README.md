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

The test data is generated from **77 LaserDisc captures** spanning different formats:

- **NTSC CAV**: 15 discs (frame-based addressing)
- **NTSC CLV**: 4 discs (timecode-based addressing)
- **PAL CAV**: 45 discs (frame-based addressing)
- **PAL CLV**: 13 discs (timecode-based addressing)

Each source disc has been analyzed to determine valid VBI frame ranges and file positions.

## Test File Generation

### Generate Test Files

The `generate_test_decodes.sh` script creates randomized test decodes:

```bash
cd scripts/ld-decode
./generate_test_decodes.sh > decode_commands.sh
```

This generates `decode_commands.sh` with ~173 decode commands that:
- Extract 48-58 frames for NTSC (target: ~50MB TBC files)
- Extract 30-40 frames for PAL (target: ~50MB TBC files)
- Sample from start/middle/end of each disc
- Create more samples from CLV discs (fewer total discs)

### Execute Decodes

```bash
cd scripts/ld-decode
./decode_commands.sh
```

This will generate test files in `ld-decode/ntsc/cav`, `ld-decode/ntsc/clv`, `ld-decode/pal/cav`, and `ld-decode/pal/clv`.

### Clean Test Files

```bash
cd scripts/ld-decode
./clean_test_files.sh
```

Removes all generated files (`.tbc`, `.tbc.json`, `.efm`, `.log`, `.pcm`, `.tbc.db`).

## TBC File Size Limits

Based on actual measurements:

- **NTSC**: ~935 KB per frame → 50 MB limit = ~53 frames maximum
- **PAL**: ~1.4 MB per frame → 50 MB limit = ~35 frames maximum

See `ld-decode/TBC_SIZE_LIMITS.txt` for details.

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
