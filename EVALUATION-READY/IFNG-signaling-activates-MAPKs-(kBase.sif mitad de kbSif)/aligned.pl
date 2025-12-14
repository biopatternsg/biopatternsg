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
aligned_as('JAK2', ['JAK2', 'JAK2B']).
aligned_as('MAPK1', ['MAPK1', 'MAPK3']).

% General report of aligned and no aligned objects: 

aligned_objs(['IFNG', 'IFNGR1', 'IFNGR2', 'JAK1', 'JAK2', 'MAPK1', 'MAPK3', 'RAF1'], 8).

no_aligned_objs([], 0).

aligned_as(['IFNG', 'IFNGR1', 'JAK2', 'MAPK1'], 4).

aligned_and_alternatives(['IFNGR1L', 'MAPK3', 'IFNGR1', 'IFNG', 'MAPK1', 'JAK1', 'JAK2B', 'RAF1', 'IFNG1', 'JAK2', 'IFNGR2'], 11).