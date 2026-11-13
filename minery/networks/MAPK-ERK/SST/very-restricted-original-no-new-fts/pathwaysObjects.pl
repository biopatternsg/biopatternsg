% Below the lines for the objects roles from the user and the first step of the pipeline.

% ==============================================================================
% DATABASE OF BIOLOGICAL SYMBOLS AND ASSOCIATED ROLES
% Organized by functional biochemical sections.
% Multi-functional entities have all of their roles explicitly declared.
% Template customized for updated subsets.
% ==============================================================================


% ==============================================================================
% SECTION: LIGAND
% ==============================================================================
ligand('EGF').                          % Epidermal Growth Factor (Natural Protein Ligand)
ligand('GUANOSINE DIPHOSPHATE').        % GDP (Small-molecule Signaling Ligand)
ligand('GUANOSINE TRIPHOSPHATE').       % GTP (Small-molecule Signaling Ligand)
ligand('OCTREOTIDE').                   % Synthetic Somatostatin Analogue / Peptide Drug
ligand('LANREOTIDE').                   % Synthetic Somatostatin Analogue / Peptide Drug
ligand('SST').                          % Somatostatin (Natural Peptide Hormone Ligand)

% ==============================================================================
% SECTION: RECEPTOR
% ==============================================================================
receptor('EGFR').                       % Epidermal Growth Factor Receptor
receptor('SSTR1').                      % Somatostatin Receptor Type 1 (GPCR)
receptor('SSTR2').                      % Somatostatin Receptor Type 2 (GPCR)
receptor('SSTR5').                      % Somatostatin Receptor Type 5 (GPCR)

% ==============================================================================
% SECTION: ENZYME
% ==============================================================================
enzyme('EGFR').                         % Receptor Tyrosine Kinase (Intrinsic Kinase Activity)
enzyme('SOS').                          % Son of Sevenless (Guanine Nucleotide Exchange Factor)
enzyme('RAS').                          % Small GTPase (Intrinsic GTP Hydrolase Activity)
enzyme('RAF').                          % Serine/Threonine Kinase (MAP3K cascade element)
enzyme('MAP2K1').                       % Mitogen-Activated Protein Kinase Kinase 1 (MEK1)
enzyme('MAP2K2').                       % Mitogen-Activated Protein Kinase Kinase 2 (MEK2)
enzyme('MAPK1').                        % Mitogen-Activated Protein Kinase 1 (ERK2 effector)
enzyme('MAPK3').                        % Mitogen-Activated Protein Kinase 3 (ERK1 effector)
enzyme('S6K').                          % Ribosomal Protein S6 Kinase (Serine/Threonine Kinase)
enzyme('ATF2').                         % Activating Transcription Factor 2 (Intrinsic Histone Acetyltransferase)
enzyme('IKKEPSILON').                   % Inhibitor of Nuclear Factor Kappa-B Kinase Subunit Epsilon (IKBKE)

% ==============================================================================
% SECTION: TRANSCRIPTION_FACTOR
% ==============================================================================
transcription_factor('MAPK1').          % ERK2 Nuclear Transcriptional Repressor / Co-regulator
transcription_factor('CREB1').          % cAMP Response Element-Binding Protein 1
transcription_factor('MYC').            % Myc Proto-Oncogene Protein
transcription_factor('RUNX1').          % Runt-Related Transcription Factor 1
transcription_factor('CDX1').           % Caudal-Type Homeobox 1
transcription_factor('SRY').            % Sex-Determining Region Y Protein
transcription_factor('ZNF384').         % Zinc Finger Protein 384
transcription_factor('JUN').            % Jun Proto-Oncogene Subunit (AP-1 Component)
transcription_factor('GATA1').          % Globin Transcription Factor 1
transcription_factor('ATF1').           % Activating Transcription Factor 1
transcription_factor('IKZF1').          % Ikaros Zinc Finger Protein 1
transcription_factor('MYOD1').          % Myoblast Determination Protein 1
transcription_factor('TFAP4').          % Transcription Factor AP-4
transcription_factor('CEBPA').          % CCAAT/Enhancer-Binding Protein Alpha
transcription_factor('GATA3').          % Globin Transcription Factor 3
transcription_factor('GATA2').          % Globin Transcription Factor 2
transcription_factor('USF1').           % Upstream Stimulatory Factor 1
transcription_factor('FOXA2').          % Forkhead Box A2
transcription_factor('ETS1').           % Protein C-Ets-1
transcription_factor('ATF2').           % Activating Transcription Factor 2 (CRE-BP1)
transcription_factor('E2F1').           % E2F Transcription Factor 1
transcription_factor('TST1').           % Tst-1 Transcription Factor (POU3F1 / Oct-6)
transcription_factor('NKX2-5').         % Homeobox Protein NKX-2.5
transcription_factor('PBX1').           % Pre-B-Cell Leukemia Homeobox 1
transcription_factor('STAT').           % Signal Transducer and Activator of Transcription
transcription_factor('FOXD3').          % Forkhead Box D3
transcription_factor('MZF1').           % Myeloid Zinc Finger 1
transcription_factor('FOXD1').          % Forkhead Box D1
transcription_factor('LMO2').           % LIM Domain Only 2 (Transcriptional Complex Co-regulator)
transcription_factor('TEF').            % Thyrotrophic Embryonic Factor
transcription_factor('MAX').            % Myc-Associated Factor X
transcription_factor('SP1').            % Specificity Protein 1
transcription_factor('REL').            % C-Rel Proto-Oncogene Protein (NF-kappaB Subunit)
transcription_factor('POU2F1').         % POU Class 2 Homeobox 1 (Oct-1)
transcription_factor('CP2').            % Transcription Factor CP2 (TFCP2)
transcription_factor('MYB').            % Myb Proto-Oncogene Protein
transcription_factor('CEBPB').          % CCAAT/Enhancer-Binding Protein Beta
transcription_factor('ZNF8').           % Zinc Finger Protein 8
transcription_factor('TBP').            % TATA-Box Binding Protein (General Transcription Factor)
transcription_factor('EVI1').           % EVI1 Ecotropic Viral Integration Site 1 (MECOM)
transcription_factor('P53').            % Cellular Tumor Antigen p53 (TP53)
transcription_factor('SOX5').           % SRY-Box Transcription Factor 5
transcription_factor('HLF').            % Hepatic Leukemia Factor
transcription_factor('IKZF3').          % Aiolos Zinc Finger Protein 3
transcription_factor('TCF3').           % Transcription Factor 3 (E2A)
transcription_factor('YY1').            % Yin Yang 1 Transcription Factor

% ==============================================================================
% SECTION: PROTEIN
% ==============================================================================
protein('EGF').                         % Secreted Peptide Macro-molecule
protein('EGFR').                        % Membrane Receptor Protein Scaffold
protein('GRB2').                        % Growth Factor Receptor-Bound Protein 2 (Adapter)
protein('SOS').                         % Guanine Nucleotide Exchange Factor Protein
protein('RAS').                         % Small GTPase Signaling Protein Node
protein('RAF').                         % Proto-Oncogene Serine/Threonine-Protein Kinase
protein('MAP2K1').                      % Dual-Specificity Kinase Protein (MEK1)
protein('MAP2K2').                      % Dual-Specificity Kinase Protein (MEK2)
protein('MAPK1').                       % Mitogen-Activated Protein Kinase 1
protein('MAPK3').                       % Mitogen-Activated Protein Kinase 3
protein('CREB1').                       % cAMP Response Element-Binding Protein 1
protein('S6K').                         % Ribosomal Protein S6 Kinase
protein('RPS6').                        % Ribosomal Protein S6 (40S Ribosomal Subunit Component)
protein('MYC').                         % Myc Proto-Oncogene bHLH-LZ Protein
protein('SST').                         % Somatostatin Regulatory Peptide Protein
protein('SSTR1').                       % Seven-Transmembrane Receptor Protein Backbone
protein('SSTR2').                       % Seven-Transmembrane Receptor Protein Backbone
protein('SSTR5').                       % Seven-Transmembrane Receptor Protein Backbone
protein('RUNX1').                       % Runt-Related Transcription Factor Protein Structure
protein('CDX1').                        % Caudal-Type Homeobox Protein Structure
protein('SRY').                         % Testis-Determining Factor HMG-Box Protein
protein('ZNF384').                      % Zinc Finger Regulatory Protein
protein('JUN').                         % Jun AP-1 Complex Protein Subunit
protein('CAP').                         % Adenylyl Cyclase-Associated Protein / Actin-Binding Protein
protein('GATA1').                       % Erythroid Transcription Factor GATA-1 Protein
protein('ATF1').                        % bZIP Transcription Factor Component Protein
protein('IKZF1').                       % Ikaros Lymphoid Regulator Protein
protein('MYOD1').                       % Myoblast Determination bHLH Protein Structure
protein('TFAP4').                       % Basic Helix-Loop-Helix Protein
protein('CEBPA').                       % bZIP Domain Transcription Factor Protein
protein('GATA3').                       % Zinc Finger Trans-Acting Factor Protein
protein('GATA2').                       % Zinc Finger Trans-Acting Factor Protein
protein('USF1').                        % Helix-Loop-Helix Leucine Zipper Protein
protein('FOXA2').                       % Pioneer Transcription Binding Protein Structure
protein('ETS1').                        % ETS Domain Protein Structure
protein('ATF2').                        % Activating Transcription Factor 2 Protein
protein('IKKEPSILON').                  % Non-Canonical IKK Serine/Threonine Kinase Protein
protein('E2F1').                        % Cell Cycle Control Target Protein
protein('TST1').                        % POU Domain Transcription Factor Protein
protein('NKX2-5').                      % Cardiac Homeobox Domain Protein Structure
protein('PBX1').                        % TALE Homeodomain Scaffolding Protein
protein('STAT').                        % Signal Transducer Protein Backbone
protein('FOXD3').                       % Neural Crest Modulator Protein
protein('MZF1').                        % Myeloid Finger Factor Protein
protein('FOXD1').                       % Forkhead Box D1 Protein
protein('LMO2').                        % LIM Domain Bridging Complex Protein Structure
protein('TEF').                         % bZIP Transcription Factor Family Protein Node
protein('MAX').                         % Myc-Associated Factor X Structural Protein
protein('SP1').                         % Zinc Finger Activation Domain Protein Component
protein('REL').                         % C-Rel NF-Kappa-B Complex Protein
protein('POU2F1').                      % Housekeeping Homeodomain Protein
protein('CP2').                         % Alpha-Globin Promoter Regulator Protein Structure
protein('MYB').                         % Hematopoietic Proliferation Modulating Protein
protein('CEBPB').                       % Cytokine Gene Regulator bZIP Protein Structure
protein('ZNF8').                        % Repressor Zinc Finger Protein Structure
protein('TBP').                         % General Transcription Complex Base Protein Structure
protein('EVI1').                        % MECOM Structural Protein Domain
protein('P53').                         % Cellular Tumor Antigen p53 Control Core
protein('SOX5').                        % HMG-Box Modulator Protein Layer
protein('HLF').                         % PAR bZIP Subfamily Protein Structure
protein('IKZF3').                       % Lymphocyte Specification Factor Protein
protein('TCF3').                        % Immunoglobulin Enhancer-Binding Protein E2A/E47
protein('YY1').                         % GLI-Kruppel Zinc Finger Protein Control Structure

% ==============================================================================
% SECTION: DISEASE
% ==============================================================================
disease('NEUROENDOCRINE TUMORS').       % Clinical/Histological Tumor Group
disease('CARCINOMA NEUROENDOCRINE').    % Malignant Epithelial Endocrine Pathology

% Below the lines for the objects roles from pubtator.

% ligands from PubTator

% genes from PubTator

% diseases from PubTator

% variant from PubTator

% species from PubTator

% cell lines from PubTator

% The following lines are to avoid errors in the process: They should not be modified.
% Las siguientes lineas son para evitar errores en el proceso: No deben ser modificadas.
enzyme('').
protein('').
transcription_factor('').
receptor('').
ligand('').
disease('').
