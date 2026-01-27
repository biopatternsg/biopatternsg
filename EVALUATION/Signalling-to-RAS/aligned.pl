% The list of user's objects aligned and no aligned with the PubTator's IDs in the KB

% Aligned objects: 

aligned('GRB2').
aligned('HRAS').
aligned('KRAS').
aligned('NRAS').
aligned('SHC1').
aligned('SHC2').
aligned('SHC3').
aligned('SOS1').
aligned('NGF').
aligned('NTRK1').

% No aligned objects: 

no_aligned(none).


% User's objects with alternative alignments: 

aligned_as('NRAS', ['NRAS', 'NEUROBLASTOMA']).
aligned_as('SOS1', ['SOS1', 'SOS']).

% General report of aligned and no aligned objects: 

aligned_objs(['GRB2', 'HRAS', 'KRAS', 'NRAS', 'SHC1', 'SHC2', 'SHC3', 'SOS1', 'NGF', 'NTRK1'], 10).

no_aligned_objs([], 0).

aligned_as(['NRAS', 'SOS1'], 2).

aligned_and_alternatives(['SHC2', 'SHC3', 'HRAS', 'KRAS', 'SOS1', 'SOS', 'NGF', 'NTRK1', 'NEUROBLASTOMA', 'SHC1', 'GRB2', 'NRAS'], 12).