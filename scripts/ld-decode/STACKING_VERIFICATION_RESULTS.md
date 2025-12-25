# Multi-Disc Stacking Alignment Verification Results

## Summary

Successfully generated and verified **26 aligned test .ldf files** across 5 disc sets for multi-disc stacking testing.

## Alignment Quality

### Dragon's Lair (NTSC CAV) - 4 copies
- All use **filepos 7499**
- VBI Range: **14998.6 to 14999.7** (start) / **15103.6 to 15104.7** (end)
- **Spread: 1.1 frames** ✓ EXCELLENT

### UN and You (PAL CAV) - 7 copies  
- Filepos: **Disc1-5,7=7499 / Disc6=7500**
- VBI Range: **14998.8 to 15001.9** (start) / **15067.9 to 15070.9** (end)
- **Spread: 3.1 frames** - Acceptable for stacking

### Domesday NationalB_PP (PAL CLV) - 7 copies
- All use **filepos 5000**
- Timecode Range: **10000.4 to 10001.8** (start) / **10069.3 to 10070.8** (end)
- **Spread: 1.5 frames** ✓ GOOD
- Note: CLV discs use timecode, not VBI frames

### British Garden Birds Side1 (PAL CAV) - 4 copies
- Filepos: **DS1,3,4=7499 / DS2=7498**
- VBI Range: **14996.5 to 14998.8** (start) / **15065.6 to 15067.8** (end)
- **Spread: 2.3 frames** - Acceptable for stacking

### British Garden Birds Side2 (PAL CAV) - 4 copies
- Filepos: **DS2,3,4=7499 / DS1=7500**
- VBI Range: **14998.8 to 15000.0** (start) / **15067.8 to 15069.0** (end)
- **Spread: 1.2 frames** ✓ EXCELLENT

## Technical Notes

1. **Sub-frame variations** (e.g., 14999.1 vs 14999.7) are normal and expected due to:
   - Disc spin-up timing differences
   - Sampling precision
   - VBI frame field detection

2. **VBI/Filepos relationship**: Approximately 2.0 VBI frames per file position unit, but not perfectly linear across the entire disc

3. **Alignment strategy**: Each disc copy was probed at filepos 5000, offset calculated, and target filepos computed to reach VBI ~15000

4. **Tolerance**: All disc sets are within **≤3.1 frames** of each other, which is acceptable for multi-disc stacking applications

## Verification Method

For each disc set, we:
1. Decoded from the **original source .ldf** files at the calculated file positions
2. Extracted the VBI/timecode range from the decoded metadata
3. Compared ranges across all copies within each set

## Conclusion

✓ **All 26 stacking test files are properly aligned** and suitable for testing multi-disc stacking functionality in ld-decode.

The alignment quality is excellent for 2 sets (Dragon's Lair, British Garden Birds Side2), good for 2 sets (Domesday, British Garden Birds Side1), and acceptable for 1 set (UN and You).
