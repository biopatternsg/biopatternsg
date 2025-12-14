% The list of user's objects aligned and no aligned with the PubTator's IDs in the KB

% Aligned objects: 

aligned('VPS11').
aligned('VPS16').
aligned('VPS18').
aligned('VPS33A').
aligned('VPS33B').
aligned('VPS39').
aligned('VPS41').
aligned('VPS45').

% No aligned objects: 

no_aligned('MAP1LC3B').
no_aligned('TUFM').

% User's objects with alternative alignments: 

aligned_as('VPS11', ['VPS11', 'PEP5']).
aligned_as('VPS39', ['VPS39', 'VAM6']).

% General report of aligned and no aligned objects: 

aligned_objs(['VPS11', 'VPS16', 'VPS18', 'VPS33A', 'VPS33B', 'VPS39', 'VPS41', 'VPS45'], 8).

no_aligned_objs(['MAP1LC3B', 'TUFM'], 2).

aligned_as(['VPS11', 'VPS39'], 2).

aligned_and_alternatives(['VPS39', 'VPS16', 'VPS41', 'VPS11', 'VPS33A', 'VAM6', 'VPS18', 'VPS33B', 'VPS45', 'PEP5'], 10).