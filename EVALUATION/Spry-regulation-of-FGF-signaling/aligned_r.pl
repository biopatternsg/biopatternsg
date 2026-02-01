% The list of user's objects aligned and no aligned with the PubTator's IDs in the KB

% Aligned objects: 

aligned('BRAF').
aligned('SPRY2').
aligned('CBL').
aligned('RPS27A').
aligned('UBA52').
aligned('UBB').
aligned('UBC').
aligned('GRB2').
aligned('PPP2CA').
aligned('PPP2CB').
aligned('PPP2R1A').
aligned('MAPK1').
aligned('MAPK3').
aligned('MKNK1').
aligned('PTPN11').
aligned('SRC').

% No aligned objects: 

no_aligned(none).


% User's objects with alternative alignments: 

aligned_as('CBL', ['CBL', 'LYMPHOMA B-CELL']).
aligned_as('UBC', ['UBC', 'URINARY BLADDER NEOPLASMS']).
aligned_as('GRB2', ['GRB2', 'DRK']).

% General report of aligned and no aligned objects: 

aligned_objs(['BRAF', 'SPRY2', 'CBL', 'RPS27A', 'UBA52', 'UBB', 'UBC', 'GRB2', 'PPP2CA', 'PPP2CB', 'PPP2R1A', 'MAPK1', 'MAPK3', 'MKNK1', 'PTPN11', 'SRC'], 16).

no_aligned_objs([], 0).

aligned_as(['CBL', 'UBC', 'GRB2'], 3).

aligned_and_alternatives(['URINARY BLADDER NEOPLASMS', 'UBA52', 'GRB2', 'CBL', 'SPRY2', 'BRAF', 'PPP2CA', 'PTPN11', 'LYMPHOMA B-CELL', 'MAPK3', 'MKNK1', 'RPS27A', 'PPP2R1A', 'PPP2CB', 'UBB', 'SRC', 'DRK', 'UBC', 'MAPK1'], 19).