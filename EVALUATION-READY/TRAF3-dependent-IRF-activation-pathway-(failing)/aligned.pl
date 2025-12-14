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
aligned('SIKE1').
aligned('TRIM25').
aligned('TRIM4').

% No aligned objects: 

no_aligned(none).


% User's objects with alternative alignments: 

aligned_as('IRF3', ['IRF3', 'IRF7', 'IRF-3', 'IRF3.L']).
aligned_as('IRF7', ['IRF7', 'LOC101795904']).
aligned_as('MAVS', ['MAVS', 'PLATELET SIGNAL PROCESSING DEFECT']).
aligned_as('TRAF3', ['TRAF3', 'LOC106611198']).
aligned_as('RIGI', ['DDX58', 'GENOMIC INSTABILITY']).

% General report of aligned and no aligned objects: 

aligned_objs(['CREBBP', 'IFNB1', 'IRF3', 'EP300', 'IFIH1', 'IKBKE', 'IRF7', 'MAVS', 'TBK1', 'TRAF3', 'RNF135', 'SIKE1', 'TRIM25', 'TRIM4'], 14).

no_aligned_objs([], 0).

aligned_as(['IRF3', 'IRF7', 'MAVS', 'TRAF3', 'RIGI'], 5).

aligned_and_alternatives(['SIKE1', 'GENOMIC INSTABILITY', 'LOC101795904', 'TRIM4', 'TRIM25', 'IRF-3', 'LOC106611198', 'TBK1', 'CREBBP', 'IFIH1', 'IKBKE', 'RNF135', 'PLATELET SIGNAL PROCESSING DEFECT', 'DDX58', 'IFNB1', 'EP300', 'IRF3.L', 'TRAF3', 'MAVS', 'IRF3', 'IRF7'], 21).