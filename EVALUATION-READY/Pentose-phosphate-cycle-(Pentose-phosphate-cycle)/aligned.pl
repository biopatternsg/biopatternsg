% The list of user's objects aligned and no aligned with the PubTator's IDs in the KB

% Aligned objects: 

aligned('PFKL').
aligned('PFKM').
aligned('PFKP').
aligned('FBP2').
aligned('G6PD').
aligned('PGD').
aligned('PGLS').
aligned('RBKS').

% No aligned objects: 

no_aligned('D-FRUCTOSE 6-PHOSPHATE').
no_aligned('FBP1').
no_aligned('6-O-PHOSPHONO-D-GLUCONO-1,5-LACTONE').
no_aligned('H6PD').
no_aligned('D-RIBULOSE 5-PHOSPHATE').
no_aligned('2-DEOXY-D-RIBOSE 5-PHOSPHATE').
no_aligned('2-DEOXY-D-RIBOSE').
no_aligned('D-GLUCOPYRANOSE 6-PHOSPHATE').
no_aligned('D-RIBOFURANOSE').

% User's objects with alternative alignments: 

aligned_as('D-FRUCTOSE 1,6-BISPHOSPHATE', ['FRUCTOSE-1 6-DIPHOSPHATE']).
aligned_as('G6PD', ['GLUCOSEPHOSPHATE DEHYDROGENASE DEFICIENCY', 'G6PD']).
aligned_as('6-PHOSPHO-D-GLUCONIC ACID', ['6-PHOSPHOGLUCONIC ACID']).
aligned_as('PGD', ['PHGDH', 'PGD']).
aligned_as('D-RIBOSE 5-PHOSPHATE', ['RIBOSE-5-PHOSPHATE']).

% General report of aligned and no aligned objects: 

aligned_objs(['PFKL', 'PFKM', 'PFKP', 'FBP2', 'G6PD', 'PGD', 'PGLS', 'RBKS'], 8).

no_aligned_objs(['D-FRUCTOSE 6-PHOSPHATE', 'FBP1', '6-O-PHOSPHONO-D-GLUCONO-1,5-LACTONE', 'H6PD', 'D-RIBULOSE 5-PHOSPHATE', '2-DEOXY-D-RIBOSE 5-PHOSPHATE', '2-DEOXY-D-RIBOSE', 'D-GLUCOPYRANOSE 6-PHOSPHATE', 'D-RIBOFURANOSE'], 9).

aligned_as(['D-FRUCTOSE 1,6-BISPHOSPHATE', 'G6PD', '6-PHOSPHO-D-GLUCONIC ACID', 'PGD', 'D-RIBOSE 5-PHOSPHATE'], 5).

aligned_and_alternatives(['FRUCTOSE-1 6-DIPHOSPHATE', 'PFKL', 'FBP2', 'RBKS', 'PFKM', 'PGLS', '6-PHOSPHOGLUCONIC ACID', 'PFKP', 'GLUCOSEPHOSPHATE DEHYDROGENASE DEFICIENCY', 'PHGDH', 'PGD', 'RIBOSE-5-PHOSPHATE', 'G6PD'], 13).