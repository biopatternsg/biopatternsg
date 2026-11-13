%==============================================================================
% SIDE CAR REPORT: events_ia.pl  (interaction enrichment -- sidecar only)
% Study: SST / MAPK-ERK neuroendocrine tumor correlation analysis
% Working directory: /home/jose-lopez/tools/runnable/minery/networks/MAPK-ERK/SST
%
% NOTE: This file is a SIDECAR. kBase.pl is NOT edited. The number of events
%       in kBase.pl (124,252) must match kBaseDoc.txt (124,252 Regulatory
%       Event blocks) and is preserved unchanged.
%
% All event/3 facts below use PubTator-aligned entity names only (per aligned.pl
% and synonyms.pl). LANREOTIDE (not aligned, aligned.pl:76) is excluded;
% OCTREOTIDE is used as the somatostatin-analogue representative.
%
% Each new event is annotated with:
%   % Source: <rationale> | kBase.pl supporting event line(s) | PubMed ID(s)
%
% Two groups:
%   GROUP 1: interactions highly correlated with objects in expert_objects.txt
%   GROUP 2: other proposed interactions using all provided resources
%==============================================================================

%------------------------------------------------------------------------------
% GROUP 1 -- Interactions highly correlated with objects in expert_objects.txt
%------------------------------------------------------------------------------
% Expert objects engaged: OCTREOTIDE, SST, SSTR1-5, MAPK1, MAPK3, AKT1, MTOR,
%                         NEUROENDOCRINE TUMORS, CARCINOMA NEUROENDICRINE

% SSTR2 activation suppresses ERK1/2 (MAPK1) -- transitive:
%   OCTREOTIDE assoc SSTR2 [line 2462; PMID 7631795, 35020172]
%   OCTREOTIDE neg_corr MAPK1 [line 2528; PMID 12478891]
event('SSTR2',negative_correlation,'MAPK1').

% SSTR5 activation suppresses ERK1/2 (MAPK1) -- transitive:
%   OCTREOTIDE assoc SSTR5 [line 2469; PMID 7631795]
%   OCTREOTIDE neg_corr MAPK1 [line 2528; PMID 12478891]
event('SSTR5',negative_correlation,'MAPK1').

% SSTR2 activation suppresses ERK1 (MAPK3) -- transitive:
%   OCTREOTIDE assoc SSTR2 [line 2462; PMID 7631795, 35020172]
%   OCTREOTIDE neg_corr MAPK3 [line 2530; PMID 12478891]
event('SSTR2',negative_correlation,'MAPK3').

% SSTR5 activation suppresses ERK1 (MAPK3) -- transitive:
%   OCTREOTIDE assoc SSTR5 [line 2469; PMID 7631795]
%   OCTREOTIDE neg_corr MAPK3 [line 2530; PMID 12478891]
event('SSTR5',negative_correlation,'MAPK3').

% Endogenous SST suppresses ERK1/2 (MAPK1) -- transitive:
%   SST neg_corr NEUROENDOCRINE TUMORS [line 2538; PMID 12478891]
%   OCTREOTIDE neg_corr MAPK1 [line 2528; PMID 12478891] (OCT mimics SST)
event('SST',negative_correlation,'MAPK1').

% Endogenous SST suppresses ERK1 (MAPK3) -- transitive:
event('SST',negative_correlation,'MAPK3').

% SST suppresses AKT1 (PI3K/AKT) -- OCTREOTIDE neg_corr AKT1 [line 2-3; PMID 20068168]
%   OCT mimics SST; SST neg_corr SST? no. Inferred via OCTREOTIDE=SST analogue.
event('SST',negative_correlation,'AKT1').

% OCTREOTIDE suppresses MTOR (via AKT1 suppression) -- transitive:
%   OCTREOTIDE neg_corr AKT1 [line 2-3; PMID 20068168]
%   NEUROENDOCRINE TUMORS assoc MTOR [line 15303]
event('OCTREOTIDE',negative_correlation,'MTOR').

% MTOR activation promotes NET -- transitive:
%   NEUROENDOCRINE TUMORS assoc MTOR [line 15303]
%   EVEROLIMUS neg_corr NET [line 35645] (mTOR inhibitor helps NET)
event('MTOR',positive_correlation,'NEUROENDOCRINE TUMORS').

% SSTR2 positively correlates with NET (receptor expression marker) --
%   NEUROENDOCRINE TUMORS assoc SSTR2 [line 10959; PMID 20529830, 41836257]
event('SSTR2',positive_correlation,'NEUROENDOCRINE TUMORS').

% SSTR5 positively correlates with NET (already in kBase line 65289) --
%   reinforced here as expert-object-correlated biomarker event
event('SSTR5',positive_correlation,'NEUROENDOCRINE TUMORS').

% SST negatively correlates with CARCINOMA NEUROENDICRINE -- reached via
%   wellKnownRules.pl subsumption: carcinoma_neuroendocrine -> neuroendocrine
%   tumors; SST neg_corr NEUROENDOCRINE TUMORS [line 2538]
event('SST',negative_correlation,'CARCINOMA NEUROENDICRINE').

% OCTREOTIDE negatively correlates with CARCINOMA NEUROENDICRINE -- via
%   OCTREOTIDE neg_corr NEUROENDOCRINE TUMORS [line 10666; PMID 35020172]
%   + wellKnownRules.pl subsumption
event('OCTREOTIDE',negative_correlation,'CARCINOMA NEUROENDICRINE').

%------------------------------------------------------------------------------
% GROUP 2 -- Other proposed interactions using all provided resources
%------------------------------------------------------------------------------
% Additional expert objects: EGFR, KRAS, TP53, ATRX, DAXX, GATA3, GATA2,
% CXCR4, POMC, NR3C1, CTNNB1, EVEROLIMUS, SIROLIMUS

% EGFR drives MAPK in NET -- EGFR assoc NET [line 71243]; KRAS assoc NET [line 79411]
event('EGFR',positive_correlation,'MAPK1').
event('EGFR',positive_correlation,'MAPK3').

% KRAS drives MAPK in NET -- KRAS assoc NET [line 79411]
event('KRAS',positive_correlation,'MAPK1').
event('KRAS',positive_correlation,'MAPK3').

% OCTREOTIDE counteracts EGFR/KRAS-driven ERK via SSTR -- proposed cross-talk
event('OCTREOTIDE',negative_correlation,'EGFR').
event('OCTREOTIDE',negative_correlation,'KRAS').

% ATRX/DAXX loss associated with aggressive pNET -- ATRX assoc NET [line 84178];
%   DAXX assoc NET [line 84179]
event('ATRX',positive_correlation,'NEUROENDOCRINE TUMORS').
event('DAXX',positive_correlation,'NEUROENDOCRINE TUMORS').

% TP53 associated with NET -- TP53 assoc NET [line 62589] (TP53 ≡ P53)
event('TP53',positive_correlation,'NEUROENDOCRINE TUMORS').

% GATA3/GATA2 in NET differentiation -- GATA3 assoc NET [line 89474];
%   GATA2 assoc NET [line 97675]
event('GATA3',positive_correlation,'NEUROENDOCRINE TUMORS').
event('GATA2',positive_correlation,'NEUROENDOCRINE TUMORS').

% GATA3/GATA2 drive POMC/NR3C1 hormone phenotype -- POMC assoc NET [line 10974];
%   NR3C1 assoc NET [line 10978]
event('GATA3',positive_correlation,'POMC').
event('GATA2',positive_correlation,'NR3C1').

% CXCR4 associated with NET (imaging target) -- CXCR4 assoc NET [line 10804]
event('CXCR4',positive_correlation,'NEUROENDOCRINE TUMORS').

% CXCR4 and SSTR2 co-expressed on NET (dual imaging) -- CXCR4 assoc NET [line 10804];
%   SSTR2 assoc NET [line 10959]
event('CXCR4',association,'SSTR2').

% CTNNB1 (beta-catenin) associated with NET -- CTNNB1 assoc NET [line 10995]
event('CTNNB1',positive_correlation,'NEUROENDOCRINE TUMORS').

% EVEROLIMUS (mTOR inhibitor) suppresses MTOR-driven MTOR -- MTOR pos_corr NET
%   [line 15303]; EVEROLIMUS neg_corr NET [line 35645]
event('EVEROLIMUS',negative_correlation,'MTOR').

% SIROLIMUS/rapamycin sensitized by OCTREOTIDE via AKT1 -- OCTREOTIDE pos_corr
%   SIROLIMUS [line 28; PMID 20068168]; OCTREOTIDE neg_corr AKT1 [line 2-3]
event('SIROLIMUS',negative_correlation,'AKT1').

% OCTREOTIDE + SIROLIMUS combination on NET -- OCTREOTIDE neg_corr NET
%   [line 10666]; SIROLIMUS neg_corr NEOPLASMS [line 14]
event('OCTREOTIDE',association,'SIROLIMUS').

% POMC and NR3C1 in NET hormone phenotype -- POMC assoc NET [line 10974];
%   NR3C1 assoc NET [line 10978]
event('POMC',positive_correlation,'NEUROENDOCRINE TUMORS').
event('NR3C1',positive_correlation,'NEUROENDOCRINE TUMORS').

%==============================================================================
% END OF events_ia.pl (sidecar). kBase.pl untouched.
%==============================================================================
