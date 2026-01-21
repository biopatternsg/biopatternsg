% The list of user's objects aligned and no aligned with the PubTator's IDs in the KB

% Aligned objects: 

aligned('MAPKAPK2').
aligned('CREB1').
aligned('RPS6KA1').
aligned('RPS6KA2').
aligned('RPS6KA3').
aligned('RPS6KA5').
aligned('ATF1').

% No aligned objects: 

no_aligned(none).


% User's objects with alternative alignments: 

aligned_as('RPS6KA3', ['RPS6KA3', 'RPS6KA3A']).

% General report of aligned and no aligned objects: 

aligned_objs(['MAPKAPK2', 'CREB1', 'RPS6KA1', 'RPS6KA2', 'RPS6KA3', 'RPS6KA5', 'ATF1'], 7).

no_aligned_objs([], 0).

aligned_as(['RPS6KA3'], 1).

aligned_and_alternatives(['CREB1', 'RPS6KA3', 'RPS6KA5', 'ATF1', 'MAPKAPK2', 'RPS6KA1', 'RPS6KA2', 'RPS6KA3A'], 8).