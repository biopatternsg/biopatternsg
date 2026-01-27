% The list of user's objects aligned and no aligned with the PubTator's IDs in the KB

% Aligned objects: 

aligned('CREBBP').
aligned('MAFK').
aligned('NFE2L2').
aligned('EP300').
aligned('MYC').
aligned('NFKB1').
aligned('RELA').
aligned('NOTCH1').

% No aligned objects: 

no_aligned(none).


% User's objects with alternative alignments: 

aligned_as('MYC', ['MYC', 'MYRICETIN']).
aligned_as('RELA', ['RELA', 'REL']).

% General report of aligned and no aligned objects: 

aligned_objs(['CREBBP', 'MAFK', 'NFE2L2', 'EP300', 'MYC', 'NFKB1', 'RELA', 'NOTCH1'], 8).

no_aligned_objs([], 0).

aligned_as(['MYC', 'RELA'], 2).

aligned_and_alternatives(['MYRICETIN', 'RELA', 'EP300', 'MYC', 'CREBBP', 'NFKB1', 'MAFK', 'NFE2L2', 'NOTCH1', 'REL'], 10).