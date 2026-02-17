% The list of user's objects aligned and no aligned with the PubTator's IDs in the KB

% Aligned objects: 

aligned('GBF1').
aligned('ARF1').
aligned('SNAP23').
aligned('STX4').
aligned('VAMP2').
aligned('VAMP7').
aligned('VAMP8').

% No aligned objects: 

no_aligned(none).


% User's objects with alternative alignments: 

aligned_as('GBF1', ['GBF1', 'GARZ']).
aligned_as('STX4', ['STX4', 'STX4A']).

% General report of aligned and no aligned objects: 

aligned_objs(['GBF1', 'ARF1', 'SNAP23', 'STX4', 'VAMP2', 'VAMP7', 'VAMP8'], 7).

no_aligned_objs([], 0).

aligned_as(['GBF1', 'STX4'], 2).

aligned_and_alternatives(['VAMP7', 'VAMP2', 'GBF1', 'STX4A', 'SNAP23', 'GARZ', 'STX4', 'VAMP8', 'ARF1'], 9).