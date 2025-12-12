# Chapter 4 NExUME - Appendix Reorganization Summary

## Appendix Content Analysis and Reorganization

### Content Integrated into Main Chapter Text

The following appendix content has been integrated into the main chapter narrative:

#### 1. **FMRE (Feature Map Reconstruction Error) Dropout**
- **Original Location**: Appendix/FMRE.tex
- **New Location**: Integrated into Section 4.4 (DynFit) as part of the adaptive dropout strategy
- **Rationale**: This is a core technical contribution that explains how dropout rates are determined based on feature importance. Essential for understanding DynFit's operation.

#### 2. **Taylor Expansion Dropout**
- **Original Location**: Appendix/taylor.tex
- **New Location**: Integrated into Section 4.4 as part of importance-weighted dropout
- **Rationale**: The gradient-based importance calculation is fundamental to the method and should be in the main text.

#### 3. **Additional Experimental Results**
- **Original Location**: Appendix/MoreResults.tex (Tables for MSP/Arduino with different harvesters)
- **New Location**: Summarized in Section 4.7 Results, with key findings integrated into cross-platform evaluation
- **Rationale**: These results demonstrate generalizability across platforms and energy sources - critical evidence for the method's effectiveness.

#### 4. **Core Algorithms**
- **Original Location**: Algos/DynFit.tex, Algos/DynInferAlgo.tex
- **New Location**: Algorithms 4.1 and 4.2 in Sections 4.4 and 4.5
- **Rationale**: These algorithms are essential for understanding and reproducing the method.

### Content Recommended for Thesis Appendix

The following should remain in a thesis-level appendix (not the main chapter):

#### 1. **LEA Implementation Codes**
- **Files**: Appendix/LEACodes.tex
- **Content**: Detailed TI LEA DSP library calls and low-level implementation
- **Rationale**: Too implementation-specific and platform-dependent for the main narrative. Useful for reproducibility but not essential for understanding the contribution.

#### 2. **ReRAM Crossbar Details**
- **Files**: Appendix/ReRAMxBar.tex
- **Content**: Circuit-level details of ReRAM implementation
- **Rationale**: Hardware-specific implementation details that, while interesting, are not core to the NExUME contribution.

#### 3. **Alternative Pruning Methods**
- **Files**: Appendix/obd.tex, Appendix/shapely.tex, Appendix/spmask.tex, Appendix/L2Dynamic.tex
- **Content**: Detailed mathematical formulations of baseline pruning methods
- **Rationale**: These are comparison methods, not contributions of this work. Including them in appendix provides completeness without cluttering the main narrative.

#### 4. **Low-Level Implementation Details**
- **Files**: Appendix/SWHWCkpt.tex, Algos/uProfileCache.tex, Algos/uProfileKernel.tex
- **Content**: Checkpointing implementation, cache profiling, kernel profiling code
- **Rationale**: Implementation details that aid reproducibility but are not necessary for understanding the conceptual contributions.

#### 5. **Energy Harvesting Background**
- **Files**: Appendix/EnergyHarvesting.tex
- **Content**: Tutorial material on energy harvesting basics
- **Rationale**: Background material that some readers may find helpful but is not specific to this contribution.

## Integration Strategy Used

### For Mathematical Content (FMRE, Taylor)
- Extracted the key equations and insights
- Integrated them into the relevant sections with proper context
- Simplified notation where possible for consistency with main text
- Preserved mathematical rigor while improving readability

### For Experimental Results
- Consolidated multiple tables into summary statistics
- Highlighted the most important findings in the main text
- Preserved detailed breakdowns for the appendix
- Added interpretation and analysis that was missing from raw results

### For Algorithms
- Reformatted using standard algorithm environment
- Added clear input/output specifications
- Simplified pseudocode while preserving essential details
- Added explanatory text before and after each algorithm

## Narrative Improvements from Reorganization

1. **Stronger Technical Depth**: By including FMRE and Taylor expansion details in the main text, readers get a complete understanding of the technical innovation without needing to flip to appendices.

2. **Better Flow**: The chapter now has all essential information for understanding and evaluating NExUME in the main narrative, with appendices serving only for additional detail and reproducibility.

3. **Clearer Contributions**: With the core algorithms in the main text, the technical contributions are immediately clear and concrete.

4. **Maintained Focus**: By keeping implementation-specific details in appendices, the main chapter maintains focus on the core insights and contributions without getting bogged down in platform-specific details.

## Recommendations for Thesis Formatting

1. Create a dedicated "Appendix B: NExUME Implementation Details" that includes:
   - LEA implementation codes
   - Checkpointing details
   - Platform-specific optimizations

2. Create "Appendix C: Additional NExUME Results" that includes:
   - Complete tables for all platform-harvester combinations
   - Detailed ablation studies
   - Extended evaluation metrics

3. Consider creating "Appendix D: Baseline Methods" that consolidates the mathematical formulations of all comparison methods across chapters.

## Impact on Chapter Length

- Original paper: ~10 pages main text + 15 pages appendix
- New chapter: ~40 pages of cohesive narrative
- Thesis appendix: ~10 pages of supplementary material
- This redistribution creates a more complete and self-contained chapter while keeping supplementary material available for interested readers.