% The list of user's objects aligned and no aligned with the PubTator's IDs in the KB

% Aligned objects: 

aligned('CREBBP').
aligned('MAFG').
aligned('NFE2L2').
aligned('EP300').
aligned('TKT').

% No aligned objects: 

no_aligned('MAGNESIUM(2+)').
no_aligned('THIAMINE(1+) DIPHOSPHATE(3-)').

% User's objects with alternative alignments: 

aligned_as(none, none).

% General report of aligned and no aligned objects: 

aligned_objs(['CREBBP', 'MAFG', 'NFE2L2', 'EP300', 'TKT'], 5).

no_aligned_objs(['MAGNESIUM(2+)', 'THIAMINE(1+) DIPHOSPHATE(3-)'], 2).

aligned_as([], 0).

aligned_and_alternatives(['MAFG', 'NFE2L2', 'EP300', 'TKT', 'CREBBP'], 5).