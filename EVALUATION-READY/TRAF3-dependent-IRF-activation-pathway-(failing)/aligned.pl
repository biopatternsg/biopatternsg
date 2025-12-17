% The list of user's objects aligned and no aligned with the PubTator's IDs in the KB

% Aligned objects: 

aligned('CREBBP').
aligned('IFNB1').
aligned('IRF3').
aligned('EP300').
aligned('IFIH1').
aligned('IKBKE').
aligned('IRF7').
aligned('MAVS').
aligned('TBK1').
aligned('TRAF3').
aligned('RNF135').
aligned('TRIM25').
aligned('TRIM4').

% No aligned objects: 

no_aligned('RIGI').
no_aligned('SIKE1').

% User's objects with alternative alignments: 

aligned_as('IRF3', ['IRF3', 'IRF7']).

% General report of aligned and no aligned objects: 

aligned_objs(['CREBBP', 'IFNB1', 'IRF3', 'EP300', 'IFIH1', 'IKBKE', 'IRF7', 'MAVS', 'TBK1', 'TRAF3', 'RNF135', 'TRIM25', 'TRIM4'], 13).

no_aligned_objs(['RIGI', 'SIKE1'], 2).

aligned_as(['IRF3'], 1).

aligned_and_alternatives(['CREBBP', 'IRF3', 'IKBKE', 'TRIM4', 'MAVS', 'EP300', 'TRAF3', 'IFNB1', 'TBK1', 'TRIM25', 'IRF7', 'RNF135', 'IFIH1'], 13).