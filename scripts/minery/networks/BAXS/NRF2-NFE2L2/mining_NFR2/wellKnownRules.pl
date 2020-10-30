wkr_ligand('').
wkr_proteins('').
wkr_transcription_factors('').
wkr_adaptor_proteins('').
wkr_receptors('').
wkr_enzymes('').
wkr_poly_adp_ribose_polymerases(X):-wkr_2_3_7_8_tetrachlorodibenzo_p_dioxin_poly_adp_ribose_polymerase_human(X).
wkr_adp_ribose_transferases(X):-wkr_poly_adp_ribose_polymerases(X).
wkr_pentosyltransferases(X):-wkr_adp_ribose_transferases(X).
wkr_glycosyltransferases(X):-wkr_pentosyltransferases(X).
wkr_transferases(X):-wkr_glycosyltransferases(X).
wkr_enzymes(X):-wkr_transferases(X).
wkr_enzymes_and_coenzymes(X):-wkr_enzymes(X).
wkr_chemicals_and_drugs_category(X):-wkr_enzymes_and_coenzymes(X).
wkr_polychlorinated_dibenzodioxins(X):-wkr_2_hydroxy_1_3_7_8_tetrachlorodibenzo_4_dioxin(X).
wkr_dioxins(X):-wkr_polychlorinated_dibenzodioxins(X).
wkr_dioxins_and_dioxin_like_compounds(X):-wkr_dioxins(X).
wkr_organic_chemicals(X):-wkr_dioxins_and_dioxin_like_compounds(X).
wkr_chemicals_and_drugs_category(X):-wkr_organic_chemicals(X).
wkr_heterocyclic_compounds_1_ring(X):-wkr_dioxins(X).
wkr_heterocyclic_compounds(X):-wkr_heterocyclic_compounds_1_ring(X).
wkr_chemicals_and_drugs_category(X):-wkr_heterocyclic_compounds(X).
wkr_heterocyclic_compounds_3_ring(X):-wkr_polychlorinated_dibenzodioxins(X).
wkr_heterocyclic_compounds_fused_ring(X):-wkr_heterocyclic_compounds_3_ring(X).
wkr_heterocyclic_compounds(X):-wkr_heterocyclic_compounds_fused_ring(X).
wkr_nuclear_respiratory_factors(X):-wkr_ga_binding_protein_transcription_factor(X).
wkr_dna_binding_proteins(X):-wkr_nuclear_respiratory_factors(X).
wkr_proteins(X):-wkr_dna_binding_proteins(X).
wkr_amino_acids_peptides_and_proteins(X):-wkr_proteins(X).
wkr_chemicals_and_drugs_category(X):-wkr_amino_acids_peptides_and_proteins(X).
wkr_transcription_factors(X):-wkr_nuclear_respiratory_factors(X).
wkr_proteins(X):-wkr_transcription_factors(X).
wkr_basic_leucine_zipper_transcription_factors(X):-wkr_nf_e2_related_factor_2(X).
wkr_dna_binding_proteins(X):-wkr_basic_leucine_zipper_transcription_factors(X).
wkr_transcription_factors(X):-wkr_basic_leucine_zipper_transcription_factors(X).
wkr_circadian_rhythm_signaling_peptides_and_proteins(X):-wkr_arntl_transcription_factors(X).
wkr_intracellular_signaling_peptides_and_proteins(X):-wkr_circadian_rhythm_signaling_peptides_and_proteins(X).
wkr_peptides(X):-wkr_intracellular_signaling_peptides_and_proteins(X).
wkr_amino_acids_peptides_and_proteins(X):-wkr_peptides(X).
wkr_proteins(X):-wkr_intracellular_signaling_peptides_and_proteins(X).
wkr_basic_helix_loop_helix_transcription_factors(X):-wkr_arntl_transcription_factors(X).
wkr_dna_binding_proteins(X):-wkr_basic_helix_loop_helix_transcription_factors(X).
wkr_transcription_factors(X):-wkr_basic_helix_loop_helix_transcription_factors(X).
wkr_nf_kappa_b(X):-wkr_nf_kappa_b_p50_subunit(X).
wkr_dna_binding_proteins(X):-wkr_nf_kappa_b(X).
wkr_nuclear_proteins(X):-wkr_nf_kappa_b(X).
wkr_proteins(X):-wkr_nuclear_proteins(X).
wkr_transcription_factors(X):-wkr_nf_kappa_b(X).
wkr_rna_long_noncoding(X):-wkr_long_noncoding_rna_nkila_human(X).
wkr_rna_untranslated(X):-wkr_rna_long_noncoding(X).
wkr_rna(X):-wkr_rna_untranslated(X).
wkr_nucleic_acids(X):-wkr_rna(X).
wkr_nucleic_acids_nucleotides_and_nucleosides(X):-wkr_nucleic_acids(X).
wkr_chemicals_and_drugs_category(X):-wkr_nucleic_acids_nucleotides_and_nucleosides(X).
wkr_repressor_proteins(X):-wkr_grhl1_protein_human(X).
wkr_dna_binding_proteins(X):-wkr_repressor_proteins(X).
wkr_transcription_factors(X):-wkr_repressor_proteins(X).
wkr_homeodomain_proteins(X):-wkr_cdx1_protein_human(X).
wkr_dna_binding_proteins(X):-wkr_homeodomain_proteins(X).
wkr_sox_transcription_factors(X):-wkr_soxb2_transcription_factors(X).
wkr_dna_binding_proteins(X):-wkr_sox_transcription_factors(X).
wkr_high_mobility_group_proteins(X):-wkr_sox_transcription_factors(X).
wkr_chromosomal_proteins_non_histone(X):-wkr_high_mobility_group_proteins(X).
wkr_nuclear_proteins(X):-wkr_chromosomal_proteins_non_histone(X).
wkr_nucleoproteins(X):-wkr_chromosomal_proteins_non_histone(X).
wkr_proteins(X):-wkr_nucleoproteins(X).
wkr_transcription_factors(X):-wkr_sox_transcription_factors(X).
wkr_microtubule_associated_proteins(X):-wkr_cytoplasmic_linker_protein_115(X).
wkr_microtubule_proteins(X):-wkr_microtubule_associated_proteins(X).
wkr_biopolymers(X):-wkr_microtubule_proteins(X).
wkr_polymers(X):-wkr_biopolymers(X).
wkr_macromolecular_substances(X):-wkr_polymers(X).
wkr_chemicals_and_drugs_category(X):-wkr_macromolecular_substances(X).
wkr_biomedical_and_dental_materials(X):-wkr_polymers(X).
wkr_chemicals_and_drugs_category(X):-wkr_biomedical_and_dental_materials(X).
wkr_specialty_uses_of_chemicals(X):-wkr_biomedical_and_dental_materials(X).
wkr_chemical_actions_and_uses(X):-wkr_specialty_uses_of_chemicals(X).
wkr_chemicals_and_drugs_category(X):-wkr_chemical_actions_and_uses(X).
wkr_manufactured_materials(X):-wkr_biomedical_and_dental_materials(X).
wkr_technology_industry_and_agriculture(X):-wkr_manufactured_materials(X).
wkr_technology_and_food_and_beverages_category(X):-wkr_technology_industry_and_agriculture(X).
wkr_cytoskeletal_proteins(X):-wkr_microtubule_proteins(X).
wkr_proteins(X):-wkr_cytoskeletal_proteins(X).
wkr_nerve_tissue_proteins(X):-wkr_microtubule_associated_proteins(X).
wkr_proteins(X):-wkr_nerve_tissue_proteins(X).
wkr_intracellular_signaling_peptides_and_proteins(X):-wkr_clip3_protein_rat(X).
wkr_membrane_proteins(X):-wkr_clip4_protein_human(X).
wkr_proteins(X):-wkr_membrane_proteins(X).
wkr_eukaryotic_initiation_factors(X):-wkr_ctif_protein_human(X).
wkr_peptide_initiation_factors(X):-wkr_eukaryotic_initiation_factors(X).
wkr_ribosomal_proteins(X):-wkr_peptide_initiation_factors(X).
wkr_proteins(X):-wkr_ribosomal_proteins(X).
wkr_rna_cap_binding_proteins(X):-wkr_nuclear_cap_binding_protein_complex(X).
wkr_rna_binding_proteins(X):-wkr_rna_cap_binding_proteins(X).
wkr_carrier_proteins(X):-wkr_rna_binding_proteins(X).
wkr_proteins(X):-wkr_carrier_proteins(X).
wkr_nucleoproteins(X):-wkr_rna_binding_proteins(X).
wkr_connectin(X):-wkr_tcap_protein_mouse(X).
wkr_protein_kinases(X):-wkr_connectin(X).
wkr_phosphotransferases_alcohol_group_acceptor_(X):-wkr_protein_kinases(X).
wkr_phosphotransferases(X):-wkr_phosphotransferases_alcohol_group_acceptor_(X).
wkr_transferases(X):-wkr_phosphotransferases(X).
wkr_muscle_proteins(X):-wkr_connectin(X).
wkr_contractile_proteins(X):-wkr_muscle_proteins(X).
wkr_proteins(X):-wkr_contractile_proteins(X).
