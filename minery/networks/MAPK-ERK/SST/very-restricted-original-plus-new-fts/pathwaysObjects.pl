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
ligand('SST').                          % Somatostatin (Natural Peptide Hormone Ligand)

% ==============================================================================
% SECTION: RECEPTOR
% ==============================================================================
receptor('EGFR').                       % Epidermal Growth Factor Receptor
receptor('SSTR1').                      % Somatostatin Receptor Type 1 (GPCR)
receptor('SSTR2').                      % Somatostatin Receptor Type 2 (GPCR)
receptor('SSTR5').                      % Somatostatin Receptor Type 5 (GPCR)
receptor('NR0B2').                      % Nuclear Receptor Subfamily 0 Group B Member 2 (SHP / Orphan Nuclear Receptor)

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
enzyme('EP300').                        % E1A Binding Protein p300 (Histone Acetyltransferase / Lysine Acetyltransferase)

% ==============================================================================
% SECTION: TRANSCRIPTION_FACTOR
% ==============================================================================
transcription_factor('MAPK1').          % ERK2 Nuclear Transcriptional Repressor / Co-regulator
transcription_factor('CREB1').          % cAMP Response Element-Binding Protein 1
transcription_factor('MYC').            % Myc Proto-Oncogene Protein
transcription_factor('JUN').            % Jun Proto-Oncogene Subunit (AP-1 Component)
transcription_factor('ATF1').           % Activating Transcription Factor 1
transcription_factor('ATF2').           % Activating Transcription Factor 2 (CRE-BP1)
transcription_factor('E2F1').           % E2F Transcription Factor 1
transcription_factor('TP53').           % Cellular Tumor Antigen p53
transcription_factor('SMAD4').          % SMAD Family Member 4 (Co-SMAD Transcriptional Regulator)
transcription_factor('EP300').          % E1A Binding Protein p300 (Transcriptional Co-activator)
transcription_factor('PDX1').           % Pancreatic and Duodenal Homeobox 1
transcription_factor('PKNOX1').         % PBX/Knotted 1 Homeobox 1 (Prep1)
transcription_factor('NR0B2').          % Nuclear Receptor Subfamily 0 Group B Member 2 (Transcriptional Co-repressor)

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
protein('JUN').                         % Jun AP-1 Complex Protein Subunit
protein('ATF1').                        % bZIP Transcription Factor Component Protein
protein('ATF2').                        % Activating Transcription Factor 2 Protein
protein('E2F1').                        % Cell Cycle Control Target Protein
protein('TP53').                        % Cellular Tumor Antigen p53 Control Core
protein('SMAD4').                       % Signal Transduction and Transcriptional Modulator Protein
protein('EP300').                       % Histone Acetyltransferase Co-activator Protein
protein('PDX1').                        % Pancreatic Homeodomain Protein Structure
protein('PKNOX1').                      % TALE Homeodomain Protein Structure (Prep1)
protein('NR0B2').                       % Orphan Nuclear Receptor Protein Structure (SHP)

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
