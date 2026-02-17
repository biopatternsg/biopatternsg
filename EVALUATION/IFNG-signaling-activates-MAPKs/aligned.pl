% The list of user's objects aligned and no aligned with the PubTator's IDs in the KB

% Aligned objects: 

aligned('IFNG').
aligned('IFNGR1').
aligned('IFNGR2').
aligned('JAK1').
aligned('JAK2').
aligned('MAPK1').
aligned('MAPK3').
aligned('RAF1').

% No aligned objects: 

no_aligned(none).


% User's objects with alternative alignments: 

aligned_as('IFNG', ['IFNG', 'IFNG1']).
aligned_as('IFNGR1', ['IFNGR1', 'IFNGR1L']).
aligned_as('MAPK1', ['MAPK1', 'MAPK3']).

% General report of aligned and no aligned objects: 

aligned_objs(['IFNG', 'IFNGR1', 'IFNGR2', 'JAK1', 'JAK2', 'MAPK1', 'MAPK3', 'RAF1'], 8).

no_aligned_objs([], 0).

aligned_as(['IFNG', 'IFNGR1', 'MAPK1'], 3).

aligned_and_alternatives(['MAPK1', 'IFNGR1', 'IFNGR1L', 'RAF1', 'IFNG1', 'JAK2', 'MAPK3', 'JAK1', 'IFNG', 'IFNGR2'], 10).