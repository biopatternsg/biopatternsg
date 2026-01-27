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

no_aligned('SIKE1').

% User's objects with alternative alignments: 

aligned_as('IRF3', ['IRF3', 'IRF7']).
aligned_as('RIGI', ['DDX58', 'GENOMIC INSTABILITY']).

% General report of aligned and no aligned objects: 

aligned_objs(['CREBBP', 'IFNB1', 'IRF3', 'EP300', 'IFIH1', 'IKBKE', 'IRF7', 'MAVS', 'TBK1', 'TRAF3', 'RNF135', 'TRIM25', 'TRIM4'], 13).

no_aligned_objs(['SIKE1'], 1).

aligned_as(['IRF3', 'RIGI'], 2).

aligned_and_alternatives(['TRAF3', 'IFNB1', 'CREBBP', 'EP300', 'IRF3', 'IKBKE', 'TBK1', 'RNF135', 'TRIM4', 'IFIH1', 'IRF7', 'MAVS', 'GENOMIC INSTABILITY', 'DDX58', 'TRIM25'], 15).