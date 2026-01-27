% The list of user's objects aligned and no aligned with the PubTator's IDs in the KB

% Aligned objects: 

aligned('BRAF').
aligned('SPRY2').
aligned('CBL').
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

no_aligned('RPS27A').
no_aligned('UBA52').

% User's objects with alternative alignments: 

aligned_as('CBL', ['CBL', 'LYMPHOMA B-CELL']).
aligned_as('UBC', ['URINARY BLADDER NEOPLASMS', 'UBC']).
aligned_as('GRB2', ['GRB2', 'DRK']).

% General report of aligned and no aligned objects: 

aligned_objs(['BRAF', 'SPRY2', 'CBL', 'UBB', 'UBC', 'GRB2', 'PPP2CA', 'PPP2CB', 'PPP2R1A', 'MAPK1', 'MAPK3', 'MKNK1', 'PTPN11', 'SRC'], 14).

no_aligned_objs(['RPS27A', 'UBA52'], 2).

aligned_as(['CBL', 'UBC', 'GRB2'], 3).

aligned_and_alternatives(['PPP2CB', 'MKNK1', 'PTPN11', 'UBC', 'DRK', 'BRAF', 'UBB', 'URINARY BLADDER NEOPLASMS', 'LYMPHOMA B-CELL', 'MAPK1', 'SRC', 'PPP2CA', 'GRB2', 'CBL', 'PPP2R1A', 'MAPK3', 'SPRY2'], 17).