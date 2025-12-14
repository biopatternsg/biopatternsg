% The list of user's objects aligned and no aligned with the PubTator's IDs in the KB

% Aligned objects: 

aligned('IL2').
aligned('IL2RA').
aligned('IL2RB').
aligned('IL2RG').
aligned('JAK1').
aligned('JAK3').
aligned('SHC1').
aligned('STAT5A').
aligned('STAT5B').
aligned('SYK').
aligned('PTK2B').
aligned('LCK').

% No aligned objects: 

no_aligned('O-ORSELLINATE DEPSIDE').
no_aligned('HETEROGLYCAN').
no_aligned('HERNANDEZINE').
no_aligned('ALPHA-METHYL-L-TYROSINE').
no_aligned('RUGOSINONE').

% User's objects with alternative alignments: 

aligned_as('IL2RG', ['IL2RG', 'INTERLEUKIN 2 RECEPTOR ALPHA DEFICIENCY OF']).
aligned_as('STAT5A', ['STAT5A', 'STAT5B']).
aligned_as('STAT5B', ['STAT5A', 'STAT5B']).

% General report of aligned and no aligned objects: 

aligned_objs(['IL2', 'IL2RA', 'IL2RB', 'IL2RG', 'JAK1', 'JAK3', 'SHC1', 'STAT5A', 'STAT5B', 'SYK', 'PTK2B', 'LCK'], 12).

no_aligned_objs(['O-ORSELLINATE DEPSIDE', 'HETEROGLYCAN', 'HERNANDEZINE', 'ALPHA-METHYL-L-TYROSINE', 'RUGOSINONE'], 5).

aligned_as(['IL2RG', 'STAT5A', 'STAT5B'], 3).

aligned_and_alternatives(['STAT5B', 'SYK', 'IL2', 'IL2RG', 'SHC1', 'PTK2B', 'LCK', 'IL2RB', 'IL2RA', 'JAK3', 'JAK1', 'STAT5A', 'INTERLEUKIN 2 RECEPTOR ALPHA DEFICIENCY OF'], 13).