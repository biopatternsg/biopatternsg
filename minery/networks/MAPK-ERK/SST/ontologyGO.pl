leaf('EGF','calcium ion binding').
fm('calcium ion binding').
leaf('EGF','epidermal growth factor receptor binding').
fm('epidermal growth factor receptor binding').
leaf('EGF','growth factor activity').
fm('growth factor activity').
leaf('EGF','guanyl-nucleotide exchange factor activity').
fm('guanyl-nucleotide exchange factor activity').
leaf('EGF','receptor ligand activity').
fm('receptor ligand activity').
leaf('EGF','transmembrane receptor protein tyrosine kinase activator activity').
fm('transmembrane receptor protein tyrosine kinase activator activity').
leaf('EGF','angiogenesis').
bp('angiogenesis').
leaf('EGF','epidermal growth factor receptor signaling pathway').
bp('epidermal growth factor receptor signaling pathway').
leaf('EGF','ERBB2-EGFR signaling pathway').
bp('ERBB2-EGFR signaling pathway').
leaf('EGF','ERK1 and ERK2 cascade').
bp('ERK1 and ERK2 cascade').
leaf('EGF','negative regulation of cholesterol efflux').
bp('negative regulation of cholesterol efflux').
leaf('EGF','negative regulation of secretion').
bp('negative regulation of secretion').
leaf('EGF','positive regulation of canonical Wnt signaling pathway').
bp('positive regulation of canonical Wnt signaling pathway').
leaf('EGF','positive regulation of cell migration').
bp('positive regulation of cell migration').
leaf('EGF','positive regulation of cell population proliferation').
bp('positive regulation of cell population proliferation').
leaf('EGF','positive regulation of DNA binding').
bp('positive regulation of DNA binding').
leaf('EGF','positive regulation of DNA-templated transcription').
bp('positive regulation of DNA-templated transcription').
leaf('EGF','positive regulation of endothelial cell migration').
bp('positive regulation of endothelial cell migration').
leaf('EGF','positive regulation of endothelial cell proliferation').
bp('positive regulation of endothelial cell proliferation').
leaf('EGF','positive regulation of epithelial tube formation').
bp('positive regulation of epithelial tube formation').
leaf('EGF','positive regulation of gene expression').
bp('positive regulation of gene expression').
leaf('EGF','positive regulation of hyaluronan biosynthetic process').
bp('positive regulation of hyaluronan biosynthetic process').
leaf('EGF','positive regulation of MAPK cascade').
bp('positive regulation of MAPK cascade').
leaf('EGF','positive regulation of mitotic nuclear division').
bp('positive regulation of mitotic nuclear division').
leaf('EGF','positive regulation of peptidyl-threonine phosphorylation').
bp('positive regulation of peptidyl-threonine phosphorylation').
leaf('EGF','positive regulation of phosphatidylinositol 3-kinase/protein kinase B signal transduction').
bp('positive regulation of phosphatidylinositol 3-kinase/protein kinase B signal transduction').
leaf('EGF','positive regulation of phosphorylation').
bp('positive regulation of phosphorylation').
leaf('EGF','positive regulation of protein localization to early endosome').
bp('positive regulation of protein localization to early endosome').
leaf('EGF','positive regulation of receptor internalization').
bp('positive regulation of receptor internalization').
leaf('EGF','positive regulation of ubiquitin-dependent protein catabolic process').
bp('positive regulation of ubiquitin-dependent protein catabolic process').
leaf('EGF','regulation of calcium ion import').
bp('regulation of calcium ion import').
leaf('EGF','regulation of protein localization to cell surface').
bp('regulation of protein localization to cell surface').
leaf('EGF','regulation of receptor signaling pathway via JAK-STAT').
bp('regulation of receptor signaling pathway via JAK-STAT').
leaf('EGF','clathrin-coated endocytic vesicle membrane').
cc('clathrin-coated endocytic vesicle membrane').
leaf('EGF','extracellular exosome').
cc('extracellular exosome').
leaf('EGF','extracellular region').
cc('extracellular region').
leaf('EGF','lysosomal membrane').
cc('lysosomal membrane').
leaf('EGF','plasma membrane').
cc('plasma membrane').
leaf('EGF','platelet alpha granule lumen').
cc('platelet alpha granule lumen').
go('calcium ion binding',is_a,'metal ion binding').
go('metal ion binding',is_a,'cation binding').
go('cation binding',is_a,'ion binding').
go('ion binding',is_a,'small molecule binding').
go('small molecule binding',is_a,'binding').
go('binding',is_a,'molecular_function').
go('epidermal growth factor receptor binding',is_a,'growth factor receptor binding').
go('growth factor receptor binding',is_a,'signaling receptor binding').
go('signaling receptor binding',is_a,'protein binding').
go('protein binding',is_a,'binding').
go('growth factor activity',is_a,'receptor ligand activity').
go('receptor ligand activity',is_a,'signaling receptor activator activity').
go('signaling receptor activator activity',is_a,'signaling receptor regulator activity').
go('signaling receptor regulator activity',is_a,'molecular function regulator activity').
go('molecular function regulator activity',is_a,'molecular_function').
go('signaling receptor regulator activity',regulates,'signaling receptor activity').
go('signaling receptor activity',is_a,'molecular transducer activity').
go('molecular transducer activity',is_a,'molecular_function').
go('signaling receptor activator activity',is_a,'molecular function activator activity').
go('molecular function activator activity',is_a,'molecular function regulator activity').
go('receptor ligand activity',part_of,'signal transduction').
go('signal transduction',is_a,'cellular process').
go('cellular process',is_a,'biological_process').
go('signal transduction',is_a,'regulation of cellular process').
go('regulation of cellular process',is_a,'regulation of biological process').
go('regulation of biological process',is_a,'biological regulation').
go('biological regulation',is_a,'biological_process').
go('regulation of biological process',regulates,'biological_process').
go('regulation of cellular process',regulates,'cellular process').
go('signal transduction',part_of,'signaling').
go('signaling',is_a,'regulation of biological process').
go('signal transduction',part_of,'cell communication').
go('cell communication',is_a,'cellular process').
go('signal transduction',part_of,'cellular response to stimulus').
go('cellular response to stimulus',is_a,'cellular process').
go('cellular response to stimulus',is_a,'response to stimulus').
go('response to stimulus',is_a,'biological_process').
go('guanyl-nucleotide exchange factor activity',is_a,'GTPase regulator activity').
go('GTPase regulator activity',is_a,'nucleoside-triphosphatase regulator activity').
go('nucleoside-triphosphatase regulator activity',is_a,'enzyme regulator activity').
go('enzyme regulator activity',is_a,'molecular function regulator activity').
go('enzyme regulator activity',regulates,'catalytic activity').
go('catalytic activity',is_a,'molecular_function').
go('nucleoside-triphosphatase regulator activity',regulates,'ribonucleoside triphosphate phosphatase activity').
go('ribonucleoside triphosphate phosphatase activity',is_a,'pyrophosphatase activity').
go('pyrophosphatase activity',is_a,'hydrolase activity, acting on acid anhydrides, in phosphorus-containing anhydrides').
go('hydrolase activity, acting on acid anhydrides, in phosphorus-containing anhydrides',is_a,'hydrolase activity, acting on acid anhydrides').
go('hydrolase activity, acting on acid anhydrides',is_a,'hydrolase activity').
go('hydrolase activity',is_a,'catalytic activity').
go('GTPase regulator activity',regulates,'GTPase activity').
go('GTPase activity',is_a,'ribonucleoside triphosphate phosphatase activity').
go('transmembrane receptor protein tyrosine kinase activator activity',is_a,'signaling receptor activator activity').
go('transmembrane receptor protein tyrosine kinase activator activity',is_a,'protein tyrosine kinase activator activity').
go('protein tyrosine kinase activator activity',is_a,'protein kinase activator activity').
go('protein kinase activator activity',is_a,'protein kinase regulator activity').
go('protein kinase regulator activity',is_a,'kinase regulator activity').
go('kinase regulator activity',is_a,'enzyme regulator activity').
go('kinase regulator activity',regulates,'kinase activity').
go('kinase activity',is_a,'transferase activity, transferring phosphorus-containing groups').
go('transferase activity, transferring phosphorus-containing groups',is_a,'transferase activity').
go('transferase activity',is_a,'catalytic activity').
go('protein kinase regulator activity',regulates,'protein kinase activity').
go('protein kinase activity',is_a,'phosphotransferase activity, alcohol group as acceptor').
go('phosphotransferase activity, alcohol group as acceptor',is_a,'transferase activity, transferring phosphorus-containing groups').
go('protein kinase activity',is_a,'catalytic activity, acting on a protein').
go('catalytic activity, acting on a protein',is_a,'catalytic activity').
go('protein kinase activity',is_a,'kinase activity').
go('protein kinase activator activity',is_a,'kinase activator activity').
go('kinase activator activity',is_a,'enzyme activator activity').
go('enzyme activator activity',is_a,'enzyme regulator activity').
go('enzyme activator activity',is_a,'molecular function activator activity').
go('kinase activator activity',is_a,'kinase regulator activity').
go('angiogenesis',is_a,'anatomical structure formation involved in morphogenesis').
go('anatomical structure formation involved in morphogenesis',is_a,'developmental process').
go('developmental process',is_a,'biological_process').
go('anatomical structure formation involved in morphogenesis',part_of,'anatomical structure morphogenesis').
go('anatomical structure morphogenesis',is_a,'developmental process').
go('anatomical structure morphogenesis',part_of,'anatomical structure development').
go('anatomical structure development',is_a,'developmental process').
go('angiogenesis',part_of,'blood vessel morphogenesis').
go('blood vessel morphogenesis',is_a,'tube morphogenesis').
go('tube morphogenesis',is_a,'anatomical structure morphogenesis').
go('tube morphogenesis',part_of,'tube development').
go('tube development',is_a,'anatomical structure development').
go('tube development',part_of,'multicellular organism development').
go('multicellular organism development',is_a,'anatomical structure development').
go('multicellular organism development',is_a,'multicellular organismal process').
go('multicellular organismal process',is_a,'biological_process').
go('blood vessel morphogenesis',part_of,'blood vessel development').
go('blood vessel development',is_a,'animal gross anatomical part developmental process').
go('animal gross anatomical part developmental process',is_a,'anatomical structure development').
go('blood vessel development',part_of,'vasculature development').
go('vasculature development',is_a,'system development').
go('vasculature development',is_a,'animal gross anatomical part developmental process').
go('system development',is_a,'anatomical structure development').
go('system development',part_of,'multicellular organism development').
go('vasculature development',part_of,'circulatory system development').
go('circulatory system development',is_a,'animal gross anatomical part developmental process').
go('circulatory system development',is_a,'system development').
go('epidermal growth factor receptor signaling pathway',is_a,'ERBB signaling pathway').
go('ERBB signaling pathway',is_a,'cell surface receptor protein tyrosine kinase signaling pathway').
go('cell surface receptor protein tyrosine kinase signaling pathway',is_a,'enzyme-linked receptor protein signaling pathway').
go('enzyme-linked receptor protein signaling pathway',is_a,'cell surface receptor signaling pathway').
go('cell surface receptor signaling pathway',is_a,'signal transduction').
go('ERBB2-EGFR signaling pathway',is_a,'ERBB2 signaling pathway').
go('ERBB2-EGFR signaling pathway',is_a,'epidermal growth factor receptor signaling pathway').
go('ERBB2 signaling pathway',is_a,'ERBB signaling pathway').
go('ERK1 and ERK2 cascade',is_a,'MAPK cascade').
go('MAPK cascade',is_a,'intracellular signaling cassette').
go('intracellular signaling cassette',is_a,'intracellular signal transduction').
go('intracellular signal transduction',is_a,'signal transduction').
go('intracellular signal transduction',occurs_in,'intracellular anatomical structure').
go('intracellular anatomical structure',is_a,'cellular anatomical structure').
go('cellular anatomical structure',is_a,'cellular_component').
go('negative regulation of cholesterol efflux',is_a,'negative regulation of cholesterol transport').
go('negative regulation of cholesterol transport',is_a,'regulation of cholesterol transport').
go('negative regulation of cholesterol efflux',is_a,'regulation of cholesterol efflux').
go('regulation of cholesterol efflux',is_a,'regulation of cholesterol transport').
go('regulation of cholesterol efflux',regulates,'cholesterol efflux').
go('regulation of cholesterol transport',is_a,'regulation of sterol transport').
go('cholesterol efflux',is_a,'cholesterol transport').
go('regulation of sterol transport',is_a,'regulation of lipid transport').
go('cholesterol transport',is_a,'sterol transport').
go('regulation of lipid transport',is_a,'regulation of lipid localization').
go('sterol transport',is_a,'organic hydroxy compound transport').
go('regulation of lipid localization',is_a,'regulation of localization').
go('regulation of localization',is_a,'regulation of biological process').
go('regulation of localization',regulates,'localization').
go('localization',is_a,'biological_process').
go('regulation of lipid localization',regulates,'lipid localization').
go('lipid localization',is_a,'macromolecule localization').
go('organic hydroxy compound transport',is_a,'transport').
go('macromolecule localization',is_a,'localization').
go('transport',is_a,'establishment of localization').
go('regulation of lipid transport',is_a,'regulation of transport').
go('establishment of localization',is_a,'localization').
go('regulation of transport',is_a,'regulation of localization').
go('sterol transport',is_a,'lipid transport').
go('lipid transport',is_a,'transport').
go('regulation of transport',regulates,'transport').
go('lipid transport',part_of,'lipid localization').
go('regulation of lipid transport',regulates,'lipid transport').
go('negative regulation of cholesterol transport',is_a,'negative regulation of sterol transport').
go('regulation of sterol transport',regulates,'sterol transport').
go('negative regulation of sterol transport',is_a,'regulation of sterol transport').
go('negative regulation of sterol transport',is_a,'negative regulation of lipid transport').
go('regulation of cholesterol transport',regulates,'cholesterol transport').
go('negative regulation of lipid transport',is_a,'regulation of lipid transport').
go('negative regulation of lipid transport',is_a,'negative regulation of lipid localization').
go('negative regulation of lipid localization',is_a,'regulation of lipid localization').
go('negative regulation of lipid localization',is_a,'negative regulation of biological process').
go('negative regulation of biological process',is_a,'regulation of biological process').
go('negative regulation of lipid transport',is_a,'negative regulation of transport').
go('negative regulation of transport',is_a,'negative regulation of biological process').
go('negative regulation of transport',is_a,'regulation of transport').
go('negative regulation of secretion',is_a,'negative regulation of transport').
go('negative regulation of secretion',is_a,'regulation of secretion').
go('regulation of secretion',is_a,'regulation of transport').
go('regulation of secretion',regulates,'secretion').
go('secretion',is_a,'transport').
go('positive regulation of canonical Wnt signaling pathway',is_a,'positive regulation of Wnt signaling pathway').
go('positive regulation of canonical Wnt signaling pathway',is_a,'regulation of canonical Wnt signaling pathway').
go('positive regulation of Wnt signaling pathway',is_a,'positive regulation of signal transduction').
go('positive regulation of signal transduction',is_a,'positive regulation of signaling').
go('positive regulation of signaling',is_a,'positive regulation of biological process').
go('positive regulation of biological process',is_a,'regulation of biological process').
go('positive regulation of signaling',is_a,'regulation of signaling').
go('regulation of signaling',is_a,'regulation of biological process').
go('regulation of signaling',regulates,'signaling').
go('regulation of canonical Wnt signaling pathway',is_a,'regulation of Wnt signaling pathway').
go('regulation of Wnt signaling pathway',is_a,'regulation of signal transduction').
go('regulation of signal transduction',is_a,'regulation of signaling').
go('regulation of signal transduction',is_a,'regulation of response to stimulus').
go('regulation of response to stimulus',is_a,'regulation of biological process').
go('regulation of response to stimulus',regulates,'response to stimulus').
go('regulation of signal transduction',is_a,'regulation of cell communication').
go('regulation of cell communication',is_a,'regulation of cellular process').
go('regulation of cell communication',regulates,'cell communication').
go('regulation of signal transduction',regulates,'signal transduction').
go('regulation of Wnt signaling pathway',regulates,'Wnt signaling pathway').
go('Wnt signaling pathway',is_a,'cell surface receptor signaling pathway').
go('regulation of canonical Wnt signaling pathway',regulates,'canonical Wnt signaling pathway').
go('canonical Wnt signaling pathway',is_a,'Wnt signaling pathway').
go('positive regulation of Wnt signaling pathway',is_a,'regulation of Wnt signaling pathway').
go('positive regulation of signal transduction',is_a,'positive regulation of response to stimulus').
go('positive regulation of signal transduction',is_a,'positive regulation of cell communication').
go('positive regulation of cell communication',is_a,'positive regulation of cellular process').
go('positive regulation of cellular process',is_a,'regulation of cellular process').
go('positive regulation of cellular process',is_a,'positive regulation of biological process').
go('positive regulation of cell communication',is_a,'regulation of cell communication').
go('positive regulation of signal transduction',is_a,'regulation of signal transduction').
go('positive regulation of response to stimulus',is_a,'regulation of response to stimulus').
go('positive regulation of response to stimulus',is_a,'positive regulation of biological process').
go('positive regulation of cell migration',is_a,'positive regulation of cell motility').
go('positive regulation of cell motility',is_a,'regulation of cell motility').
go('regulation of cell motility',is_a,'regulation of cellular process').
go('regulation of cell motility',is_a,'regulation of locomotion').
go('positive regulation of cell migration',is_a,'regulation of cell migration').
go('regulation of locomotion',is_a,'regulation of biological process').
go('regulation of locomotion',regulates,'locomotion').
go('locomotion',is_a,'biological_process').
go('regulation of cell motility',regulates,'cell motility').
go('cell motility',is_a,'cellular process').
go('positive regulation of cell motility',is_a,'positive regulation of cellular process').
go('positive regulation of cell motility',is_a,'positive regulation of locomotion').
go('positive regulation of locomotion',is_a,'positive regulation of biological process').
go('positive regulation of locomotion',is_a,'regulation of locomotion').
go('regulation of cell migration',is_a,'regulation of cell motility').
go('regulation of cell migration',regulates,'cell migration').
go('cell migration',is_a,'cell motility').
go('positive regulation of cell population proliferation',is_a,'positive regulation of cellular process').
go('positive regulation of cell population proliferation',is_a,'regulation of cell population proliferation').
go('regulation of cell population proliferation',is_a,'regulation of cellular process').
go('regulation of cell population proliferation',regulates,'cell population proliferation').
go('cell population proliferation',is_a,'cellular process').
go('positive regulation of DNA binding',is_a,'regulation of DNA binding').
go('regulation of DNA binding',is_a,'regulation of binding').
go('positive regulation of DNA binding',is_a,'positive regulation of binding').
go('regulation of binding',is_a,'regulation of molecular function').
go('regulation of molecular function',is_a,'biological regulation').
go('regulation of molecular function',regulates,'molecular_function').
go('regulation of binding',regulates,'binding').
go('regulation of DNA binding',regulates,'DNA binding').
go('DNA binding',is_a,'nucleic acid binding').
go('nucleic acid binding',is_a,'binding').
go('positive regulation of binding',is_a,'positive regulation of molecular function').
go('positive regulation of molecular function',is_a,'regulation of molecular function').
go('positive regulation of binding',is_a,'regulation of binding').
go('positive regulation of DNA-templated transcription',is_a,'positive regulation of RNA biosynthetic process').
go('positive regulation of DNA-templated transcription',is_a,'regulation of DNA-templated transcription').
go('positive regulation of RNA biosynthetic process',is_a,'positive regulation of RNA metabolic process').
go('positive regulation of RNA metabolic process',is_a,'positive regulation of macromolecule metabolic process').
go('positive regulation of macromolecule metabolic process',is_a,'regulation of macromolecule metabolic process').
go('regulation of macromolecule metabolic process',is_a,'regulation of metabolic process').
go('regulation of metabolic process',is_a,'regulation of cellular process').
go('regulation of metabolic process',regulates,'metabolic process').
go('metabolic process',is_a,'cellular process').
go('regulation of macromolecule metabolic process',regulates,'macromolecule metabolic process').
go('macromolecule metabolic process',is_a,'metabolic process').
go('positive regulation of macromolecule metabolic process',is_a,'positive regulation of metabolic process').
go('regulation of DNA-templated transcription',is_a,'regulation of gene expression').
go('regulation of gene expression',is_a,'regulation of macromolecule biosynthetic process').
go('regulation of macromolecule biosynthetic process',is_a,'regulation of macromolecule metabolic process').
go('regulation of macromolecule biosynthetic process',is_a,'regulation of biosynthetic process').
go('regulation of biosynthetic process',is_a,'regulation of metabolic process').
go('regulation of biosynthetic process',regulates,'biosynthetic process').
go('biosynthetic process',is_a,'metabolic process').
go('regulation of macromolecule biosynthetic process',regulates,'macromolecule biosynthetic process').
go('macromolecule biosynthetic process',is_a,'biosynthetic process').
go('macromolecule biosynthetic process',is_a,'macromolecule metabolic process').
go('regulation of gene expression',regulates,'gene expression').
go('gene expression',is_a,'macromolecule biosynthetic process').
go('positive regulation of metabolic process',is_a,'positive regulation of cellular process').
go('regulation of DNA-templated transcription',is_a,'regulation of RNA biosynthetic process').
go('regulation of RNA biosynthetic process',is_a,'regulation of RNA metabolic process').
go('regulation of RNA metabolic process',is_a,'regulation of macromolecule metabolic process').
go('regulation of RNA metabolic process',is_a,'regulation of nucleobase-containing compound metabolic process').
go('regulation of nucleobase-containing compound metabolic process',is_a,'regulation of primary metabolic process').
go('positive regulation of metabolic process',is_a,'regulation of metabolic process').
go('positive regulation of RNA metabolic process',is_a,'regulation of RNA metabolic process').
go('positive regulation of RNA biosynthetic process',is_a,'regulation of RNA biosynthetic process').
go('positive regulation of RNA biosynthetic process',is_a,'positive regulation of macromolecule biosynthetic process').
go('positive regulation of macromolecule biosynthetic process',is_a,'positive regulation of biosynthetic process').
go('positive regulation of biosynthetic process',is_a,'positive regulation of metabolic process').
go('positive regulation of biosynthetic process',is_a,'regulation of biosynthetic process').
go('positive regulation of macromolecule biosynthetic process',is_a,'positive regulation of macromolecule metabolic process').
go('positive regulation of macromolecule biosynthetic process',is_a,'regulation of macromolecule biosynthetic process').
go('regulation of primary metabolic process',is_a,'regulation of metabolic process').
go('regulation of primary metabolic process',regulates,'primary metabolic process').
go('primary metabolic process',is_a,'metabolic process').
go('regulation of nucleobase-containing compound metabolic process',regulates,'nucleobase-containing compound metabolic process').
go('nucleobase-containing compound metabolic process',is_a,'primary metabolic process').
go('regulation of RNA metabolic process',regulates,'RNA metabolic process').
go('RNA metabolic process',is_a,'nucleic acid metabolic process').
go('nucleic acid metabolic process',is_a,'macromolecule metabolic process').
go('nucleic acid metabolic process',is_a,'nucleobase-containing compound metabolic process').
go('regulation of RNA biosynthetic process',is_a,'regulation of macromolecule biosynthetic process').
go('regulation of RNA biosynthetic process',regulates,'RNA biosynthetic process').
go('RNA biosynthetic process',is_a,'nucleic acid biosynthetic process').
go('nucleic acid biosynthetic process',is_a,'nucleobase-containing compound biosynthetic process').
go('nucleobase-containing compound biosynthetic process',is_a,'biosynthetic process').
go('nucleobase-containing compound biosynthetic process',is_a,'nucleobase-containing compound metabolic process').
go('nucleic acid biosynthetic process',is_a,'nucleic acid metabolic process').
go('nucleic acid biosynthetic process',is_a,'macromolecule biosynthetic process').
go('RNA biosynthetic process',is_a,'RNA metabolic process').
go('regulation of DNA-templated transcription',regulates,'DNA-templated transcription').
go('DNA-templated transcription',is_a,'RNA biosynthetic process').
go('DNA-templated transcription',part_of,'gene expression').
go('positive regulation of endothelial cell migration',is_a,'positive regulation of cell migration').
go('positive regulation of endothelial cell migration',is_a,'regulation of endothelial cell migration').
go('regulation of endothelial cell migration',is_a,'regulation of cell migration').
go('regulation of endothelial cell migration',regulates,'endothelial cell migration').
go('endothelial cell migration',is_a,'cell migration').
go('positive regulation of endothelial cell proliferation',is_a,'positive regulation of epithelial cell proliferation').
go('positive regulation of epithelial cell proliferation',is_a,'regulation of epithelial cell proliferation').
go('regulation of epithelial cell proliferation',is_a,'regulation of cell population proliferation').
go('regulation of epithelial cell proliferation',regulates,'epithelial cell proliferation').
go('epithelial cell proliferation',is_a,'cell population proliferation').
go('positive regulation of epithelial cell proliferation',is_a,'positive regulation of cell population proliferation').
go('positive regulation of endothelial cell proliferation',is_a,'regulation of endothelial cell proliferation').
go('regulation of endothelial cell proliferation',is_a,'regulation of epithelial cell proliferation').
go('regulation of endothelial cell proliferation',regulates,'endothelial cell proliferation').
go('endothelial cell proliferation',is_a,'epithelial cell proliferation').
go('positive regulation of epithelial tube formation',is_a,'positive regulation of multicellular organismal process').
go('positive regulation of epithelial tube formation',is_a,'positive regulation of morphogenesis of an epithelium').
go('positive regulation of multicellular organismal process',is_a,'positive regulation of biological process').
go('positive regulation of multicellular organismal process',is_a,'regulation of multicellular organismal process').
go('regulation of multicellular organismal process',is_a,'regulation of biological process').
go('regulation of multicellular organismal process',regulates,'multicellular organismal process').
go('positive regulation of epithelial tube formation',is_a,'regulation of epithelial tube formation').
go('regulation of epithelial tube formation',is_a,'regulation of multicellular organismal development').
go('regulation of multicellular organismal development',is_a,'regulation of multicellular organismal process').
go('regulation of multicellular organismal development',is_a,'regulation of developmental process').
go('regulation of developmental process',is_a,'regulation of biological process').
go('positive regulation of morphogenesis of an epithelium',is_a,'regulation of morphogenesis of an epithelium').
go('regulation of morphogenesis of an epithelium',is_a,'regulation of anatomical structure morphogenesis').
go('regulation of anatomical structure morphogenesis',is_a,'regulation of developmental process').
go('regulation of anatomical structure morphogenesis',regulates,'anatomical structure morphogenesis').
go('regulation of morphogenesis of an epithelium',regulates,'morphogenesis of an epithelium').
go('morphogenesis of an epithelium',is_a,'tissue morphogenesis').
go('tissue morphogenesis',is_a,'anatomical structure morphogenesis').
go('tissue morphogenesis',part_of,'tissue development').
go('tissue development',is_a,'anatomical structure development').
go('morphogenesis of an epithelium',part_of,'epithelium development').
go('epithelium development',is_a,'tissue development').
go('epithelium development',is_a,'animal gross anatomical part developmental process').
go('regulation of developmental process',regulates,'developmental process').
go('positive regulation of morphogenesis of an epithelium',is_a,'positive regulation of developmental process').
go('positive regulation of developmental process',is_a,'positive regulation of biological process').
go('positive regulation of developmental process',is_a,'regulation of developmental process').
go('regulation of epithelial tube formation',is_a,'regulation of morphogenesis of an epithelium').
go('regulation of multicellular organismal development',regulates,'multicellular organism development').
go('regulation of epithelial tube formation',regulates,'epithelial tube formation').
go('epithelial tube formation',is_a,'tube formation').
go('tube formation',is_a,'anatomical structure formation involved in morphogenesis').
go('tube formation',part_of,'tube morphogenesis').
go('epithelial tube formation',part_of,'epithelial tube morphogenesis').
go('epithelial tube morphogenesis',is_a,'tube morphogenesis').
go('epithelial tube morphogenesis',is_a,'morphogenesis of an epithelium').
go('positive regulation of gene expression',is_a,'positive regulation of macromolecule biosynthetic process').
go('positive regulation of gene expression',is_a,'regulation of gene expression').
go('positive regulation of hyaluronan biosynthetic process',is_a,'positive regulation of carbohydrate metabolic process').
go('positive regulation of hyaluronan biosynthetic process',is_a,'positive regulation of macromolecule biosynthetic process').
go('positive regulation of carbohydrate metabolic process',is_a,'positive regulation of metabolic process').
go('positive regulation of carbohydrate metabolic process',is_a,'regulation of carbohydrate metabolic process').
go('regulation of carbohydrate metabolic process',is_a,'regulation of primary metabolic process').
go('regulation of carbohydrate metabolic process',regulates,'carbohydrate metabolic process').
go('carbohydrate metabolic process',is_a,'primary metabolic process').
go('positive regulation of hyaluronan biosynthetic process',is_a,'regulation of hyaluronan biosynthetic process').
go('regulation of hyaluronan biosynthetic process',is_a,'regulation of polysaccharide biosynthetic process').
go('regulation of polysaccharide biosynthetic process',is_a,'regulation of macromolecule biosynthetic process').
go('regulation of polysaccharide biosynthetic process',is_a,'regulation of carbohydrate biosynthetic process').
go('regulation of polysaccharide biosynthetic process',is_a,'regulation of polysaccharide metabolic process').
go('regulation of polysaccharide metabolic process',is_a,'regulation of carbohydrate metabolic process').
go('regulation of carbohydrate biosynthetic process',is_a,'regulation of biosynthetic process').
go('regulation of carbohydrate biosynthetic process',is_a,'regulation of carbohydrate metabolic process').
go('regulation of carbohydrate biosynthetic process',regulates,'carbohydrate biosynthetic process').
go('carbohydrate biosynthetic process',is_a,'carbohydrate metabolic process').
go('carbohydrate biosynthetic process',is_a,'biosynthetic process').
go('regulation of polysaccharide metabolic process',is_a,'regulation of macromolecule metabolic process').
go('regulation of polysaccharide metabolic process',regulates,'polysaccharide metabolic process').
go('polysaccharide metabolic process',is_a,'macromolecule metabolic process').
go('polysaccharide metabolic process',is_a,'carbohydrate metabolic process').
go('regulation of polysaccharide biosynthetic process',regulates,'polysaccharide biosynthetic process').
go('polysaccharide biosynthetic process',is_a,'macromolecule biosynthetic process').
go('polysaccharide biosynthetic process',is_a,'polysaccharide metabolic process').
go('polysaccharide biosynthetic process',is_a,'carbohydrate biosynthetic process').
go('regulation of hyaluronan biosynthetic process',regulates,'hyaluronan biosynthetic process').
go('hyaluronan biosynthetic process',is_a,'hyaluronan metabolic process').
go('hyaluronan biosynthetic process',is_a,'glycosaminoglycan biosynthetic process').
go('hyaluronan metabolic process',is_a,'glycosaminoglycan metabolic process').
go('glycosaminoglycan metabolic process',is_a,'aminoglycan metabolic process').
go('aminoglycan metabolic process',is_a,'carbohydrate derivative metabolic process').
go('glycosaminoglycan biosynthetic process',is_a,'aminoglycan biosynthetic process').
go('aminoglycan biosynthetic process',is_a,'macromolecule biosynthetic process').
go('aminoglycan biosynthetic process',is_a,'carbohydrate derivative biosynthetic process').
go('carbohydrate derivative biosynthetic process',is_a,'carbohydrate derivative metabolic process').
go('carbohydrate derivative metabolic process',is_a,'metabolic process').
go('carbohydrate derivative biosynthetic process',is_a,'biosynthetic process').
go('aminoglycan biosynthetic process',is_a,'aminoglycan metabolic process').
go('glycosaminoglycan biosynthetic process',is_a,'glycosaminoglycan metabolic process').
go('aminoglycan metabolic process',is_a,'macromolecule metabolic process').
go('positive regulation of MAPK cascade',is_a,'positive regulation of intracellular signal transduction').
go('positive regulation of MAPK cascade',is_a,'regulation of MAPK cascade').
go('positive regulation of intracellular signal transduction',is_a,'regulation of intracellular signal transduction').
go('regulation of intracellular signal transduction',is_a,'regulation of signal transduction').
go('regulation of intracellular signal transduction',regulates,'intracellular signal transduction').
go('positive regulation of intracellular signal transduction',is_a,'positive regulation of signal transduction').
go('regulation of MAPK cascade',is_a,'regulation of intracellular signal transduction').
go('regulation of MAPK cascade',regulates,'MAPK cascade').
go('positive regulation of mitotic nuclear division',is_a,'positive regulation of nuclear division').
go('positive regulation of mitotic nuclear division',is_a,'regulation of mitotic nuclear division').
go('positive regulation of nuclear division',is_a,'positive regulation of organelle organization').
go('positive regulation of organelle organization',is_a,'positive regulation of cellular component organization').
go('positive regulation of cellular component organization',is_a,'positive regulation of cellular process').
go('positive regulation of cellular component organization',is_a,'regulation of cellular component organization').
go('regulation of cellular component organization',is_a,'regulation of cellular process').
go('regulation of cellular component organization',regulates,'cellular component organization').
go('regulation of mitotic nuclear division',is_a,'regulation of mitotic cell cycle').
go('regulation of mitotic cell cycle',is_a,'regulation of cell cycle').
go('regulation of cell cycle',is_a,'regulation of cellular process').
go('regulation of cell cycle',regulates,'cell cycle').
go('cell cycle',is_a,'cellular process').
go('regulation of mitotic cell cycle',regulates,'mitotic cell cycle').
go('mitotic cell cycle',is_a,'cell cycle').
go('regulation of mitotic nuclear division',is_a,'regulation of nuclear division').
go('regulation of nuclear division',is_a,'regulation of organelle organization').
go('regulation of organelle organization',is_a,'regulation of cellular component organization').
go('cellular component organization',is_a,'cellular component organization or biogenesis').
go('regulation of organelle organization',regulates,'organelle organization').
go('organelle organization',is_a,'cellular component organization').
go('regulation of nuclear division',regulates,'nuclear division').
go('nuclear division',is_a,'organelle fission').
go('organelle fission',is_a,'organelle organization').
go('regulation of mitotic nuclear division',is_a,'regulation of cell cycle process').
go('regulation of cell cycle process',is_a,'regulation of cell cycle').
go('regulation of cell cycle process',regulates,'cell cycle process').
go('cell cycle process',is_a,'cellular process').
go('cell cycle process',part_of,'cell cycle').
go('regulation of mitotic nuclear division',regulates,'mitotic nuclear division').
go('cellular component organization or biogenesis',is_a,'cellular process').
go('positive regulation of organelle organization',is_a,'regulation of organelle organization').
go('positive regulation of nuclear division',is_a,'regulation of nuclear division').
go('positive regulation of mitotic nuclear division',is_a,'positive regulation of cell cycle process').
go('positive regulation of cell cycle process',is_a,'regulation of cell cycle process').
go('positive regulation of cell cycle process',is_a,'positive regulation of cell cycle').
go('positive regulation of cell cycle',is_a,'positive regulation of cellular process').
go('positive regulation of cell cycle',is_a,'regulation of cell cycle').
go('mitotic nuclear division',is_a,'mitotic cell cycle process').
go('mitotic cell cycle process',is_a,'cell cycle process').
go('mitotic cell cycle process',part_of,'mitotic cell cycle').
go('mitotic nuclear division',is_a,'nuclear division').
go('mitotic nuclear division',part_of,'mitotic cell cycle').
go('positive regulation of peptidyl-threonine phosphorylation',is_a,'positive regulation of protein phosphorylation').
go('positive regulation of protein phosphorylation',is_a,'positive regulation of phosphorylation').
go('positive regulation of phosphorylation',is_a,'regulation of phosphorylation').
go('regulation of phosphorylation',is_a,'regulation of metabolic process').
go('regulation of phosphorylation',regulates,'phosphorylation').
go('phosphorylation',is_a,'phosphate-containing compound metabolic process').
go('phosphate-containing compound metabolic process',is_a,'metabolic process').
go('positive regulation of peptidyl-threonine phosphorylation',is_a,'regulation of peptidyl-threonine phosphorylation').
go('positive regulation of phosphorylation',is_a,'positive regulation of phosphate metabolic process').
go('positive regulation of phosphate metabolic process',is_a,'positive regulation of metabolic process').
go('positive regulation of protein phosphorylation',is_a,'regulation of protein phosphorylation').
go('regulation of protein phosphorylation',is_a,'regulation of phosphorylation').
go('regulation of protein phosphorylation',is_a,'regulation of protein modification process').
go('regulation of protein modification process',is_a,'regulation of protein metabolic process').
go('regulation of protein metabolic process',is_a,'regulation of primary metabolic process').
go('regulation of protein metabolic process',is_a,'regulation of macromolecule metabolic process').
go('regulation of protein metabolic process',regulates,'protein metabolic process').
go('protein metabolic process',is_a,'primary metabolic process').
go('regulation of peptidyl-threonine phosphorylation',is_a,'regulation of protein phosphorylation').
go('regulation of peptidyl-threonine phosphorylation',regulates,'peptidyl-threonine phosphorylation').
go('peptidyl-threonine phosphorylation',is_a,'protein phosphorylation').
go('protein phosphorylation',is_a,'protein modification process').
go('protein modification process',is_a,'macromolecule modification').
go('macromolecule modification',is_a,'macromolecule metabolic process').
go('protein modification process',is_a,'protein metabolic process').
go('protein phosphorylation',is_a,'phosphorylation').
go('positive regulation of protein phosphorylation',is_a,'positive regulation of protein modification process').
go('protein metabolic process',is_a,'macromolecule metabolic process').
go('positive regulation of protein modification process',is_a,'positive regulation of protein metabolic process').
go('positive regulation of protein metabolic process',is_a,'positive regulation of macromolecule metabolic process').
go('positive regulation of protein metabolic process',is_a,'regulation of protein metabolic process').
go('regulation of protein modification process',regulates,'protein modification process').
go('regulation of protein phosphorylation',regulates,'protein phosphorylation').
go('positive regulation of protein modification process',is_a,'regulation of protein modification process').
go('positive regulation of phosphatidylinositol 3-kinase/protein kinase B signal transduction',is_a,'positive regulation of intracellular signal transduction').
go('positive regulation of phosphatidylinositol 3-kinase/protein kinase B signal transduction',is_a,'regulation of phosphatidylinositol 3-kinase/protein kinase B signal transduction').
go('regulation of phosphatidylinositol 3-kinase/protein kinase B signal transduction',is_a,'regulation of intracellular signal transduction').
go('regulation of phosphatidylinositol 3-kinase/protein kinase B signal transduction',regulates,'phosphatidylinositol 3-kinase/protein kinase B signal transduction').
go('phosphatidylinositol 3-kinase/protein kinase B signal transduction',is_a,'intracellular signaling cassette').
go('positive regulation of protein localization to early endosome',is_a,'positive regulation of protein localization to endosome').
go('positive regulation of protein localization to endosome',is_a,'regulation of protein localization to endosome').
go('regulation of protein localization to endosome',is_a,'regulation of protein localization').
go('regulation of protein localization',is_a,'regulation of localization').
go('positive regulation of protein localization to early endosome',is_a,'regulation of protein localization to early endosome').
go('regulation of protein localization',regulates,'intracellular protein localization').
go('intracellular protein localization',is_a,'macromolecule localization').
go('regulation of protein localization to endosome',regulates,'protein localization to endosome').
go('protein localization to endosome',is_a,'protein localization to organelle').
go('protein localization to organelle',is_a,'intracellular protein localization').
go('positive regulation of protein localization to endosome',is_a,'positive regulation of protein localization').
go('positive regulation of protein localization',is_a,'positive regulation of biological process').
go('positive regulation of protein localization',is_a,'regulation of protein localization').
go('regulation of protein localization to early endosome',is_a,'regulation of protein localization to endosome').
go('regulation of protein localization to early endosome',regulates,'protein localization to early endosome').
go('protein localization to early endosome',is_a,'protein localization to endosome').
go('positive regulation of receptor internalization',is_a,'regulation of receptor internalization').
go('positive regulation of receptor internalization',is_a,'positive regulation of receptor-mediated endocytosis').
go('regulation of receptor internalization',is_a,'regulation of receptor-mediated endocytosis').
go('regulation of receptor-mediated endocytosis',is_a,'regulation of endocytosis').
go('regulation of endocytosis',is_a,'regulation of transport').
go('regulation of endocytosis',is_a,'regulation of cellular component organization').
go('positive regulation of receptor-mediated endocytosis',is_a,'regulation of receptor-mediated endocytosis').
go('positive regulation of receptor-mediated endocytosis',is_a,'positive regulation of endocytosis').
go('positive regulation of endocytosis',is_a,'positive regulation of transport').
go('positive regulation of transport',is_a,'positive regulation of biological process').
go('positive regulation of transport',is_a,'regulation of transport').
go('positive regulation of endocytosis',is_a,'positive regulation of cellular component organization').
go('positive regulation of endocytosis',is_a,'regulation of endocytosis').
go('regulation of receptor-mediated endocytosis',is_a,'regulation of vesicle-mediated transport').
go('regulation of vesicle-mediated transport',is_a,'regulation of transport').
go('regulation of endocytosis',regulates,'endocytosis').
go('regulation of vesicle-mediated transport',is_a,'regulation of cellular process').
go('regulation of vesicle-mediated transport',regulates,'vesicle-mediated transport').
go('vesicle-mediated transport',is_a,'transport').
go('vesicle-mediated transport',is_a,'cellular process').
go('endocytosis',is_a,'import into cell').
go('import into cell',is_a,'transport').
go('regulation of receptor-mediated endocytosis',regulates,'receptor-mediated endocytosis').
go('receptor-mediated endocytosis',is_a,'vesicle-mediated transport').
go('receptor-mediated endocytosis',is_a,'endocytosis').
go('regulation of receptor internalization',regulates,'receptor internalization').
go('receptor internalization',is_a,'receptor-mediated endocytosis').
go('positive regulation of ubiquitin-dependent protein catabolic process',is_a,'positive regulation of protein catabolic process').
go('positive regulation of ubiquitin-dependent protein catabolic process',is_a,'regulation of ubiquitin-dependent protein catabolic process').
go('positive regulation of protein catabolic process',is_a,'regulation of protein catabolic process').
go('regulation of protein catabolic process',is_a,'regulation of catabolic process').
go('regulation of catabolic process',is_a,'regulation of metabolic process').
go('regulation of ubiquitin-dependent protein catabolic process',is_a,'regulation of protein catabolic process').
go('regulation of ubiquitin-dependent protein catabolic process',regulates,'ubiquitin-dependent protein catabolic process').
go('ubiquitin-dependent protein catabolic process',is_a,'modification-dependent protein catabolic process').
go('modification-dependent protein catabolic process',is_a,'protein catabolic process').
go('protein catabolic process',is_a,'protein metabolic process').
go('protein catabolic process',is_a,'macromolecule catabolic process').
go('macromolecule catabolic process',is_a,'catabolic process').
go('catabolic process',is_a,'metabolic process').
go('regulation of catabolic process',regulates,'catabolic process').
go('macromolecule catabolic process',is_a,'macromolecule metabolic process').
go('modification-dependent protein catabolic process',is_a,'modification-dependent macromolecule catabolic process').
go('modification-dependent macromolecule catabolic process',is_a,'macromolecule catabolic process').
go('positive regulation of protein catabolic process',is_a,'positive regulation of catabolic process').
go('positive regulation of catabolic process',is_a,'regulation of catabolic process').
go('positive regulation of catabolic process',is_a,'positive regulation of metabolic process').
go('positive regulation of protein catabolic process',is_a,'positive regulation of protein metabolic process').
go('regulation of protein catabolic process',is_a,'regulation of protein metabolic process').
go('regulation of protein catabolic process',regulates,'protein catabolic process').
go('regulation of calcium ion import',is_a,'regulation of calcium ion transport').
go('regulation of calcium ion transport',is_a,'regulation of metal ion transport').
go('regulation of metal ion transport',is_a,'regulation of monoatomic ion transport').
go('regulation of monoatomic ion transport',is_a,'regulation of transport').
go('regulation of monoatomic ion transport',regulates,'monoatomic ion transport').
go('monoatomic ion transport',is_a,'transport').
go('regulation of metal ion transport',regulates,'metal ion transport').
go('metal ion transport',is_a,'monoatomic cation transport').
go('monoatomic cation transport',is_a,'monoatomic ion transport').
go('regulation of calcium ion transport',regulates,'calcium ion transport').
go('calcium ion transport',is_a,'metal ion transport').
go('regulation of calcium ion import',regulates,'calcium ion import').
go('calcium ion import',is_a,'calcium ion transport').
go('regulation of protein localization to cell surface',is_a,'regulation of protein localization').
go('regulation of protein localization to cell surface',regulates,'protein localization to cell surface').
go('protein localization to cell surface',is_a,'intracellular protein localization').
go('regulation of receptor signaling pathway via JAK-STAT',is_a,'regulation of receptor signaling pathway via STAT').
go('regulation of receptor signaling pathway via STAT',is_a,'regulation of signal transduction').
go('regulation of receptor signaling pathway via STAT',regulates,'cell surface receptor signaling pathway via STAT').
go('cell surface receptor signaling pathway via STAT',is_a,'cell surface receptor signaling pathway').
go('regulation of receptor signaling pathway via JAK-STAT',regulates,'cell surface receptor signaling pathway via JAK-STAT').
go('cell surface receptor signaling pathway via JAK-STAT',is_a,'cell surface receptor signaling pathway via STAT').
go('clathrin-coated endocytic vesicle membrane',is_a,'clathrin-coated vesicle membrane').
go('clathrin-coated vesicle membrane',is_a,'coated vesicle membrane').
go('coated vesicle membrane',is_a,'bounding membrane of organelle').
go('bounding membrane of organelle',is_a,'organelle membrane').
go('organelle membrane',is_a,'membrane').
go('membrane',is_a,'cellular anatomical structure').
go('organelle membrane',part_of,'membrane-bounded organelle').
go('membrane-bounded organelle',is_a,'organelle').
go('organelle',is_a,'cellular anatomical structure').
go('bounding membrane of organelle',part_of,'organelle').
go('coated vesicle membrane',is_a,'cytoplasmic vesicle membrane').
go('cytoplasmic vesicle membrane',is_a,'vesicle membrane').
go('vesicle membrane',is_a,'organelle membrane').
go('vesicle membrane',part_of,'vesicle').
go('vesicle',is_a,'membrane-bounded organelle').
go('cytoplasmic vesicle membrane',part_of,'cytoplasmic vesicle').
go('cytoplasmic vesicle',is_a,'intracellular vesicle').
go('intracellular vesicle',is_a,'vesicle').
go('intracellular vesicle',is_a,'intracellular membrane-bounded organelle').
go('intracellular membrane-bounded organelle',is_a,'intracellular organelle').
go('intracellular organelle',is_a,'organelle').
go('intracellular organelle',part_of,'intracellular anatomical structure').
go('clathrin-coated endocytic vesicle membrane',is_a,'endocytic vesicle membrane').
go('intracellular membrane-bounded organelle',is_a,'membrane-bounded organelle').
go('endocytic vesicle membrane',is_a,'bounding membrane of organelle').
go('endocytic vesicle membrane',is_a,'cytoplasmic vesicle membrane').
go('intracellular membrane-bounded organelle',part_of,'intracellular anatomical structure').
go('endocytic vesicle membrane',part_of,'endocytic vesicle').
go('endocytic vesicle',is_a,'cytoplasmic vesicle').
go('intracellular vesicle',part_of,'intracellular anatomical structure').
go('cytoplasmic vesicle',part_of,'cytoplasm').
go('cytoplasm',is_a,'cellular anatomical structure').
go('cytoplasm',part_of,'intracellular anatomical structure').
go('coated vesicle membrane',part_of,'coated vesicle').
go('coated vesicle',is_a,'cytoplasmic vesicle').
go('clathrin-coated vesicle membrane',part_of,'clathrin-coated vesicle').
go('clathrin-coated vesicle',is_a,'coated vesicle').
go('clathrin-coated endocytic vesicle membrane',part_of,'clathrin-coated endocytic vesicle').
go('clathrin-coated endocytic vesicle',is_a,'endocytic vesicle').
go('clathrin-coated endocytic vesicle',is_a,'clathrin-coated vesicle').
go('extracellular exosome',is_a,'extracellular vesicle').
go('extracellular vesicle',is_a,'extracellular membrane-bounded organelle').
go('extracellular membrane-bounded organelle',is_a,'membrane-bounded organelle').
go('extracellular vesicle',is_a,'vesicle').
go('extracellular membrane-bounded organelle',is_a,'extracellular organelle').
go('extracellular organelle',is_a,'organelle').
go('extracellular organelle',part_of,'extracellular region').
go('extracellular region',is_a,'cellular anatomical structure').
go('extracellular membrane-bounded organelle',part_of,'extracellular region').
go('extracellular vesicle',part_of,'extracellular region').
go('lysosomal membrane',is_a,'lytic vacuole membrane').
go('lytic vacuole membrane',is_a,'vacuolar membrane').
go('vacuolar membrane',is_a,'bounding membrane of organelle').
go('vacuolar membrane',part_of,'vacuole').
go('vacuole',is_a,'intracellular membrane-bounded organelle').
go('vacuole',part_of,'cytoplasm').
go('lytic vacuole membrane',part_of,'lytic vacuole').
go('lytic vacuole',is_a,'vacuole').
go('lysosomal membrane',part_of,'lysosome').
go('lysosome',is_a,'lytic vacuole').
go('plasma membrane',is_a,'membrane').
go('plasma membrane',part_of,'cell periphery').
go('cell periphery',is_a,'cellular anatomical structure').
go('platelet alpha granule lumen',is_a,'secretory granule lumen').
go('secretory granule lumen',is_a,'cytoplasmic vesicle lumen').
go('cytoplasmic vesicle lumen',is_a,'vesicle lumen').
go('vesicle lumen',is_a,'organelle lumen').
go('organelle lumen',is_a,'membrane-enclosed lumen').
go('membrane-enclosed lumen',is_a,'cellular anatomical structure').
go('organelle lumen',part_of,'organelle').
go('vesicle lumen',part_of,'vesicle').
go('cytoplasmic vesicle lumen',is_a,'intracellular organelle lumen').
go('intracellular organelle lumen',is_a,'organelle lumen').
go('intracellular organelle lumen',part_of,'intracellular organelle').
go('cytoplasmic vesicle lumen',part_of,'cytoplasmic vesicle').
go('secretory granule lumen',part_of,'secretory granule').
go('secretory granule',is_a,'secretory vesicle').
go('secretory vesicle',is_a,'cytoplasmic vesicle').
go('secretory granule',part_of,'endomembrane system').
go('endomembrane system',is_a,'cellular anatomical structure').
go('platelet alpha granule lumen',part_of,'platelet alpha granule').
go('platelet alpha granule',is_a,'secretory granule').
leaf('EGFR','actin filament binding').
fm('actin filament binding').
leaf('EGFR','ATP binding').
fm('ATP binding').
leaf('EGFR','ATPase binding').
fm('ATPase binding').
leaf('EGFR','cadherin binding').
fm('cadherin binding').
leaf('EGFR','chromatin binding').
fm('chromatin binding').
leaf('EGFR','double-stranded DNA binding').
fm('double-stranded DNA binding').
leaf('EGFR','enzyme binding').
fm('enzyme binding').
leaf('EGFR','epidermal growth factor binding').
fm('epidermal growth factor binding').
leaf('EGFR','epidermal growth factor receptor activity').
fm('epidermal growth factor receptor activity').
leaf('EGFR','identical protein binding').
fm('identical protein binding').
leaf('EGFR','kinase binding').
fm('kinase binding').
leaf('EGFR','MAP kinase kinase kinase activity').
fm('MAP kinase kinase kinase activity').
leaf('EGFR','protein phosphatase binding').
fm('protein phosphatase binding').
leaf('EGFR','protein tyrosine kinase activator activity').
fm('protein tyrosine kinase activator activity').
leaf('EGFR','protein tyrosine kinase activity').
fm('protein tyrosine kinase activity').
leaf('EGFR','transmembrane receptor protein tyrosine kinase activity').
fm('transmembrane receptor protein tyrosine kinase activity').
leaf('EGFR','transmembrane signaling receptor activity').
fm('transmembrane signaling receptor activity').
leaf('EGFR','ubiquitin protein ligase binding').
fm('ubiquitin protein ligase binding').
leaf('EGFR','cell surface receptor signaling pathway').
bp('cell surface receptor signaling pathway').
leaf('EGFR','cell-cell adhesion').
bp('cell-cell adhesion').
leaf('EGFR','cellular response to amino acid stimulus').
bp('cellular response to amino acid stimulus').
leaf('EGFR','cellular response to epidermal growth factor stimulus').
bp('cellular response to epidermal growth factor stimulus').
leaf('EGFR','cellular response to estradiol stimulus').
bp('cellular response to estradiol stimulus').
leaf('EGFR','epidermal growth factor receptor signaling pathway').
leaf('EGFR','ERBB2-EGFR signaling pathway').
leaf('EGFR','learning or memory').
bp('learning or memory').
leaf('EGFR','negative regulation of apoptotic process').
bp('negative regulation of apoptotic process').
leaf('EGFR','negative regulation of cardiocyte differentiation').
bp('negative regulation of cardiocyte differentiation').
leaf('EGFR','negative regulation of epidermal growth factor receptor signaling pathway').
bp('negative regulation of epidermal growth factor receptor signaling pathway').
leaf('EGFR','negative regulation of macroautophagy').
bp('negative regulation of macroautophagy').
leaf('EGFR','negative regulation of protein catabolic process').
bp('negative regulation of protein catabolic process').
leaf('EGFR','neuron differentiation').
bp('neuron differentiation').
leaf('EGFR','ossification').
bp('ossification').
leaf('EGFR','phosphatidylinositol 3-kinase/protein kinase B signal transduction').
bp('phosphatidylinositol 3-kinase/protein kinase B signal transduction').
leaf('EGFR','positive regulation of canonical Wnt signaling pathway').
leaf('EGFR','positive regulation of cell growth').
bp('positive regulation of cell growth').
leaf('EGFR','positive regulation of cell migration').
leaf('EGFR','positive regulation of cell population proliferation').
leaf('EGFR','positive regulation of cGAS/STING signaling pathway').
bp('positive regulation of cGAS/STING signaling pathway').
leaf('EGFR','positive regulation of DNA repair').
bp('positive regulation of DNA repair').
leaf('EGFR','positive regulation of DNA replication').
bp('positive regulation of DNA replication').
leaf('EGFR','positive regulation of epithelial cell proliferation').
bp('positive regulation of epithelial cell proliferation').
leaf('EGFR','positive regulation of ERK1 and ERK2 cascade').
bp('positive regulation of ERK1 and ERK2 cascade').
leaf('EGFR','positive regulation of fibroblast proliferation').
bp('positive regulation of fibroblast proliferation').
leaf('EGFR','positive regulation of G1/S transition of mitotic cell cycle').
bp('positive regulation of G1/S transition of mitotic cell cycle').
leaf('EGFR','positive regulation of MAPK cascade').
leaf('EGFR','positive regulation of miRNA transcription').
bp('positive regulation of miRNA transcription').
leaf('EGFR','positive regulation of peptidyl-serine phosphorylation').
bp('positive regulation of peptidyl-serine phosphorylation').
leaf('EGFR','positive regulation of phosphatidylinositol 3-kinase/protein kinase B signal transduction').
leaf('EGFR','positive regulation of phosphorylation').
leaf('EGFR','positive regulation of protein kinase C signaling').
bp('positive regulation of protein kinase C signaling').
leaf('EGFR','positive regulation of protein localization to plasma membrane').
bp('positive regulation of protein localization to plasma membrane').
leaf('EGFR','positive regulation of protein phosphorylation').
bp('positive regulation of protein phosphorylation').
leaf('EGFR','positive regulation of toll-like receptor 9 signaling pathway').
bp('positive regulation of toll-like receptor 9 signaling pathway').
leaf('EGFR','positive regulation of transcription by RNA polymerase II').
bp('positive regulation of transcription by RNA polymerase II').
leaf('EGFR','protein insertion into membrane').
bp('protein insertion into membrane').
leaf('EGFR','regulation of peptidyl-tyrosine phosphorylation').
bp('regulation of peptidyl-tyrosine phosphorylation').
leaf('EGFR','response to UV-A').
bp('response to UV-A').
leaf('EGFR','signal transduction').
bp('signal transduction').
leaf('EGFR','basal plasma membrane').
cc('basal plasma membrane').
leaf('EGFR','basolateral plasma membrane').
cc('basolateral plasma membrane').
leaf('EGFR','cell junction').
cc('cell junction').
leaf('EGFR','cell surface').
cc('cell surface').
leaf('EGFR','clathrin-coated endocytic vesicle membrane').
leaf('EGFR','cytoplasm').
cc('cytoplasm').
leaf('EGFR','early endosome membrane').
cc('early endosome membrane').
leaf('EGFR','endoplasmic reticulum membrane').
cc('endoplasmic reticulum membrane').
leaf('EGFR','endosome').
cc('endosome').
leaf('EGFR','endosome membrane').
cc('endosome membrane').
leaf('EGFR','extracellular region').
leaf('EGFR','focal adhesion').
cc('focal adhesion').
leaf('EGFR','Golgi apparatus').
cc('Golgi apparatus').
leaf('EGFR','Golgi membrane').
cc('Golgi membrane').
leaf('EGFR','intracellular vesicle').
cc('intracellular vesicle').
leaf('EGFR','membrane').
cc('membrane').
leaf('EGFR','membrane raft').
cc('membrane raft').
leaf('EGFR','multivesicular body, internal vesicle lumen').
cc('multivesicular body, internal vesicle lumen').
leaf('EGFR','nuclear membrane').
cc('nuclear membrane').
leaf('EGFR','nucleus').
cc('nucleus').
leaf('EGFR','perinuclear region of cytoplasm').
cc('perinuclear region of cytoplasm').
leaf('EGFR','plasma membrane').
leaf('EGFR','protein-containing complex').
cc('protein-containing complex').
leaf('EGFR','ruffle membrane').
cc('ruffle membrane').
leaf('EGFR','Shc-EGFR complex').
cc('Shc-EGFR complex').
leaf('EGFR','signaling receptor complex').
cc('signaling receptor complex').
go('actin filament binding',is_a,'protein-containing complex binding').
go('actin filament binding',is_a,'actin binding').
go('protein-containing complex binding',is_a,'binding').
go('actin binding',is_a,'cytoskeletal protein binding').
go('cytoskeletal protein binding',is_a,'protein binding').
go('ATP binding',is_a,'anion binding').
go('ATP binding',is_a,'adenyl ribonucleotide binding').
go('anion binding',is_a,'ion binding').
go('adenyl ribonucleotide binding',is_a,'purine ribonucleotide binding').
go('ATP binding',is_a,'purine ribonucleoside triphosphate binding').
go('purine ribonucleotide binding',is_a,'ribonucleotide binding').
go('purine ribonucleoside triphosphate binding',is_a,'nucleoside phosphate binding').
go('ribonucleotide binding',is_a,'carbohydrate derivative binding').
go('nucleoside phosphate binding',is_a,'binding').
go('carbohydrate derivative binding',is_a,'binding').
go('ribonucleotide binding',is_a,'nucleotide binding').
go('nucleotide binding',is_a,'heterocyclic compound binding').
go('heterocyclic compound binding',is_a,'small molecule binding').
go('nucleotide binding',is_a,'nucleoside phosphate binding').
go('purine ribonucleotide binding',is_a,'purine nucleotide binding').
go('purine nucleotide binding',is_a,'nucleotide binding').
go('adenyl ribonucleotide binding',is_a,'adenyl nucleotide binding').
go('adenyl nucleotide binding',is_a,'purine nucleotide binding').
go('ATPase binding',is_a,'enzyme binding').
go('enzyme binding',is_a,'protein binding').
go('cadherin binding',is_a,'cell adhesion molecule binding').
go('cell adhesion molecule binding',is_a,'protein binding').
go('chromatin binding',is_a,'binding').
go('double-stranded DNA binding',is_a,'DNA binding').
go('epidermal growth factor binding',is_a,'growth factor binding').
go('epidermal growth factor binding',is_a,'hormone binding').
go('growth factor binding',is_a,'protein binding').
go('hormone binding',is_a,'binding').
go('epidermal growth factor receptor activity',is_a,'transmembrane receptor protein tyrosine kinase activity').
go('transmembrane receptor protein tyrosine kinase activity',is_a,'transmembrane receptor protein kinase activity').
go('transmembrane receptor protein kinase activity',is_a,'transmembrane signaling receptor activity').
go('transmembrane signaling receptor activity',is_a,'signaling receptor activity').
go('transmembrane receptor protein kinase activity',is_a,'protein kinase activity').
go('transmembrane receptor protein tyrosine kinase activity',is_a,'protein tyrosine kinase activity').
go('protein tyrosine kinase activity',is_a,'protein kinase activity').
go('epidermal growth factor receptor activity',part_of,'epidermal growth factor receptor signaling pathway').
go('identical protein binding',is_a,'protein binding').
go('kinase binding',is_a,'enzyme binding').
go('MAP kinase kinase kinase activity',is_a,'protein serine/threonine kinase activity').
go('protein serine/threonine kinase activity',is_a,'protein kinase activity').
go('MAP kinase kinase kinase activity',part_of,'MAPK cascade').
go('protein phosphatase binding',is_a,'phosphatase binding').
go('phosphatase binding',is_a,'enzyme binding').
go('ubiquitin protein ligase binding',is_a,'ubiquitin-like protein ligase binding').
go('ubiquitin-like protein ligase binding',is_a,'enzyme binding').
go('cell-cell adhesion',is_a,'cell adhesion').
go('cell adhesion',is_a,'cellular process').
go('cellular response to amino acid stimulus',is_a,'response to amino acid').
go('response to amino acid',is_a,'response to acid chemical').
go('response to acid chemical',is_a,'response to chemical').
go('response to chemical',is_a,'response to stimulus').
go('cellular response to amino acid stimulus',is_a,'cellular response to acid chemical').
go('cellular response to acid chemical',is_a,'response to acid chemical').
go('cellular response to acid chemical',is_a,'cellular response to chemical stimulus').
go('cellular response to chemical stimulus',is_a,'response to chemical').
go('cellular response to chemical stimulus',is_a,'cellular response to stimulus').
go('cellular response to epidermal growth factor stimulus',is_a,'response to epidermal growth factor').
go('response to epidermal growth factor',is_a,'response to growth factor').
go('response to growth factor',is_a,'response to endogenous stimulus').
go('response to endogenous stimulus',is_a,'response to stimulus').
go('cellular response to epidermal growth factor stimulus',is_a,'cellular response to growth factor stimulus').
go('cellular response to growth factor stimulus',is_a,'response to growth factor').
go('cellular response to growth factor stimulus',is_a,'cellular response to endogenous stimulus').
go('cellular response to endogenous stimulus',is_a,'response to endogenous stimulus').
go('cellular response to estradiol stimulus',is_a,'response to estradiol').
go('response to estradiol',is_a,'response to oxygen-containing compound').
go('response to oxygen-containing compound',is_a,'response to chemical').
go('response to estradiol',is_a,'response to lipid').
go('response to lipid',is_a,'response to chemical').
go('cellular response to estradiol stimulus',is_a,'cellular response to oxygen-containing compound').
go('cellular response to oxygen-containing compound',is_a,'response to oxygen-containing compound').
go('cellular response to oxygen-containing compound',is_a,'cellular response to chemical stimulus').
go('cellular response to estradiol stimulus',is_a,'cellular response to lipid').
go('cellular response to lipid',is_a,'cellular response to chemical stimulus').
go('cellular response to lipid',is_a,'response to lipid').
go('learning or memory',is_a,'behavior').
go('learning or memory',is_a,'cognition').
go('behavior',is_a,'multicellular organismal process').
go('cognition',is_a,'nervous system process').
go('nervous system process',is_a,'system process').
go('system process',is_a,'multicellular organismal process').
go('negative regulation of apoptotic process',is_a,'negative regulation of programmed cell death').
go('negative regulation of programmed cell death',is_a,'negative regulation of cellular process').
go('negative regulation of apoptotic process',is_a,'regulation of apoptotic process').
go('negative regulation of cellular process',is_a,'regulation of cellular process').
go('negative regulation of cellular process',is_a,'negative regulation of biological process').
go('negative regulation of programmed cell death',is_a,'regulation of programmed cell death').
go('regulation of programmed cell death',is_a,'regulation of cellular process').
go('regulation of programmed cell death',regulates,'programmed cell death').
go('programmed cell death',is_a,'cell death').
go('cell death',is_a,'cellular process').
go('regulation of apoptotic process',is_a,'regulation of programmed cell death').
go('regulation of apoptotic process',regulates,'apoptotic process').
go('apoptotic process',is_a,'programmed cell death').
go('negative regulation of cardiocyte differentiation',is_a,'negative regulation of multicellular organismal process').
go('negative regulation of multicellular organismal process',is_a,'negative regulation of biological process').
go('negative regulation of multicellular organismal process',is_a,'regulation of multicellular organismal process').
go('negative regulation of cardiocyte differentiation',is_a,'regulation of cardiocyte differentiation').
go('negative regulation of cardiocyte differentiation',is_a,'negative regulation of cell differentiation').
go('regulation of cardiocyte differentiation',is_a,'regulation of cell differentiation').
go('regulation of cell differentiation',is_a,'regulation of developmental process').
go('regulation of cell differentiation',is_a,'regulation of cellular process').
go('regulation of cell differentiation',regulates,'cell differentiation').
go('cell differentiation',is_a,'cellular developmental process').
go('cellular developmental process',is_a,'developmental process').
go('negative regulation of cell differentiation',is_a,'regulation of cell differentiation').
go('negative regulation of cell differentiation',is_a,'negative regulation of developmental process').
go('negative regulation of developmental process',is_a,'negative regulation of biological process').
go('negative regulation of developmental process',is_a,'regulation of developmental process').
go('negative regulation of cell differentiation',is_a,'negative regulation of cellular process').
go('cellular developmental process',is_a,'cellular process').
go('regulation of cardiocyte differentiation',regulates,'cardiocyte differentiation').
go('cardiocyte differentiation',is_a,'cell differentiation').
go('cardiocyte differentiation',part_of,'heart development').
go('heart development',is_a,'animal organ development').
go('animal organ development',is_a,'animal gross anatomical part developmental process').
go('heart development',part_of,'circulatory system development').
go('negative regulation of epidermal growth factor receptor signaling pathway',is_a,'regulation of epidermal growth factor receptor signaling pathway').
go('regulation of epidermal growth factor receptor signaling pathway',is_a,'regulation of ERBB signaling pathway').
go('regulation of ERBB signaling pathway',is_a,'regulation of signal transduction').
go('regulation of ERBB signaling pathway',regulates,'ERBB signaling pathway').
go('regulation of epidermal growth factor receptor signaling pathway',regulates,'epidermal growth factor receptor signaling pathway').
go('negative regulation of epidermal growth factor receptor signaling pathway',is_a,'negative regulation of ERBB signaling pathway').
go('negative regulation of ERBB signaling pathway',is_a,'regulation of ERBB signaling pathway').
go('negative regulation of ERBB signaling pathway',is_a,'negative regulation of signal transduction').
go('negative regulation of signal transduction',is_a,'negative regulation of signaling').
go('negative regulation of signaling',is_a,'negative regulation of biological process').
go('negative regulation of signaling',is_a,'regulation of signaling').
go('negative regulation of signal transduction',is_a,'negative regulation of response to stimulus').
go('negative regulation of response to stimulus',is_a,'regulation of response to stimulus').
go('negative regulation of response to stimulus',is_a,'negative regulation of biological process').
go('negative regulation of signal transduction',is_a,'negative regulation of cell communication').
go('negative regulation of cell communication',is_a,'negative regulation of cellular process').
go('negative regulation of cell communication',is_a,'regulation of cell communication').
go('negative regulation of signal transduction',is_a,'regulation of signal transduction').
go('negative regulation of macroautophagy',is_a,'negative regulation of autophagy').
go('negative regulation of autophagy',is_a,'negative regulation of catabolic process').
go('negative regulation of catabolic process',is_a,'regulation of catabolic process').
go('negative regulation of macroautophagy',is_a,'regulation of macroautophagy').
go('negative regulation of catabolic process',is_a,'negative regulation of metabolic process').
go('negative regulation of metabolic process',is_a,'negative regulation of cellular process').
go('negative regulation of metabolic process',is_a,'regulation of metabolic process').
go('negative regulation of autophagy',is_a,'regulation of autophagy').
go('regulation of autophagy',is_a,'regulation of catabolic process').
go('regulation of autophagy',regulates,'autophagy').
go('autophagy',is_a,'process utilizing autophagic mechanism').
go('process utilizing autophagic mechanism',is_a,'cellular process').
go('regulation of macroautophagy',is_a,'regulation of autophagy').
go('regulation of macroautophagy',regulates,'macroautophagy').
go('macroautophagy',is_a,'autophagy').
go('autophagy',is_a,'catabolic process').
go('negative regulation of protein catabolic process',is_a,'regulation of protein catabolic process').
go('negative regulation of protein catabolic process',is_a,'negative regulation of protein metabolic process').
go('negative regulation of protein metabolic process',is_a,'negative regulation of macromolecule metabolic process').
go('negative regulation of macromolecule metabolic process',is_a,'regulation of macromolecule metabolic process').
go('negative regulation of macromolecule metabolic process',is_a,'negative regulation of metabolic process').
go('negative regulation of protein metabolic process',is_a,'regulation of protein metabolic process').
go('negative regulation of protein catabolic process',is_a,'negative regulation of catabolic process').
go('neuron differentiation',is_a,'cell differentiation').
go('neuron differentiation',part_of,'generation of neurons').
go('generation of neurons',is_a,'neurogenesis').
go('neurogenesis',is_a,'cell differentiation').
go('neurogenesis',part_of,'nervous system development').
go('nervous system development',is_a,'system development').
go('nervous system development',is_a,'animal gross anatomical part developmental process').
go('ossification',is_a,'multicellular organismal process').
go('positive regulation of cell growth',is_a,'positive regulation of growth').
go('positive regulation of cell growth',is_a,'regulation of cell growth').
go('positive regulation of growth',is_a,'regulation of growth').
go('regulation of growth',is_a,'regulation of biological process').
go('regulation of cell growth',is_a,'regulation of cellular component organization').
go('regulation of cell growth',is_a,'regulation of growth').
go('regulation of cell growth',regulates,'cell growth').
go('cell growth',is_a,'cellular process').
go('cell growth',is_a,'growth').
go('regulation of growth',regulates,'growth').
go('growth',is_a,'biological_process').
go('positive regulation of cell growth',is_a,'positive regulation of cellular process').
go('positive regulation of growth',is_a,'positive regulation of biological process').
go('positive regulation of cGAS/STING signaling pathway',is_a,'regulation of cytoplasmic pattern recognition receptor signaling pathway').
go('positive regulation of cGAS/STING signaling pathway',is_a,'positive regulation of intracellular signal transduction').
go('regulation of cytoplasmic pattern recognition receptor signaling pathway',is_a,'regulation of pattern recognition receptor signaling pathway').
go('regulation of pattern recognition receptor signaling pathway',is_a,'regulation of innate immune response').
go('regulation of innate immune response',is_a,'regulation of response to biotic stimulus').
go('regulation of response to biotic stimulus',is_a,'regulation of response to stimulus').
go('positive regulation of cGAS/STING signaling pathway',is_a,'positive regulation of pattern recognition receptor signaling pathway').
go('positive regulation of pattern recognition receptor signaling pathway',is_a,'regulation of pattern recognition receptor signaling pathway').
go('positive regulation of pattern recognition receptor signaling pathway',is_a,'positive regulation of innate immune response').
go('positive regulation of innate immune response',is_a,'positive regulation of defense response').
go('positive regulation of defense response',is_a,'positive regulation of response to stimulus').
go('regulation of response to biotic stimulus',regulates,'response to biotic stimulus').
go('positive regulation of defense response',is_a,'regulation of defense response').
go('regulation of defense response',is_a,'regulation of response to stress').
go('regulation of response to stress',is_a,'regulation of response to stimulus').
go('regulation of response to stress',regulates,'response to stress').
go('response to biotic stimulus',is_a,'response to stimulus').
go('regulation of innate immune response',is_a,'regulation of response to external stimulus').
go('regulation of response to external stimulus',is_a,'regulation of response to stimulus').
go('regulation of response to external stimulus',regulates,'response to external stimulus').
go('response to external stimulus',is_a,'response to stimulus').
go('response to stress',is_a,'response to stimulus').
go('regulation of innate immune response',is_a,'regulation of defense response').
go('regulation of innate immune response',is_a,'regulation of immune response').
go('regulation of immune response',is_a,'regulation of response to stimulus').
go('regulation of immune response',is_a,'regulation of immune system process').
go('regulation of immune system process',is_a,'regulation of biological process').
go('regulation of immune system process',regulates,'immune system process').
go('regulation of defense response',regulates,'defense response').
go('defense response',is_a,'response to stress').
go('positive regulation of innate immune response',is_a,'positive regulation of response to external stimulus').
go('positive regulation of response to external stimulus',is_a,'positive regulation of response to stimulus').
go('positive regulation of response to external stimulus',is_a,'regulation of response to external stimulus').
go('positive regulation of innate immune response',is_a,'positive regulation of response to biotic stimulus').
go('immune system process',is_a,'biological_process').
go('positive regulation of response to biotic stimulus',is_a,'positive regulation of response to stimulus').
go('positive regulation of response to biotic stimulus',is_a,'regulation of response to biotic stimulus').
go('positive regulation of innate immune response',is_a,'regulation of innate immune response').
go('positive regulation of innate immune response',is_a,'positive regulation of immune response').
go('positive regulation of immune response',is_a,'positive regulation of immune system process').
go('positive regulation of immune system process',is_a,'regulation of immune system process').
go('positive regulation of immune system process',is_a,'positive regulation of biological process').
go('regulation of immune response',regulates,'immune response').
go('immune response',is_a,'response to stimulus').
go('immune response',is_a,'immune system process').
go('regulation of innate immune response',regulates,'innate immune response').
go('innate immune response',is_a,'defense response to symbiont').
go('defense response to symbiont',is_a,'defense response to other organism').
go('defense response to other organism',is_a,'response to other organism').
go('positive regulation of immune response',is_a,'positive regulation of response to stimulus').
go('response to other organism',is_a,'biological process involved in interspecies interaction between organisms').
go('positive regulation of immune response',is_a,'regulation of immune response').
go('positive regulation of pattern recognition receptor signaling pathway',is_a,'positive regulation of signal transduction').
go('biological process involved in interspecies interaction between organisms',is_a,'biological_process').
go('regulation of cytoplasmic pattern recognition receptor signaling pathway',is_a,'regulation of intracellular signal transduction').
go('regulation of pattern recognition receptor signaling pathway',is_a,'regulation of signal transduction').
go('innate immune response',is_a,'immune response').
go('defense response to other organism',is_a,'defense response').
go('response to other organism',is_a,'response to external biotic stimulus').
go('response to external biotic stimulus',is_a,'response to biotic stimulus').
go('response to external biotic stimulus',is_a,'response to external stimulus').
go('regulation of pattern recognition receptor signaling pathway',regulates,'pattern recognition receptor signaling pathway').
go('pattern recognition receptor signaling pathway',is_a,'innate immune response-activating signaling pathway').
go('innate immune response-activating signaling pathway',is_a,'immune response-activating signaling pathway').
go('immune response-activating signaling pathway',is_a,'immune response-regulating signaling pathway').
go('immune response-regulating signaling pathway',is_a,'signal transduction').
go('immune response-regulating signaling pathway',is_a,'regulation of immune response').
go('immune response-activating signaling pathway',is_a,'activation of immune response').
go('activation of immune response',is_a,'positive regulation of immune response').
go('innate immune response-activating signaling pathway',is_a,'activation of innate immune response').
go('activation of immune response',is_a,'immune system process').
go('activation of innate immune response',is_a,'positive regulation of innate immune response').
go('activation of innate immune response',is_a,'activation of immune response').
go('regulation of cytoplasmic pattern recognition receptor signaling pathway',regulates,'cytoplasmic pattern recognition receptor signaling pathway').
go('cytoplasmic pattern recognition receptor signaling pathway',is_a,'intracellular receptor signaling pathway').
go('cytoplasmic pattern recognition receptor signaling pathway',is_a,'pattern recognition receptor signaling pathway').
go('intracellular receptor signaling pathway',is_a,'intracellular signal transduction').
go('positive regulation of DNA repair',is_a,'positive regulation of DNA metabolic process').
go('positive regulation of DNA repair',is_a,'regulation of DNA repair').
go('positive regulation of DNA metabolic process',is_a,'positive regulation of macromolecule metabolic process').
go('positive regulation of DNA metabolic process',is_a,'regulation of DNA metabolic process').
go('regulation of DNA metabolic process',is_a,'regulation of macromolecule metabolic process').
go('regulation of DNA metabolic process',is_a,'regulation of nucleobase-containing compound metabolic process').
go('regulation of DNA repair',is_a,'regulation of cellular response to stress').
go('regulation of cellular response to stress',is_a,'regulation of cellular process').
go('regulation of cellular response to stress',is_a,'regulation of response to stress').
go('regulation of cellular response to stress',regulates,'cellular response to stress').
go('cellular response to stress',is_a,'cellular response to stimulus').
go('cellular response to stress',is_a,'response to stress').
go('regulation of DNA repair',is_a,'regulation of DNA metabolic process').
go('regulation of DNA repair',regulates,'DNA repair').
go('DNA repair',is_a,'DNA damage response').
go('DNA damage response',is_a,'cellular response to stress').
go('DNA repair',is_a,'DNA metabolic process').
go('DNA metabolic process',is_a,'nucleic acid metabolic process').
go('regulation of DNA metabolic process',regulates,'DNA metabolic process').
go('positive regulation of DNA repair',is_a,'positive regulation of response to stimulus').
go('positive regulation of DNA replication',is_a,'positive regulation of DNA metabolic process').
go('positive regulation of DNA replication',is_a,'regulation of DNA replication').
go('regulation of DNA replication',is_a,'regulation of DNA metabolic process').
go('regulation of DNA replication',regulates,'DNA replication').
go('DNA replication',is_a,'DNA metabolic process').
go('positive regulation of ERK1 and ERK2 cascade',is_a,'regulation of ERK1 and ERK2 cascade').
go('positive regulation of ERK1 and ERK2 cascade',is_a,'positive regulation of MAPK cascade').
go('regulation of ERK1 and ERK2 cascade',is_a,'regulation of MAPK cascade').
go('regulation of ERK1 and ERK2 cascade',regulates,'ERK1 and ERK2 cascade').
go('positive regulation of fibroblast proliferation',is_a,'positive regulation of cell population proliferation').
go('positive regulation of fibroblast proliferation',is_a,'regulation of fibroblast proliferation').
go('regulation of fibroblast proliferation',is_a,'regulation of cell population proliferation').
go('regulation of fibroblast proliferation',regulates,'fibroblast proliferation').
go('fibroblast proliferation',is_a,'cell population proliferation').
go('positive regulation of G1/S transition of mitotic cell cycle',is_a,'regulation of G1/S transition of mitotic cell cycle').
go('positive regulation of G1/S transition of mitotic cell cycle',is_a,'positive regulation of cell cycle G1/S phase transition').
go('regulation of G1/S transition of mitotic cell cycle',is_a,'regulation of cell cycle G1/S phase transition').
go('regulation of cell cycle G1/S phase transition',is_a,'regulation of cell cycle phase transition').
go('regulation of cell cycle phase transition',is_a,'regulation of cell cycle process').
go('positive regulation of cell cycle G1/S phase transition',is_a,'regulation of cell cycle G1/S phase transition').
go('positive regulation of cell cycle G1/S phase transition',is_a,'positive regulation of cell cycle phase transition').
go('positive regulation of cell cycle phase transition',is_a,'regulation of cell cycle phase transition').
go('positive regulation of cell cycle phase transition',is_a,'positive regulation of cell cycle process').
go('positive regulation of G1/S transition of mitotic cell cycle',is_a,'positive regulation of mitotic cell cycle phase transition').
go('positive regulation of mitotic cell cycle phase transition',is_a,'regulation of mitotic cell cycle phase transition').
go('regulation of mitotic cell cycle phase transition',is_a,'regulation of cell cycle phase transition').
go('regulation of mitotic cell cycle phase transition',is_a,'regulation of mitotic cell cycle').
go('regulation of mitotic cell cycle phase transition',regulates,'mitotic cell cycle phase transition').
go('mitotic cell cycle phase transition',is_a,'mitotic cell cycle process').
go('regulation of cell cycle phase transition',regulates,'cell cycle phase transition').
go('cell cycle phase transition',is_a,'cell cycle process').
go('regulation of cell cycle G1/S phase transition',regulates,'cell cycle G1/S phase transition').
go('cell cycle G1/S phase transition',is_a,'cell cycle phase transition').
go('regulation of G1/S transition of mitotic cell cycle',is_a,'regulation of mitotic cell cycle phase transition').
go('regulation of G1/S transition of mitotic cell cycle',regulates,'G1/S transition of mitotic cell cycle').
go('G1/S transition of mitotic cell cycle',is_a,'mitotic cell cycle phase transition').
go('G1/S transition of mitotic cell cycle',is_a,'cell cycle G1/S phase transition').
go('G1/S transition of mitotic cell cycle',part_of,'mitotic cell cycle').
go('mitotic cell cycle phase transition',is_a,'cell cycle phase transition').
go('mitotic cell cycle phase transition',part_of,'mitotic cell cycle').
go('positive regulation of mitotic cell cycle phase transition',is_a,'positive regulation of cell cycle phase transition').
go('positive regulation of mitotic cell cycle phase transition',is_a,'positive regulation of mitotic cell cycle').
go('positive regulation of mitotic cell cycle',is_a,'positive regulation of cell cycle').
go('positive regulation of mitotic cell cycle',is_a,'regulation of mitotic cell cycle').
go('positive regulation of miRNA transcription',is_a,'positive regulation of miRNA metabolic process').
go('positive regulation of miRNA metabolic process',is_a,'regulation of miRNA metabolic process').
go('regulation of miRNA metabolic process',is_a,'regulation of RNA metabolic process').
go('regulation of miRNA metabolic process',regulates,'miRNA metabolic process').
go('miRNA metabolic process',is_a,'RNA metabolic process').
go('positive regulation of miRNA transcription',is_a,'regulation of miRNA transcription').
go('positive regulation of miRNA metabolic process',is_a,'positive regulation of RNA metabolic process').
go('positive regulation of miRNA transcription',is_a,'positive regulation of DNA-templated transcription').
go('regulation of miRNA transcription',is_a,'regulation of miRNA metabolic process').
go('regulation of miRNA transcription',is_a,'regulation of DNA-templated transcription').
go('regulation of miRNA transcription',regulates,'miRNA transcription').
go('miRNA transcription',is_a,'miRNA metabolic process').
go('miRNA transcription',is_a,'DNA-templated transcription').
go('positive regulation of peptidyl-serine phosphorylation',is_a,'regulation of peptidyl-serine phosphorylation').
go('regulation of peptidyl-serine phosphorylation',is_a,'regulation of protein phosphorylation').
go('positive regulation of peptidyl-serine phosphorylation',is_a,'positive regulation of protein phosphorylation').
go('regulation of peptidyl-serine phosphorylation',regulates,'peptidyl-serine phosphorylation').
go('peptidyl-serine phosphorylation',is_a,'protein phosphorylation').
go('positive regulation of protein kinase C signaling',is_a,'positive regulation of intracellular signal transduction').
go('positive regulation of protein kinase C signaling',is_a,'regulation of protein kinase C signaling').
go('regulation of protein kinase C signaling',is_a,'regulation of intracellular signal transduction').
go('regulation of protein kinase C signaling',regulates,'protein kinase C signaling').
go('protein kinase C signaling',is_a,'intracellular signal transduction').
go('positive regulation of protein localization to plasma membrane',is_a,'regulation of protein localization to plasma membrane').
go('regulation of protein localization to plasma membrane',is_a,'regulation of protein localization to cell periphery').
go('regulation of protein localization to cell periphery',is_a,'regulation of protein localization').
go('positive regulation of protein localization to plasma membrane',is_a,'positive regulation of protein localization to membrane').
go('regulation of protein localization to cell periphery',regulates,'protein localization to cell periphery').
go('protein localization to cell periphery',is_a,'intracellular protein localization').
go('regulation of protein localization to plasma membrane',is_a,'regulation of protein localization to membrane').
go('positive regulation of protein localization to membrane',is_a,'regulation of protein localization to membrane').
go('regulation of protein localization to membrane',is_a,'regulation of cellular localization').
go('regulation of cellular localization',is_a,'regulation of cellular process').
go('positive regulation of protein localization to membrane',is_a,'positive regulation of cellular process').
go('positive regulation of protein localization to membrane',is_a,'positive regulation of protein localization').
go('regulation of cellular localization',is_a,'regulation of localization').
go('positive regulation of protein localization to plasma membrane',is_a,'positive regulation of protein localization to cell periphery').
go('regulation of cellular localization',regulates,'cellular localization').
go('positive regulation of protein localization to cell periphery',is_a,'regulation of protein localization to cell periphery').
go('cellular localization',is_a,'cellular process').
go('cellular localization',is_a,'localization').
go('positive regulation of protein localization to cell periphery',is_a,'positive regulation of protein localization').
go('regulation of protein localization to membrane',is_a,'regulation of protein localization').
go('regulation of protein localization to membrane',regulates,'protein localization to membrane').
go('protein localization to membrane',is_a,'intracellular protein localization').
go('protein localization to membrane',is_a,'localization within membrane').
go('localization within membrane',is_a,'cellular localization').
go('regulation of protein localization to plasma membrane',regulates,'protein localization to plasma membrane').
go('protein localization to plasma membrane',is_a,'protein localization to membrane').
go('protein localization to plasma membrane',is_a,'protein localization to cell periphery').
go('positive regulation of toll-like receptor 9 signaling pathway',is_a,'regulation of toll-like receptor 9 signaling pathway').
go('regulation of toll-like receptor 9 signaling pathway',is_a,'regulation of cytoplasmic pattern recognition receptor signaling pathway').
go('regulation of toll-like receptor 9 signaling pathway',regulates,'toll-like receptor 9 signaling pathway').
go('toll-like receptor 9 signaling pathway',is_a,'endolysosomal toll-like receptor signaling pathway').
go('endolysosomal toll-like receptor signaling pathway',is_a,'cytoplasmic pattern recognition receptor signaling pathway').
go('positive regulation of toll-like receptor 9 signaling pathway',is_a,'positive regulation of pattern recognition receptor signaling pathway').
go('positive regulation of toll-like receptor 9 signaling pathway',is_a,'positive regulation of intracellular signal transduction').
go('positive regulation of transcription by RNA polymerase II',is_a,'positive regulation of DNA-templated transcription').
go('positive regulation of transcription by RNA polymerase II',is_a,'regulation of transcription by RNA polymerase II').
go('regulation of transcription by RNA polymerase II',is_a,'regulation of DNA-templated transcription').
go('regulation of transcription by RNA polymerase II',regulates,'transcription by RNA polymerase II').
go('transcription by RNA polymerase II',is_a,'DNA-templated transcription').
go('protein insertion into membrane',is_a,'establishment of protein localization to membrane').
go('establishment of protein localization to membrane',is_a,'localization within membrane').
go('establishment of protein localization to membrane',is_a,'establishment of protein localization').
go('establishment of protein localization',is_a,'establishment of localization').
go('protein insertion into membrane',part_of,'intracellular protein localization').
go('protein insertion into membrane',part_of,'membrane organization').
go('membrane organization',is_a,'cellular component organization').
go('regulation of peptidyl-tyrosine phosphorylation',is_a,'regulation of protein phosphorylation').
go('regulation of peptidyl-tyrosine phosphorylation',regulates,'peptidyl-tyrosine phosphorylation').
go('peptidyl-tyrosine phosphorylation',is_a,'protein phosphorylation').
go('response to UV-A',is_a,'response to UV').
go('response to UV',is_a,'response to light stimulus').
go('response to light stimulus',is_a,'response to radiation').
go('response to radiation',is_a,'response to abiotic stimulus').
go('response to abiotic stimulus',is_a,'response to stimulus').
go('basal plasma membrane',is_a,'plasma membrane region').
go('plasma membrane region',is_a,'membrane').
go('plasma membrane region',part_of,'plasma membrane').
go('basal plasma membrane',part_of,'basal part of cell').
go('basal part of cell',is_a,'cellular anatomical structure').
go('basolateral plasma membrane',is_a,'plasma membrane region').
go('basolateral plasma membrane',part_of,'basal plasma membrane').
go('cell junction',is_a,'cellular anatomical structure').
go('cell surface',is_a,'cellular anatomical structure').
go('early endosome membrane',is_a,'endosome membrane').
go('endosome membrane',is_a,'cytoplasmic vesicle membrane').
go('endosome membrane',is_a,'bounding membrane of organelle').
go('endosome membrane',part_of,'endosome').
go('endosome',is_a,'cytoplasmic vesicle').
go('endosome',part_of,'endomembrane system').
go('early endosome membrane',part_of,'early endosome').
go('early endosome',is_a,'endosome').
go('endoplasmic reticulum membrane',is_a,'organelle membrane').
go('endoplasmic reticulum membrane',part_of,'endoplasmic reticulum subcompartment').
go('endoplasmic reticulum membrane',part_of,'nuclear outer membrane-endoplasmic reticulum membrane network').
go('endoplasmic reticulum subcompartment',is_a,'organelle subcompartment').
go('organelle subcompartment',is_a,'cellular anatomical structure').
go('nuclear outer membrane-endoplasmic reticulum membrane network',is_a,'membrane').
go('organelle subcompartment',part_of,'intracellular organelle').
go('organelle subcompartment',part_of,'membrane-bounded organelle').
go('nuclear outer membrane-endoplasmic reticulum membrane network',part_of,'endomembrane system').
go('endoplasmic reticulum subcompartment',part_of,'endoplasmic reticulum').
go('endoplasmic reticulum',is_a,'intracellular membrane-bounded organelle').
go('endoplasmic reticulum',part_of,'endomembrane system').
go('endoplasmic reticulum',part_of,'cytoplasm').
go('focal adhesion',is_a,'cell-substrate junction').
go('cell-substrate junction',is_a,'anchoring junction').
go('anchoring junction',is_a,'cell junction').
go('Golgi apparatus',is_a,'intracellular membrane-bounded organelle').
go('Golgi apparatus',part_of,'endomembrane system').
go('Golgi apparatus',part_of,'cytoplasm').
go('Golgi membrane',is_a,'bounding membrane of organelle').
go('Golgi membrane',part_of,'Golgi apparatus').
go('membrane raft',is_a,'membrane microdomain').
go('membrane microdomain',is_a,'membrane').
go('multivesicular body, internal vesicle lumen',is_a,'endosomal intralumenal vesicle lumen').
go('multivesicular body, internal vesicle lumen',is_a,'vesicle lumen').
go('endosomal intralumenal vesicle lumen',is_a,'intracellular organelle lumen').
go('endosomal intralumenal vesicle lumen',part_of,'endosomal intralumenal vesicle').
go('endosomal intralumenal vesicle',is_a,'cytoplasmic vesicle').
go('endosomal intralumenal vesicle',part_of,'endosome').
go('multivesicular body, internal vesicle lumen',part_of,'multivesicular body, internal vesicle').
go('multivesicular body, internal vesicle',is_a,'endosomal intralumenal vesicle').
go('multivesicular body, internal vesicle',part_of,'multivesicular body').
go('multivesicular body',is_a,'late endosome').
go('late endosome',is_a,'endosome').
go('nuclear membrane',is_a,'organelle membrane').
go('nuclear membrane',part_of,'nucleus').
go('nucleus',is_a,'intracellular membrane-bounded organelle').
go('nuclear membrane',part_of,'nuclear envelope').
go('nuclear envelope',is_a,'organelle envelope').
go('organelle envelope',is_a,'cellular anatomical structure').
go('organelle envelope',part_of,'intracellular organelle').
go('organelle envelope',part_of,'membrane-bounded organelle').
go('nuclear envelope',part_of,'nucleus').
go('nuclear envelope',part_of,'endomembrane system').
go('perinuclear region of cytoplasm',is_a,'cellular anatomical structure').
go('perinuclear region of cytoplasm',part_of,'cytoplasm').
go('protein-containing complex',is_a,'cellular_component').
go('ruffle membrane',is_a,'cell projection membrane').
go('ruffle membrane',is_a,'leading edge membrane').
go('cell projection membrane',is_a,'plasma membrane region').
go('leading edge membrane',is_a,'cellular anatomical structure').
go('leading edge membrane',part_of,'plasma membrane').
go('cell projection membrane',part_of,'plasma membrane bounded cell projection').
go('plasma membrane bounded cell projection',is_a,'cell projection').
go('leading edge membrane',part_of,'cell leading edge').
go('cell leading edge',is_a,'cellular anatomical structure').
go('cell projection',is_a,'cellular anatomical structure').
go('ruffle membrane',part_of,'ruffle').
go('ruffle',is_a,'plasma membrane bounded cell projection').
go('ruffle',part_of,'cell leading edge').
go('Shc-EGFR complex',is_a,'plasma membrane protein complex').
go('plasma membrane protein complex',is_a,'membrane protein complex').
go('membrane protein complex',is_a,'protein-containing complex').
go('membrane protein complex',part_of,'membrane').
go('plasma membrane protein complex',part_of,'plasma membrane').
go('signaling receptor complex',is_a,'protein-containing complex').
leaf('GRB2','ephrin receptor binding').
fm('ephrin receptor binding').
leaf('GRB2','epidermal growth factor receptor binding').
leaf('GRB2','guanyl-nucleotide exchange factor adaptor activity').
fm('guanyl-nucleotide exchange factor adaptor activity').
leaf('GRB2','identical protein binding').
leaf('GRB2','insulin receptor substrate binding').
fm('insulin receptor substrate binding').
leaf('GRB2','neurotrophin TRKA receptor binding').
fm('neurotrophin TRKA receptor binding').
leaf('GRB2','phosphotyrosine residue binding').
fm('phosphotyrosine residue binding').
leaf('GRB2','protein kinase binding').
fm('protein kinase binding').
leaf('GRB2','protein phosphatase binding').
leaf('GRB2','protein-macromolecule adaptor activity').
fm('protein-macromolecule adaptor activity').
leaf('GRB2','RNA binding').
fm('RNA binding').
leaf('GRB2','SH3 domain binding').
fm('SH3 domain binding').
leaf('GRB2','transmembrane receptor protein tyrosine kinase adaptor activity').
fm('transmembrane receptor protein tyrosine kinase adaptor activity').
leaf('GRB2','actin cytoskeleton organization').
bp('actin cytoskeleton organization').
leaf('GRB2','B cell receptor signaling pathway').
bp('B cell receptor signaling pathway').
leaf('GRB2','cellular response to ionizing radiation').
bp('cellular response to ionizing radiation').
leaf('GRB2','epidermal growth factor receptor signaling pathway').
leaf('GRB2','insulin receptor signaling pathway').
bp('insulin receptor signaling pathway').
leaf('GRB2','insulin-like growth factor receptor signaling pathway').
bp('insulin-like growth factor receptor signaling pathway').
leaf('GRB2','myelination').
bp('myelination').
leaf('GRB2','natural killer cell mediated cytotoxicity').
bp('natural killer cell mediated cytotoxicity').
leaf('GRB2','negative regulation of natural killer cell mediated cytotoxicity').
bp('negative regulation of natural killer cell mediated cytotoxicity').
leaf('GRB2','positive regulation of Rac protein signal transduction').
bp('positive regulation of Rac protein signal transduction').
leaf('GRB2','positive regulation of reactive oxygen species metabolic process').
bp('positive regulation of reactive oxygen species metabolic process').
leaf('GRB2','Ras protein signal transduction').
bp('Ras protein signal transduction').
leaf('GRB2','receptor internalization').
bp('receptor internalization').
leaf('GRB2','regulation of MAPK cascade').
bp('regulation of MAPK cascade').
leaf('GRB2','Schwann cell development').
bp('Schwann cell development').
leaf('GRB2','signal transduction').
leaf('GRB2','signal transduction in response to DNA damage').
bp('signal transduction in response to DNA damage').
leaf('GRB2','T cell activation').
bp('T cell activation').
leaf('GRB2','cell cortex').
cc('cell cortex').
leaf('GRB2','cell-cell junction').
cc('cell-cell junction').
leaf('GRB2','COP9 signalosome').
cc('COP9 signalosome').
leaf('GRB2','cytoplasm').
leaf('GRB2','cytosol').
cc('cytosol').
leaf('GRB2','endosome').
leaf('GRB2','extracellular exosome').
leaf('GRB2','Golgi apparatus').
leaf('GRB2','Grb2-EGFR complex').
cc('Grb2-EGFR complex').
leaf('GRB2','nucleoplasm').
cc('nucleoplasm').
leaf('GRB2','nucleus').
leaf('GRB2','plasma membrane').
leaf('GRB2','vesicle membrane').
cc('vesicle membrane').
go('ephrin receptor binding',is_a,'signaling receptor binding').
go('guanyl-nucleotide exchange factor adaptor activity',is_a,'GTPase regulator activity').
go('guanyl-nucleotide exchange factor adaptor activity',is_a,'protein-macromolecule adaptor activity').
go('protein-macromolecule adaptor activity',is_a,'molecular adaptor activity').
go('molecular adaptor activity',is_a,'molecular_function').
go('insulin receptor substrate binding',is_a,'protein binding').
go('neurotrophin TRKA receptor binding',is_a,'neurotrophin TRK receptor binding').
go('neurotrophin TRK receptor binding',is_a,'neurotrophin receptor binding').
go('neurotrophin receptor binding',is_a,'cytokine receptor binding').
go('cytokine receptor binding',is_a,'signaling receptor binding').
go('phosphotyrosine residue binding',is_a,'protein phosphorylated amino acid binding').
go('protein phosphorylated amino acid binding',is_a,'phosphoprotein binding').
go('phosphoprotein binding',is_a,'protein binding').
go('protein kinase binding',is_a,'kinase binding').
go('RNA binding',is_a,'nucleic acid binding').
go('SH3 domain binding',is_a,'protein domain specific binding').
go('protein domain specific binding',is_a,'protein binding').
go('transmembrane receptor protein tyrosine kinase adaptor activity',is_a,'receptor tyrosine kinase binding').
go('receptor tyrosine kinase binding',is_a,'protein tyrosine kinase binding').
go('protein tyrosine kinase binding',is_a,'protein kinase binding').
go('receptor tyrosine kinase binding',is_a,'signaling receptor binding').
go('transmembrane receptor protein tyrosine kinase adaptor activity',is_a,'signaling receptor complex adaptor activity').
go('signaling receptor complex adaptor activity',is_a,'signaling adaptor activity').
go('signaling adaptor activity',is_a,'protein-macromolecule adaptor activity').
go('transmembrane receptor protein tyrosine kinase adaptor activity',part_of,'cell surface receptor protein tyrosine kinase signaling pathway').
go('actin cytoskeleton organization',is_a,'cytoskeleton organization').
go('cytoskeleton organization',is_a,'organelle organization').
go('actin cytoskeleton organization',is_a,'actin filament-based process').
go('actin filament-based process',is_a,'cellular process').
go('B cell receptor signaling pathway',is_a,'antigen receptor-mediated signaling pathway').
go('antigen receptor-mediated signaling pathway',is_a,'immune response-activating cell surface receptor signaling pathway').
go('immune response-activating cell surface receptor signaling pathway',is_a,'immune response-activating signaling pathway').
go('immune response-activating cell surface receptor signaling pathway',is_a,'immune response-regulating cell surface receptor signaling pathway').
go('immune response-regulating cell surface receptor signaling pathway',is_a,'cell surface receptor signaling pathway').
go('immune response-regulating cell surface receptor signaling pathway',is_a,'immune response-regulating signaling pathway').
go('cellular response to ionizing radiation',is_a,'cellular response to radiation').
go('cellular response to ionizing radiation',is_a,'response to ionizing radiation').
go('response to ionizing radiation',is_a,'response to radiation').
go('cellular response to radiation',is_a,'cellular response to abiotic stimulus').
go('cellular response to radiation',is_a,'response to radiation').
go('cellular response to abiotic stimulus',is_a,'cellular response to environmental stimulus').
go('cellular response to environmental stimulus',is_a,'cellular response to stimulus').
go('cellular response to abiotic stimulus',is_a,'response to abiotic stimulus').
go('insulin receptor signaling pathway',is_a,'cell surface receptor protein tyrosine kinase signaling pathway').
go('insulin receptor signaling pathway',part_of,'cellular response to insulin stimulus').
go('cellular response to insulin stimulus',is_a,'response to insulin').
go('cellular response to insulin stimulus',is_a,'cellular response to peptide hormone stimulus').
go('response to insulin',is_a,'response to peptide hormone').
go('response to peptide hormone',is_a,'response to nitrogen compound').
go('response to nitrogen compound',is_a,'response to chemical').
go('response to peptide hormone',is_a,'response to oxygen-containing compound').
go('cellular response to peptide hormone stimulus',is_a,'response to peptide hormone').
go('cellular response to peptide hormone stimulus',is_a,'cellular response to oxygen-containing compound').
go('cellular response to peptide hormone stimulus',is_a,'cellular response to hormone stimulus').
go('cellular response to hormone stimulus',is_a,'cellular response to chemical stimulus').
go('response to peptide hormone',is_a,'response to hormone').
go('cellular response to hormone stimulus',is_a,'response to hormone').
go('response to hormone',is_a,'response to chemical').
go('response to hormone',is_a,'response to endogenous stimulus').
go('cellular response to hormone stimulus',is_a,'cellular response to endogenous stimulus').
go('cellular response to peptide hormone stimulus',is_a,'cellular response to nitrogen compound').
go('cellular response to nitrogen compound',is_a,'response to nitrogen compound').
go('cellular response to nitrogen compound',is_a,'cellular response to chemical stimulus').
go('insulin-like growth factor receptor signaling pathway',is_a,'cell surface receptor protein tyrosine kinase signaling pathway').
go('myelination',is_a,'axon ensheathment').
go('axon ensheathment',is_a,'ensheathment of neurons').
go('ensheathment of neurons',is_a,'cellular process').
go('ensheathment of neurons',part_of,'nervous system development').
go('natural killer cell mediated cytotoxicity',is_a,'natural killer cell mediated immunity').
go('natural killer cell mediated cytotoxicity',is_a,'leukocyte mediated cytotoxicity').
go('natural killer cell mediated immunity',is_a,'innate immune response').
go('leukocyte mediated cytotoxicity',is_a,'leukocyte mediated immunity').
go('leukocyte mediated immunity',is_a,'immune effector process').
go('immune effector process',is_a,'immune system process').
go('leukocyte mediated cytotoxicity',is_a,'cell killing').
go('cell killing',is_a,'cellular process').
go('natural killer cell mediated immunity',is_a,'lymphocyte mediated immunity').
go('lymphocyte mediated immunity',is_a,'leukocyte mediated immunity').
go('negative regulation of natural killer cell mediated cytotoxicity',is_a,'negative regulation of leukocyte mediated cytotoxicity').
go('negative regulation of natural killer cell mediated cytotoxicity',is_a,'regulation of natural killer cell mediated cytotoxicity').
go('negative regulation of leukocyte mediated cytotoxicity',is_a,'negative regulation of cell killing').
go('negative regulation of cell killing',is_a,'negative regulation of cellular process').
go('regulation of natural killer cell mediated cytotoxicity',is_a,'regulation of natural killer cell mediated immunity').
go('regulation of natural killer cell mediated immunity',is_a,'regulation of lymphocyte mediated immunity').
go('regulation of lymphocyte mediated immunity',is_a,'regulation of leukocyte mediated immunity').
go('regulation of leukocyte mediated immunity',is_a,'regulation of immune effector process').
go('regulation of immune effector process',is_a,'regulation of immune system process').
go('regulation of immune effector process',regulates,'immune effector process').
go('regulation of leukocyte mediated immunity',regulates,'leukocyte mediated immunity').
go('regulation of lymphocyte mediated immunity',regulates,'lymphocyte mediated immunity').
go('regulation of natural killer cell mediated immunity',is_a,'regulation of innate immune response').
go('negative regulation of cell killing',is_a,'regulation of cell killing').
go('regulation of cell killing',is_a,'regulation of cellular process').
go('regulation of cell killing',regulates,'cell killing').
go('negative regulation of leukocyte mediated cytotoxicity',is_a,'negative regulation of leukocyte mediated immunity').
go('negative regulation of leukocyte mediated immunity',is_a,'regulation of leukocyte mediated immunity').
go('negative regulation of leukocyte mediated immunity',is_a,'negative regulation of immune effector process').
go('negative regulation of immune effector process',is_a,'regulation of immune effector process').
go('negative regulation of immune effector process',is_a,'negative regulation of immune system process').
go('negative regulation of immune system process',is_a,'regulation of immune system process').
go('negative regulation of immune system process',is_a,'negative regulation of biological process').
go('negative regulation of leukocyte mediated cytotoxicity',is_a,'regulation of leukocyte mediated cytotoxicity').
go('regulation of leukocyte mediated cytotoxicity',is_a,'regulation of leukocyte mediated immunity').
go('regulation of leukocyte mediated cytotoxicity',is_a,'regulation of cell killing').
go('regulation of leukocyte mediated cytotoxicity',regulates,'leukocyte mediated cytotoxicity').
go('negative regulation of natural killer cell mediated cytotoxicity',is_a,'negative regulation of natural killer cell mediated immunity').
go('negative regulation of natural killer cell mediated immunity',is_a,'negative regulation of lymphocyte mediated immunity').
go('negative regulation of lymphocyte mediated immunity',is_a,'regulation of lymphocyte mediated immunity').
go('negative regulation of lymphocyte mediated immunity',is_a,'negative regulation of leukocyte mediated immunity').
go('negative regulation of natural killer cell mediated immunity',is_a,'regulation of natural killer cell mediated immunity').
go('negative regulation of natural killer cell mediated immunity',is_a,'negative regulation of innate immune response').
go('negative regulation of innate immune response',is_a,'negative regulation of defense response').
go('regulation of natural killer cell mediated immunity',regulates,'natural killer cell mediated immunity').
go('regulation of natural killer cell mediated cytotoxicity',is_a,'regulation of leukocyte mediated cytotoxicity').
go('regulation of natural killer cell mediated cytotoxicity',regulates,'natural killer cell mediated cytotoxicity').
go('negative regulation of innate immune response',is_a,'negative regulation of immune response').
go('negative regulation of immune response',is_a,'negative regulation of immune system process').
go('negative regulation of immune response',is_a,'negative regulation of response to stimulus').
go('negative regulation of defense response',is_a,'negative regulation of response to stimulus').
go('negative regulation of immune response',is_a,'regulation of immune response').
go('negative regulation of innate immune response',is_a,'regulation of innate immune response').
go('negative regulation of innate immune response',is_a,'negative regulation of response to external stimulus').
go('negative regulation of response to external stimulus',is_a,'negative regulation of response to stimulus').
go('negative regulation of response to external stimulus',is_a,'regulation of response to external stimulus').
go('negative regulation of innate immune response',is_a,'negative regulation of response to biotic stimulus').
go('negative regulation of defense response',is_a,'regulation of defense response').
go('negative regulation of response to biotic stimulus',is_a,'negative regulation of response to stimulus').
go('negative regulation of response to biotic stimulus',is_a,'regulation of response to biotic stimulus').
go('positive regulation of Rac protein signal transduction',is_a,'positive regulation of small GTPase mediated signal transduction').
go('positive regulation of small GTPase mediated signal transduction',is_a,'positive regulation of intracellular signal transduction').
go('positive regulation of Rac protein signal transduction',is_a,'regulation of Rac protein signal transduction').
go('regulation of Rac protein signal transduction',is_a,'regulation of small GTPase mediated signal transduction').
go('regulation of small GTPase mediated signal transduction',is_a,'regulation of intracellular signal transduction').
go('regulation of small GTPase mediated signal transduction',regulates,'small GTPase-mediated signal transduction').
go('positive regulation of small GTPase mediated signal transduction',is_a,'regulation of small GTPase mediated signal transduction').
go('small GTPase-mediated signal transduction',is_a,'intracellular signaling cassette').
go('regulation of Rac protein signal transduction',regulates,'Rac protein signal transduction').
go('Rac protein signal transduction',is_a,'small GTPase-mediated signal transduction').
go('positive regulation of reactive oxygen species metabolic process',is_a,'regulation of reactive oxygen species metabolic process').
go('positive regulation of reactive oxygen species metabolic process',is_a,'positive regulation of metabolic process').
go('regulation of reactive oxygen species metabolic process',is_a,'regulation of metabolic process').
go('regulation of reactive oxygen species metabolic process',regulates,'reactive oxygen species metabolic process').
go('reactive oxygen species metabolic process',is_a,'metabolic process').
go('Ras protein signal transduction',is_a,'small GTPase-mediated signal transduction').
go('Schwann cell development',is_a,'glial cell development').
go('glial cell development',is_a,'cell development').
go('cell development',is_a,'cellular developmental process').
go('cell development',is_a,'anatomical structure development').
go('cell development',part_of,'cell differentiation').
go('glial cell development',part_of,'glial cell differentiation').
go('glial cell differentiation',is_a,'cell differentiation').
go('glial cell differentiation',part_of,'gliogenesis').
go('gliogenesis',is_a,'neurogenesis').
go('Schwann cell development',part_of,'Schwann cell differentiation').
go('Schwann cell differentiation',is_a,'glial cell differentiation').
go('Schwann cell differentiation',part_of,'peripheral nervous system development').
go('peripheral nervous system development',is_a,'animal gross anatomical part developmental process').
go('peripheral nervous system development',is_a,'system development').
go('peripheral nervous system development',part_of,'nervous system development').
go('signal transduction in response to DNA damage',is_a,'DNA damage response').
go('signal transduction in response to DNA damage',is_a,'intracellular signal transduction').
go('T cell activation',is_a,'lymphocyte activation').
go('lymphocyte activation',is_a,'leukocyte activation').
go('leukocyte activation',is_a,'immune system process').
go('leukocyte activation',is_a,'cell activation').
go('cell activation',is_a,'cellular process').
go('cell activation',is_a,'multicellular organismal process').
go('cell cortex',is_a,'cytoplasm').
go('cell cortex',part_of,'cell periphery').
go('cell-cell junction',is_a,'anchoring junction').
go('COP9 signalosome',is_a,'nuclear protein-containing complex').
go('nuclear protein-containing complex',is_a,'protein-containing complex').
go('nuclear protein-containing complex',part_of,'nucleus').
go('cytosol',is_a,'cellular anatomical structure').
go('cytosol',part_of,'cytoplasm').
go('Grb2-EGFR complex',is_a,'plasma membrane protein complex').
go('nucleoplasm',is_a,'cellular anatomical structure').
go('nucleoplasm',part_of,'nuclear lumen').
go('nuclear lumen',is_a,'intracellular organelle lumen').
go('nuclear lumen',part_of,'nucleus').
leaf('SOS1','epidermal growth factor receptor binding').
leaf('SOS1','GTPase activator activity').
fm('GTPase activator activity').
leaf('SOS1','guanyl-nucleotide exchange factor activity').
leaf('SOS1','molecular condensate scaffold activity').
fm('molecular condensate scaffold activity').
leaf('SOS1','protein heterodimerization activity').
fm('protein heterodimerization activity').
leaf('SOS1','protein kinase binding').
leaf('SOS1','SH3 domain binding').
leaf('SOS1','axon guidance').
bp('axon guidance').
leaf('SOS1','B cell receptor signaling pathway').
leaf('SOS1','cytokine-mediated signaling pathway').
bp('cytokine-mediated signaling pathway').
leaf('SOS1','epidermal growth factor receptor signaling pathway').
leaf('SOS1','Fc-epsilon receptor signaling pathway').
bp('Fc-epsilon receptor signaling pathway').
leaf('SOS1','insulin receptor signaling pathway').
leaf('SOS1','insulin-like growth factor receptor signaling pathway').
leaf('SOS1','leukocyte migration').
bp('leukocyte migration').
leaf('SOS1','myelination').
leaf('SOS1','neurotrophin TRK receptor signaling pathway').
bp('neurotrophin TRK receptor signaling pathway').
leaf('SOS1','positive regulation of epidermal growth factor receptor signaling pathway').
bp('positive regulation of epidermal growth factor receptor signaling pathway').
leaf('SOS1','positive regulation of Rac protein signal transduction').
leaf('SOS1','Ras protein signal transduction').
leaf('SOS1','regulation of cell population proliferation').
bp('regulation of cell population proliferation').
leaf('SOS1','regulation of transcription by RNA polymerase II').
bp('regulation of transcription by RNA polymerase II').
leaf('SOS1','response to ischemia').
bp('response to ischemia').
leaf('SOS1','Schwann cell development').
leaf('SOS1','signal transduction').
leaf('SOS1','T cell activation').
leaf('SOS1','cytoplasm').
leaf('SOS1','cytosol').
leaf('SOS1','glutamatergic synapse').
cc('glutamatergic synapse').
leaf('SOS1','GTPase complex').
cc('GTPase complex').
leaf('SOS1','neuronal cell body').
cc('neuronal cell body').
leaf('SOS1','plasma membrane').
leaf('SOS1','postsynaptic density').
cc('postsynaptic density').
go('GTPase activator activity',is_a,'GTPase regulator activity').
go('GTPase activator activity',is_a,'enzyme activator activity').
go('molecular condensate scaffold activity',is_a,'protein-macromolecule adaptor activity').
go('protein heterodimerization activity',is_a,'protein dimerization activity').
go('protein dimerization activity',is_a,'protein binding').
go('axon guidance',is_a,'neuron projection guidance').
go('neuron projection guidance',is_a,'neuron projection development').
go('neuron projection development',is_a,'plasma membrane bounded cell projection organization').
go('plasma membrane bounded cell projection organization',is_a,'cell projection organization').
go('cell projection organization',is_a,'cellular component organization').
go('neuron projection development',part_of,'neuron development').
go('neuron development',is_a,'cell development').
go('neuron development',part_of,'neuron differentiation').
go('neuron projection guidance',part_of,'neuron projection morphogenesis').
go('neuron projection morphogenesis',is_a,'plasma membrane bounded cell projection morphogenesis').
go('plasma membrane bounded cell projection morphogenesis',is_a,'cell projection morphogenesis').
go('cell projection morphogenesis',is_a,'anatomical structure morphogenesis').
go('cell projection morphogenesis',is_a,'cell projection organization').
go('cell projection morphogenesis',part_of,'cell morphogenesis').
go('cell morphogenesis',is_a,'anatomical structure morphogenesis').
go('neuron projection morphogenesis',part_of,'neuron projection development').
go('axon guidance',part_of,'axonogenesis').
go('axonogenesis',is_a,'neuron projection morphogenesis').
go('axonogenesis',part_of,'axon development').
go('axonogenesis',part_of,'cell morphogenesis involved in neuron differentiation').
go('axon development',is_a,'neuron projection development').
go('cell morphogenesis involved in neuron differentiation',is_a,'cell morphogenesis').
go('cell morphogenesis involved in neuron differentiation',part_of,'neuron differentiation').
go('cell morphogenesis involved in neuron differentiation',part_of,'neuron development').
go('cytokine-mediated signaling pathway',is_a,'cell surface receptor signaling pathway').
go('cytokine-mediated signaling pathway',part_of,'cellular response to cytokine stimulus').
go('cellular response to cytokine stimulus',is_a,'response to cytokine').
go('response to cytokine',is_a,'response to peptide').
go('response to peptide',is_a,'response to chemical').
go('Fc-epsilon receptor signaling pathway',is_a,'Fc receptor signaling pathway').
go('Fc receptor signaling pathway',is_a,'immune response-regulating cell surface receptor signaling pathway').
go('leukocyte migration',is_a,'immune system process').
go('leukocyte migration',is_a,'cell migration').
go('neurotrophin TRK receptor signaling pathway',is_a,'cell surface receptor protein tyrosine kinase signaling pathway').
go('neurotrophin TRK receptor signaling pathway',is_a,'neurotrophin signaling pathway').
go('neurotrophin signaling pathway',is_a,'cell surface receptor signaling pathway').
go('neurotrophin signaling pathway',part_of,'cellular response to growth factor stimulus').
go('positive regulation of epidermal growth factor receptor signaling pathway',is_a,'regulation of epidermal growth factor receptor signaling pathway').
go('positive regulation of epidermal growth factor receptor signaling pathway',is_a,'positive regulation of ERBB signaling pathway').
go('positive regulation of ERBB signaling pathway',is_a,'regulation of ERBB signaling pathway').
go('positive regulation of ERBB signaling pathway',is_a,'positive regulation of signal transduction').
go('response to ischemia',is_a,'response to stress').
go('glutamatergic synapse',is_a,'synapse').
go('synapse',is_a,'cell junction').
go('GTPase complex',is_a,'catalytic complex').
go('catalytic complex',is_a,'protein-containing complex').
go('neuronal cell body',is_a,'cell body').
go('cell body',is_a,'cellular anatomical structure').
go('neuronal cell body',part_of,'somatodendritic compartment').
go('somatodendritic compartment',is_a,'cellular anatomical structure').
go('postsynaptic density',is_a,'postsynaptic specialization').
go('postsynaptic specialization',is_a,'organelle').
go('postsynaptic specialization',part_of,'postsynapse').
go('postsynapse',is_a,'cellular anatomical structure').
go('postsynapse',part_of,'synapse').
go('postsynaptic density',part_of,'asymmetric synapse').
go('asymmetric synapse',is_a,'neuron to neuron synapse').
go('neuron to neuron synapse',is_a,'synapse').
leaf('SOS2','guanyl-nucleotide exchange factor activity').
leaf('SOS2','protein heterodimerization activity').
leaf('SOS2','insulin receptor signaling pathway').
leaf('SOS2','Ras protein signal transduction').
leaf('SOS2','cytosol').
leaf('SOS2','plasma membrane').
leaf('GDI1','GDP-dissociation inhibitor activity').
fm('GDP-dissociation inhibitor activity').
leaf('GDI1','Rab GDP-dissociation inhibitor activity').
fm('Rab GDP-dissociation inhibitor activity').
leaf('GDI1','small GTPase binding').
fm('small GTPase binding').
leaf('GDI1','negative regulation of axonogenesis').
bp('negative regulation of axonogenesis').
leaf('GDI1','negative regulation of protein targeting to membrane').
bp('negative regulation of protein targeting to membrane').
leaf('GDI1','positive regulation of axon extension').
bp('positive regulation of axon extension').
leaf('GDI1','positive regulation of toll-like receptor signaling pathway').
bp('positive regulation of toll-like receptor signaling pathway').
leaf('GDI1','protein transport').
bp('protein transport').
leaf('GDI1','Rab protein signal transduction').
bp('Rab protein signal transduction').
leaf('GDI1','response to calcium ion').
bp('response to calcium ion').
leaf('GDI1','signal transduction').
leaf('GDI1','vesicle-mediated transport').
bp('vesicle-mediated transport').
leaf('GDI1','axon').
cc('axon').
leaf('GDI1','cytoplasm').
leaf('GDI1','cytosol').
leaf('GDI1','endoplasmic reticulum').
cc('endoplasmic reticulum').
leaf('GDI1','Golgi apparatus').
leaf('GDI1','midbody').
cc('midbody').
leaf('GDI1','myelin sheath').
cc('myelin sheath').
leaf('GDI1','neuronal cell body').
leaf('GDI1','presynaptic cytosol').
cc('presynaptic cytosol').
leaf('GDI1','protein-containing complex').
go('GDP-dissociation inhibitor activity',is_a,'GTPase regulator activity').
go('Rab GDP-dissociation inhibitor activity',is_a,'GDP-dissociation inhibitor activity').
go('small GTPase binding',is_a,'GTPase binding').
go('GTPase binding',is_a,'enzyme binding').
go('negative regulation of axonogenesis',is_a,'regulation of axonogenesis').
go('negative regulation of axonogenesis',is_a,'negative regulation of neuron projection development').
go('regulation of axonogenesis',is_a,'regulation of anatomical structure morphogenesis').
go('negative regulation of neuron projection development',is_a,'negative regulation of cell projection organization').
go('negative regulation of cell projection organization',is_a,'negative regulation of cellular component organization').
go('negative regulation of cellular component organization',is_a,'negative regulation of cellular process').
go('regulation of axonogenesis',is_a,'regulation of neuron projection development').
go('regulation of neuron projection development',is_a,'regulation of plasma membrane bounded cell projection organization').
go('negative regulation of cellular component organization',is_a,'regulation of cellular component organization').
go('regulation of plasma membrane bounded cell projection organization',is_a,'regulation of cell projection organization').
go('regulation of cell projection organization',is_a,'regulation of cellular component organization').
go('negative regulation of cell projection organization',is_a,'regulation of cell projection organization').
go('regulation of cell projection organization',regulates,'cell projection organization').
go('negative regulation of neuron projection development',is_a,'regulation of neuron projection development').
go('negative regulation of axonogenesis',is_a,'negative regulation of neurogenesis').
go('regulation of plasma membrane bounded cell projection organization',regulates,'plasma membrane bounded cell projection organization').
go('negative regulation of neurogenesis',is_a,'regulation of neurogenesis').
go('regulation of neuron projection development',regulates,'neuron projection development').
go('regulation of neurogenesis',is_a,'regulation of nervous system development').
go('regulation of nervous system development',is_a,'regulation of multicellular organismal development').
go('regulation of nervous system development',regulates,'nervous system development').
go('regulation of neurogenesis',is_a,'regulation of cell development').
go('regulation of cell development',is_a,'regulation of cell differentiation').
go('regulation of cell development',regulates,'cell development').
go('regulation of neurogenesis',regulates,'neurogenesis').
go('negative regulation of neurogenesis',is_a,'negative regulation of cell development').
go('regulation of axonogenesis',regulates,'axonogenesis').
go('negative regulation of cell development',is_a,'regulation of cell development').
go('negative regulation of cell development',is_a,'negative regulation of cell differentiation').
go('negative regulation of neurogenesis',is_a,'negative regulation of nervous system development').
go('negative regulation of nervous system development',is_a,'negative regulation of developmental process').
go('negative regulation of nervous system development',is_a,'regulation of nervous system development').
go('negative regulation of nervous system development',is_a,'negative regulation of multicellular organismal process').
go('negative regulation of protein targeting to membrane',is_a,'regulation of protein targeting to membrane').
go('negative regulation of protein targeting to membrane',is_a,'negative regulation of establishment of protein localization').
go('negative regulation of establishment of protein localization',is_a,'regulation of establishment of protein localization').
go('regulation of protein targeting to membrane',is_a,'regulation of cellular localization').
go('regulation of establishment of protein localization',is_a,'regulation of protein localization').
go('regulation of establishment of protein localization',regulates,'establishment of protein localization').
go('regulation of protein targeting to membrane',is_a,'regulation of protein targeting').
go('negative regulation of establishment of protein localization',is_a,'negative regulation of biological process').
go('regulation of protein targeting',is_a,'regulation of establishment of protein localization').
go('negative regulation of protein targeting to membrane',is_a,'negative regulation of cellular process').
go('regulation of protein targeting',regulates,'protein targeting').
go('protein targeting',is_a,'establishment of protein localization').
go('regulation of protein targeting to membrane',regulates,'protein targeting to membrane').
go('protein targeting to membrane',is_a,'protein targeting').
go('protein targeting to membrane',is_a,'establishment of protein localization to membrane').
go('positive regulation of axon extension',is_a,'positive regulation of cell growth').
go('positive regulation of axon extension',is_a,'positive regulation of axonogenesis').
go('positive regulation of axonogenesis',is_a,'positive regulation of cell projection organization').
go('positive regulation of cell projection organization',is_a,'positive regulation of cellular component organization').
go('positive regulation of cell projection organization',is_a,'regulation of cell projection organization').
go('positive regulation of axonogenesis',is_a,'positive regulation of neurogenesis').
go('positive regulation of neurogenesis',is_a,'regulation of neurogenesis').
go('positive regulation of neurogenesis',is_a,'positive regulation of cell development').
go('positive regulation of cell development',is_a,'regulation of cell development').
go('positive regulation of cell development',is_a,'positive regulation of cell differentiation').
go('positive regulation of axon extension',is_a,'positive regulation of developmental growth').
go('positive regulation of cell differentiation',is_a,'regulation of cell differentiation').
go('positive regulation of developmental growth',is_a,'regulation of developmental growth').
go('positive regulation of cell differentiation',is_a,'positive regulation of developmental process').
go('regulation of developmental growth',is_a,'regulation of developmental process').
go('positive regulation of cell differentiation',is_a,'positive regulation of cellular process').
go('regulation of developmental growth',is_a,'regulation of growth').
go('positive regulation of neurogenesis',is_a,'positive regulation of nervous system development').
go('regulation of developmental growth',regulates,'developmental growth').
go('positive regulation of nervous system development',is_a,'positive regulation of developmental process').
go('developmental growth',is_a,'growth').
go('positive regulation of nervous system development',is_a,'regulation of nervous system development').
go('developmental growth',part_of,'developmental process').
go('positive regulation of nervous system development',is_a,'positive regulation of multicellular organismal process').
go('positive regulation of developmental growth',is_a,'positive regulation of developmental process').
go('positive regulation of axonogenesis',is_a,'regulation of axonogenesis').
go('positive regulation of developmental growth',is_a,'positive regulation of growth').
go('positive regulation of axon extension',is_a,'regulation of axon extension').
go('regulation of axon extension',is_a,'regulation of cell growth').
go('regulation of axon extension',is_a,'regulation of developmental growth').
go('regulation of axon extension',regulates,'axon extension').
go('axon extension',is_a,'neuron projection extension').
go('neuron projection extension',is_a,'developmental growth involved in morphogenesis').
go('developmental growth involved in morphogenesis',is_a,'developmental growth').
go('developmental growth involved in morphogenesis',part_of,'anatomical structure morphogenesis').
go('neuron projection extension',is_a,'developmental cell growth').
go('developmental cell growth',is_a,'developmental growth').
go('developmental cell growth',is_a,'cell growth').
go('developmental cell growth',part_of,'cell development').
go('neuron projection extension',part_of,'neuron projection morphogenesis').
go('axon extension',part_of,'axonogenesis').
go('positive regulation of toll-like receptor signaling pathway',is_a,'regulation of toll-like receptor signaling pathway').
go('positive regulation of toll-like receptor signaling pathway',is_a,'positive regulation of pattern recognition receptor signaling pathway').
go('regulation of toll-like receptor signaling pathway',is_a,'regulation of pattern recognition receptor signaling pathway').
go('regulation of toll-like receptor signaling pathway',regulates,'toll-like receptor signaling pathway').
go('toll-like receptor signaling pathway',is_a,'pattern recognition receptor signaling pathway').
go('protein transport',is_a,'establishment of protein localization').
go('protein transport',is_a,'transport').
go('protein transport',is_a,'intracellular protein localization').
go('Rab protein signal transduction',is_a,'small GTPase-mediated signal transduction').
go('response to calcium ion',is_a,'response to metal ion').
go('response to metal ion',is_a,'response to chemical').
go('axon',is_a,'neuron projection').
go('neuron projection',is_a,'plasma membrane bounded cell projection').
go('midbody',is_a,'cellular anatomical structure').
go('myelin sheath',is_a,'cellular anatomical structure').
go('presynaptic cytosol',is_a,'cytosol').
go('presynaptic cytosol',part_of,'presynapse').
go('presynaptic cytosol',part_of,'cytosol').
go('presynapse',is_a,'cellular anatomical structure').
go('presynapse',part_of,'synapse').
leaf('GDI2','GTPase activator activity').
leaf('GDI2','Rab GDP-dissociation inhibitor activity').
leaf('GDI2','RNA binding').
leaf('GDI2','small GTPase binding').
leaf('GDI2','negative regulation of cilium assembly').
bp('negative regulation of cilium assembly').
leaf('GDI2','negative regulation of protein localization to cilium').
bp('negative regulation of protein localization to cilium').
leaf('GDI2','protein transport').
leaf('GDI2','signal transduction').
leaf('GDI2','small GTPase-mediated signal transduction').
bp('small GTPase-mediated signal transduction').
leaf('GDI2','vesicle-mediated transport').
leaf('GDI2','azurophil granule lumen').
cc('azurophil granule lumen').
leaf('GDI2','cytoplasm').
leaf('GDI2','cytosol').
leaf('GDI2','extracellular exosome').
leaf('GDI2','extracellular region').
leaf('GDI2','focal adhesion').
leaf('GDI2','Golgi apparatus').
leaf('GDI2','membrane').
leaf('GDI2','secretory granule lumen').
cc('secretory granule lumen').
leaf('GDI2','synapse').
cc('synapse').
leaf('GDI2','vesicle').
cc('vesicle').
go('negative regulation of cilium assembly',is_a,'regulation of cilium assembly').
go('negative regulation of cilium assembly',is_a,'negative regulation of organelle assembly').
go('regulation of cilium assembly',is_a,'regulation of plasma membrane bounded cell projection assembly').
go('negative regulation of organelle assembly',is_a,'regulation of organelle assembly').
go('regulation of plasma membrane bounded cell projection assembly',is_a,'regulation of plasma membrane bounded cell projection organization').
go('regulation of organelle assembly',is_a,'regulation of cellular component biogenesis').
go('regulation of cellular component biogenesis',is_a,'regulation of cellular process').
go('regulation of cellular component biogenesis',regulates,'cellular component biogenesis').
go('cellular component biogenesis',is_a,'cellular component organization or biogenesis').
go('regulation of organelle assembly',is_a,'regulation of organelle organization').
go('regulation of organelle assembly',regulates,'organelle assembly').
go('regulation of plasma membrane bounded cell projection assembly',is_a,'regulation of cell projection assembly').
go('organelle assembly',is_a,'organelle organization').
go('organelle assembly',is_a,'cellular component assembly').
go('regulation of cell projection assembly',is_a,'regulation of cellular component biogenesis').
go('cellular component assembly',is_a,'cellular component organization').
go('regulation of cell projection assembly',is_a,'regulation of cell projection organization').
go('cellular component assembly',part_of,'cellular component biogenesis').
go('regulation of cell projection assembly',regulates,'cell projection assembly').
go('negative regulation of organelle assembly',is_a,'negative regulation of organelle organization').
go('cell projection assembly',is_a,'cellular component assembly').
go('cell projection assembly',is_a,'cell projection organization').
go('negative regulation of organelle organization',is_a,'negative regulation of cellular component organization').
go('regulation of plasma membrane bounded cell projection assembly',regulates,'plasma membrane bounded cell projection assembly').
go('plasma membrane bounded cell projection assembly',is_a,'plasma membrane bounded cell projection organization').
go('plasma membrane bounded cell projection assembly',is_a,'cell projection assembly').
go('negative regulation of organelle organization',is_a,'regulation of organelle organization').
go('regulation of cilium assembly',is_a,'regulation of organelle assembly').
go('negative regulation of cilium assembly',is_a,'negative regulation of plasma membrane bounded cell projection assembly').
go('regulation of cilium assembly',regulates,'cilium assembly').
go('negative regulation of plasma membrane bounded cell projection assembly',is_a,'regulation of plasma membrane bounded cell projection assembly').
go('cilium assembly',is_a,'organelle assembly').
go('negative regulation of plasma membrane bounded cell projection assembly',is_a,'negative regulation of cell projection organization').
go('cilium assembly',is_a,'plasma membrane bounded cell projection assembly').
go('cilium assembly',is_a,'cilium organization').
go('cilium organization',is_a,'plasma membrane bounded cell projection organization').
go('cilium organization',is_a,'organelle organization').
go('negative regulation of protein localization to cilium',is_a,'regulation of protein localization to cilium').
go('negative regulation of protein localization to cilium',is_a,'negative regulation of protein localization').
go('regulation of protein localization to cilium',is_a,'regulation of protein localization').
go('negative regulation of protein localization',is_a,'negative regulation of biological process').
go('negative regulation of protein localization',is_a,'regulation of protein localization').
go('regulation of protein localization to cilium',regulates,'protein localization to cilium').
go('protein localization to cilium',is_a,'protein localization to organelle').
go('azurophil granule lumen',is_a,'secretory granule lumen').
go('azurophil granule lumen',is_a,'vacuolar lumen').
go('vacuolar lumen',is_a,'intracellular organelle lumen').
go('vacuolar lumen',part_of,'vacuole').
go('azurophil granule lumen',part_of,'azurophil granule').
go('azurophil granule',is_a,'secretory granule').
go('azurophil granule',is_a,'primary lysosome').
go('primary lysosome',is_a,'lysosome').
leaf('GDPGP1','GDP-D-glucose phosphorylase activity').
fm('GDP-D-glucose phosphorylase activity').
leaf('GDPGP1','glucose metabolic process').
bp('glucose metabolic process').
leaf('GDPGP1','response to stress').
bp('response to stress').
leaf('GDPGP1','cytoplasm').
go('GDP-D-glucose phosphorylase activity',is_a,'guanylyltransferase activity').
go('guanylyltransferase activity',is_a,'nucleotidyltransferase activity').
go('nucleotidyltransferase activity',is_a,'transferase activity, transferring phosphorus-containing groups').
go('glucose metabolic process',is_a,'hexose metabolic process').
go('hexose metabolic process',is_a,'monosaccharide metabolic process').
go('monosaccharide metabolic process',is_a,'small molecule metabolic process').
go('monosaccharide metabolic process',is_a,'carbohydrate metabolic process').
go('small molecule metabolic process',is_a,'metabolic process').
leaf('GFUS','electron transfer activity').
fm('electron transfer activity').
leaf('GFUS','GDP-4-dehydro-D-rhamnose reductase activity').
fm('GDP-4-dehydro-D-rhamnose reductase activity').
leaf('GFUS','GDP-L-fucose synthase activity').
fm('GDP-L-fucose synthase activity').
leaf('GFUS','GDP-mannose 3,5-epimerase activity').
fm('GDP-mannose 3,5-epimerase activity').
leaf('GFUS','identical protein binding').
leaf('GFUS','de novo GDP-L-fucose biosynthetic process').
bp('de novo GDP-L-fucose biosynthetic process').
leaf('GFUS','GDP-mannose metabolic process').
bp('GDP-mannose metabolic process').
leaf('GFUS','leukocyte cell-cell adhesion').
bp('leukocyte cell-cell adhesion').
leaf('GFUS','positive regulation of endothelial cell migration').
leaf('GFUS','positive regulation of endothelial cell-matrix adhesion').
bp('positive regulation of endothelial cell-matrix adhesion').
leaf('GFUS','cytosol').
leaf('GFUS','extracellular exosome').
go('electron transfer activity',is_a,'molecular_function').
go('GDP-4-dehydro-D-rhamnose reductase activity',is_a,'oxidoreductase activity, acting on the CH-OH group of donors, NAD or NADP as acceptor').
go('oxidoreductase activity, acting on the CH-OH group of donors, NAD or NADP as acceptor',is_a,'oxidoreductase activity, acting on CH-OH group of donors').
go('oxidoreductase activity, acting on CH-OH group of donors',is_a,'oxidoreductase activity').
go('oxidoreductase activity',is_a,'catalytic activity').
go('GDP-L-fucose synthase activity',is_a,'oxidoreductase activity, acting on the CH-OH group of donors, NAD or NADP as acceptor').
go('GDP-L-fucose synthase activity',part_of,'GDP-L-fucose biosynthetic process').
go('GDP-L-fucose biosynthetic process',is_a,'GDP-L-fucose metabolic process').
go('GDP-L-fucose biosynthetic process',is_a,'nucleotide-sugar biosynthetic process').
go('GDP-L-fucose metabolic process',is_a,'nucleotide-sugar metabolic process').
go('nucleotide-sugar biosynthetic process',is_a,'carbohydrate derivative biosynthetic process').
go('nucleotide-sugar metabolic process',is_a,'nucleoside phosphate metabolic process').
go('nucleoside phosphate metabolic process',is_a,'organophosphate metabolic process').
go('nucleotide-sugar biosynthetic process',is_a,'nucleoside phosphate biosynthetic process').
go('organophosphate metabolic process',is_a,'phosphorus metabolic process').
go('nucleoside phosphate biosynthetic process',is_a,'nucleobase-containing compound biosynthetic process').
go('phosphorus metabolic process',is_a,'metabolic process').
go('nucleoside phosphate metabolic process',is_a,'nucleobase-containing small molecule metabolic process').
go('nucleoside phosphate biosynthetic process',is_a,'organophosphate biosynthetic process').
go('nucleobase-containing small molecule metabolic process',is_a,'small molecule metabolic process').
go('organophosphate biosynthetic process',is_a,'organophosphate metabolic process').
go('nucleobase-containing small molecule metabolic process',is_a,'nucleobase-containing compound metabolic process').
go('organophosphate biosynthetic process',is_a,'biosynthetic process').
go('nucleotide-sugar metabolic process',is_a,'carbohydrate derivative metabolic process').
go('nucleoside phosphate biosynthetic process',is_a,'nucleoside phosphate metabolic process').
go('nucleotide-sugar biosynthetic process',is_a,'nucleotide-sugar metabolic process').
go('GDP-mannose 3,5-epimerase activity',is_a,'racemase and epimerase activity, acting on carbohydrates and derivatives').
go('racemase and epimerase activity, acting on carbohydrates and derivatives',is_a,'racemase and epimerase activity').
go('racemase and epimerase activity',is_a,'isomerase activity').
go('isomerase activity',is_a,'catalytic activity').
go('de novo GDP-L-fucose biosynthetic process',is_a,'GDP-mannose metabolic process').
go('de novo GDP-L-fucose biosynthetic process',is_a,'GDP-L-fucose biosynthetic process').
go('GDP-mannose metabolic process',is_a,'nucleotide-sugar metabolic process').
go('leukocyte cell-cell adhesion',is_a,'cell-cell adhesion').
go('positive regulation of endothelial cell-matrix adhesion',is_a,'regulation of endothelial cell-matrix adhesion').
go('positive regulation of endothelial cell-matrix adhesion',is_a,'positive regulation of cell-matrix adhesion').
go('regulation of endothelial cell-matrix adhesion',is_a,'regulation of cell-matrix adhesion').
go('regulation of cell-matrix adhesion',is_a,'regulation of cell-substrate adhesion').
go('positive regulation of cell-matrix adhesion',is_a,'positive regulation of cell-substrate adhesion').
go('positive regulation of cell-substrate adhesion',is_a,'positive regulation of cell adhesion').
go('positive regulation of cell adhesion',is_a,'positive regulation of cellular process').
go('positive regulation of cell adhesion',is_a,'regulation of cell adhesion').
go('regulation of cell adhesion',is_a,'regulation of cellular process').
go('regulation of cell-substrate adhesion',is_a,'regulation of cell adhesion').
go('regulation of cell adhesion',regulates,'cell adhesion').
go('positive regulation of cell-substrate adhesion',is_a,'regulation of cell-substrate adhesion').
go('positive regulation of cell-matrix adhesion',is_a,'regulation of cell-matrix adhesion').
go('regulation of cell-substrate adhesion',regulates,'cell-substrate adhesion').
go('cell-substrate adhesion',is_a,'cell adhesion').
go('regulation of cell-matrix adhesion',regulates,'cell-matrix adhesion').
go('cell-matrix adhesion',is_a,'cell-substrate adhesion').
go('regulation of endothelial cell-matrix adhesion',regulates,'endothelial cell-matrix adhesion').
go('endothelial cell-matrix adhesion',is_a,'cell-matrix adhesion').
leaf('GMDS','GDP-mannose 4,6-dehydratase activity').
fm('GDP-mannose 4,6-dehydratase activity').
leaf('GMDS','identical protein binding').
leaf('GMDS','NADP+ binding').
fm('NADP+ binding').
leaf('GMDS','de novo GDP-L-fucose biosynthetic process').
leaf('GMDS','GDP-L-fucose biosynthetic process').
bp('GDP-L-fucose biosynthetic process').
leaf('GMDS','GDP-mannose metabolic process').
leaf('GMDS','Notch signaling pathway').
bp('Notch signaling pathway').
leaf('GMDS','cytoplasm').
leaf('GMDS','cytosol').
leaf('GMDS','extracellular exosome').
go('GDP-mannose 4,6-dehydratase activity',is_a,'hydro-lyase activity').
go('hydro-lyase activity',is_a,'carbon-oxygen lyase activity').
go('carbon-oxygen lyase activity',is_a,'lyase activity').
go('lyase activity',is_a,'catalytic activity').
go('NADP+ binding',is_a,'anion binding').
go('NADP+ binding',is_a,'NADP binding').
go('NADP binding',is_a,'adenyl nucleotide binding').
go('Notch signaling pathway',is_a,'cell surface receptor signaling pathway').
leaf('GMPPA','enzyme binding').
leaf('GMPPA','enzyme inhibitor activity').
fm('enzyme inhibitor activity').
leaf('GMPPA','molecular sensor activity').
fm('molecular sensor activity').
leaf('GMPPA','transferase activity').
fm('transferase activity').
leaf('GMPPA','GDP-mannose biosynthetic process').
bp('GDP-mannose biosynthetic process').
leaf('GMPPA','cytoplasm').
leaf('GMPPA','cytosol').
leaf('GMPPA','extracellular exosome').
leaf('GMPPA','GDP-mannose pyrophosphorylase complex').
cc('GDP-mannose pyrophosphorylase complex').
go('enzyme inhibitor activity',is_a,'enzyme regulator activity').
go('enzyme inhibitor activity',is_a,'molecular function inhibitor activity').
go('molecular function inhibitor activity',is_a,'molecular function regulator activity').
go('molecular sensor activity',is_a,'molecular function regulator activity').
go('GDP-mannose biosynthetic process',is_a,'GDP-mannose metabolic process').
go('GDP-mannose biosynthetic process',is_a,'nucleotide-sugar biosynthetic process').
go('GDP-mannose pyrophosphorylase complex',is_a,'transferase complex, transferring phosphorus-containing groups').
go('transferase complex, transferring phosphorus-containing groups',is_a,'transferase complex').
go('transferase complex',is_a,'catalytic complex').
leaf('GMPPB','GTP binding').
fm('GTP binding').
leaf('GMPPB','mannose-1-phosphate guanylyltransferase (GTP) activity').
fm('mannose-1-phosphate guanylyltransferase (GTP) activity').
leaf('GMPPB','GDP-mannose biosynthetic process').
leaf('GMPPB','GDP-mannose metabolic process').
leaf('GMPPB','glycoprotein biosynthetic process').
bp('glycoprotein biosynthetic process').
leaf('GMPPB','cytoplasm').
leaf('GMPPB','cytosol').
leaf('GMPPB','GDP-mannose pyrophosphorylase complex').
go('GTP binding',is_a,'anion binding').
go('GTP binding',is_a,'guanyl ribonucleotide binding').
go('GTP binding',is_a,'purine ribonucleoside triphosphate binding').
go('guanyl ribonucleotide binding',is_a,'purine ribonucleotide binding').
go('guanyl ribonucleotide binding',is_a,'guanyl nucleotide binding').
go('guanyl nucleotide binding',is_a,'purine nucleotide binding').
go('mannose-1-phosphate guanylyltransferase (GTP) activity',is_a,'guanylyltransferase activity').
go('glycoprotein biosynthetic process',is_a,'carbohydrate derivative biosynthetic process').
go('glycoprotein biosynthetic process',is_a,'glycoprotein metabolic process').
go('glycoprotein biosynthetic process',is_a,'macromolecule biosynthetic process').
go('glycoprotein metabolic process',is_a,'carbohydrate derivative metabolic process').
go('glycoprotein metabolic process',is_a,'protein metabolic process').
leaf('ARHGDIA','Rho GDP-dissociation inhibitor activity').
fm('Rho GDP-dissociation inhibitor activity').
leaf('ARHGDIA','negative regulation of apoptotic process').
leaf('ARHGDIA','regulation of Rho protein signal transduction').
bp('regulation of Rho protein signal transduction').
leaf('ARHGDIA','regulation of synaptic vesicle cycle').
bp('regulation of synaptic vesicle cycle').
leaf('ARHGDIA','Rho protein signal transduction').
bp('Rho protein signal transduction').
leaf('ARHGDIA','semaphorin-plexin signaling pathway').
bp('semaphorin-plexin signaling pathway').
leaf('ARHGDIA','cytoplasm').
leaf('ARHGDIA','cytoskeleton').
cc('cytoskeleton').
leaf('ARHGDIA','cytosol').
leaf('ARHGDIA','extracellular exosome').
leaf('ARHGDIA','immunological synapse').
cc('immunological synapse').
leaf('ARHGDIA','membrane').
leaf('ARHGDIA','nucleus').
leaf('ARHGDIA','Schaffer collateral - CA1 synapse').
cc('Schaffer collateral - CA1 synapse').
go('Rho GDP-dissociation inhibitor activity',is_a,'GDP-dissociation inhibitor activity').
go('regulation of Rho protein signal transduction',is_a,'regulation of small GTPase mediated signal transduction').
go('regulation of Rho protein signal transduction',regulates,'Rho protein signal transduction').
go('Rho protein signal transduction',is_a,'small GTPase-mediated signal transduction').
go('regulation of synaptic vesicle cycle',is_a,'regulation of vesicle-mediated transport').
go('regulation of synaptic vesicle cycle',regulates,'synaptic vesicle cycle').
go('synaptic vesicle cycle',is_a,'vesicle-mediated transport in synapse').
go('synaptic vesicle cycle',is_a,'establishment of localization in cell').
go('establishment of localization in cell',is_a,'establishment of localization').
go('vesicle-mediated transport in synapse',is_a,'vesicle-mediated transport').
go('establishment of localization in cell',part_of,'cellular localization').
go('vesicle-mediated transport in synapse',occurs_in,'synapse').
go('synaptic vesicle cycle',occurs_in,'presynapse').
go('semaphorin-plexin signaling pathway',is_a,'cell surface receptor signaling pathway').
go('cytoskeleton',is_a,'intracellular membraneless organelle').
go('intracellular membraneless organelle',is_a,'intracellular organelle').
go('intracellular membraneless organelle',is_a,'membraneless organelle').
go('membraneless organelle',is_a,'organelle').
go('intracellular membraneless organelle',part_of,'intracellular anatomical structure').
go('immunological synapse',is_a,'cellular anatomical structure').
go('immunological synapse',part_of,'plasma membrane').
go('Schaffer collateral - CA1 synapse',is_a,'synapse').
leaf('ARHGDIB','GTPase activity').
fm('GTPase activity').
leaf('ARHGDIB','Rho GDP-dissociation inhibitor activity').
leaf('ARHGDIB','small GTPase binding').
leaf('ARHGDIB','cellular response to redox state').
bp('cellular response to redox state').
leaf('ARHGDIB','negative regulation of trophoblast cell migration').
bp('negative regulation of trophoblast cell migration').
leaf('ARHGDIB','regulation of Rho protein signal transduction').
leaf('ARHGDIB','Rho protein signal transduction').
leaf('ARHGDIB','cytoplasm').
leaf('ARHGDIB','cytoplasmic vesicle').
cc('cytoplasmic vesicle').
leaf('ARHGDIB','cytoskeleton').
leaf('ARHGDIB','cytosol').
leaf('ARHGDIB','extracellular exosome').
leaf('ARHGDIB','membrane').
go('cellular response to redox state',is_a,'response to redox state').
go('response to redox state',is_a,'response to stimulus').
go('negative regulation of trophoblast cell migration',is_a,'regulation of trophoblast cell migration').
go('regulation of trophoblast cell migration',is_a,'regulation of cell migration').
go('negative regulation of trophoblast cell migration',is_a,'negative regulation of cell migration').
go('negative regulation of cell migration',is_a,'negative regulation of cell motility').
go('regulation of trophoblast cell migration',regulates,'trophoblast cell migration').
go('negative regulation of cell motility',is_a,'regulation of cell motility').
go('trophoblast cell migration',is_a,'ameboidal-type cell migration').
go('negative regulation of cell motility',is_a,'negative regulation of cellular process').
go('ameboidal-type cell migration',is_a,'cell migration').
go('trophoblast cell migration',part_of,'embryo implantation').
go('embryo implantation',is_a,'reproductive process').
go('negative regulation of cell motility',is_a,'negative regulation of locomotion').
go('reproductive process',is_a,'biological_process').
go('negative regulation of locomotion',is_a,'negative regulation of biological process').
go('embryo implantation',part_of,'multicellular organism development').
go('negative regulation of locomotion',is_a,'regulation of locomotion').
go('embryo implantation',part_of,'female pregnancy').
go('negative regulation of cell migration',is_a,'regulation of cell migration').
go('female pregnancy',is_a,'multi-organism reproductive process').
go('negative regulation of trophoblast cell migration',is_a,'negative regulation of multicellular organismal process').
go('multi-organism reproductive process',is_a,'reproductive process').
go('female pregnancy',is_a,'multi-multicellular organism process').
go('multi-multicellular organism process',is_a,'multicellular organismal process').
go('negative regulation of trophoblast cell migration',is_a,'negative regulation of reproductive process').
go('negative regulation of reproductive process',is_a,'negative regulation of biological process').
go('negative regulation of reproductive process',is_a,'regulation of reproductive process').
go('regulation of reproductive process',is_a,'regulation of biological process').
go('regulation of reproductive process',regulates,'reproductive process').
leaf('ARHGDIG','Rho GDP-dissociation inhibitor activity').
leaf('ARHGDIG','negative regulation of cell adhesion').
bp('negative regulation of cell adhesion').
leaf('ARHGDIG','Rho protein signal transduction').
leaf('ARHGDIG','cytoplasmic vesicle').
leaf('ARHGDIG','cytosol').
leaf('ARHGDIG','membrane').
go('negative regulation of cell adhesion',is_a,'negative regulation of cellular process').
go('negative regulation of cell adhesion',is_a,'regulation of cell adhesion').
leaf('RAP1GDS1','guanyl-nucleotide exchange factor activity').
leaf('RAP1GDS1','CAAX-box protein maturation').
bp('CAAX-box protein maturation').
leaf('RAP1GDS1','myosin filament assembly').
bp('myosin filament assembly').
leaf('RAP1GDS1','negative regulation of endoplasmic reticulum calcium ion concentration').
bp('negative regulation of endoplasmic reticulum calcium ion concentration').
leaf('RAP1GDS1','positive regulation of mitochondrial calcium ion concentration').
bp('positive regulation of mitochondrial calcium ion concentration').
leaf('RAP1GDS1','protein localization to nucleus').
bp('protein localization to nucleus').
leaf('RAP1GDS1','regulation of mitochondrion organization').
bp('regulation of mitochondrion organization').
leaf('RAP1GDS1','vascular associated smooth muscle contraction').
bp('vascular associated smooth muscle contraction').
leaf('RAP1GDS1','cytosol').
leaf('RAP1GDS1','endoplasmic reticulum').
leaf('RAP1GDS1','extracellular exosome').
leaf('RAP1GDS1','mitochondrion').
cc('mitochondrion').
leaf('RAP1GDS1','nucleus').
go('CAAX-box protein maturation',is_a,'protein maturation').
go('protein maturation',is_a,'protein metabolic process').
go('protein maturation',part_of,'gene expression').
go('myosin filament assembly',is_a,'protein-containing complex assembly').
go('myosin filament assembly',is_a,'myosin filament organization').
go('protein-containing complex assembly',is_a,'protein-containing complex organization').
go('myosin filament organization',is_a,'actin cytoskeleton organization').
go('protein-containing complex organization',is_a,'cellular component organization').
go('protein-containing complex assembly',is_a,'cellular component assembly').
go('myosin filament organization',is_a,'supramolecular fiber organization').
go('supramolecular fiber organization',is_a,'cellular component organization').
go('negative regulation of endoplasmic reticulum calcium ion concentration',is_a,'endoplasmic reticulum calcium ion homeostasis').
go('endoplasmic reticulum calcium ion homeostasis',is_a,'intracellular calcium ion homeostasis').
go('intracellular calcium ion homeostasis',is_a,'intracellular monoatomic cation homeostasis').
go('intracellular calcium ion homeostasis',is_a,'calcium ion homeostasis').
go('intracellular monoatomic cation homeostasis',is_a,'monoatomic cation homeostasis').
go('calcium ion homeostasis',is_a,'inorganic ion homeostasis').
go('inorganic ion homeostasis',is_a,'chemical homeostasis').
go('monoatomic cation homeostasis',is_a,'monoatomic ion homeostasis').
go('chemical homeostasis',is_a,'homeostatic process').
go('monoatomic ion homeostasis',is_a,'chemical homeostasis').
go('homeostatic process',is_a,'biological_process').
go('intracellular monoatomic cation homeostasis',is_a,'intracellular monoatomic ion homeostasis').
go('calcium ion homeostasis',is_a,'monoatomic cation homeostasis').
go('intracellular monoatomic ion homeostasis',is_a,'intracellular chemical homeostasis').
go('intracellular monoatomic ion homeostasis',is_a,'monoatomic ion homeostasis').
go('intracellular chemical homeostasis',is_a,'chemical homeostasis').
go('intracellular chemical homeostasis',is_a,'cellular homeostasis').
go('cellular homeostasis',is_a,'homeostatic process').
go('endoplasmic reticulum calcium ion homeostasis',occurs_in,'endoplasmic reticulum').
go('positive regulation of mitochondrial calcium ion concentration',is_a,'mitochondrial calcium ion homeostasis').
go('mitochondrial calcium ion homeostasis',is_a,'intracellular calcium ion homeostasis').
go('mitochondrial calcium ion homeostasis',occurs_in,'mitochondrion').
go('mitochondrion',is_a,'intracellular membrane-bounded organelle').
go('mitochondrion',part_of,'cytoplasm').
go('protein localization to nucleus',is_a,'protein localization to organelle').
go('regulation of mitochondrion organization',is_a,'regulation of organelle organization').
go('regulation of mitochondrion organization',regulates,'mitochondrion organization').
go('mitochondrion organization',is_a,'organelle organization').
go('vascular associated smooth muscle contraction',is_a,'vasoconstriction').
go('vascular associated smooth muscle contraction',is_a,'smooth muscle contraction').
go('vasoconstriction',is_a,'blood vessel diameter maintenance').
go('smooth muscle contraction',is_a,'muscle contraction').
go('blood vessel diameter maintenance',is_a,'vascular process in circulatory system').
go('muscle contraction',is_a,'muscle system process').
go('vascular process in circulatory system',is_a,'circulatory system process').
go('muscle system process',is_a,'system process').
go('circulatory system process',is_a,'system process').
go('blood vessel diameter maintenance',is_a,'regulation of tube diameter').
go('regulation of tube diameter',is_a,'regulation of tube size').
go('regulation of tube size',is_a,'regulation of anatomical structure size').
go('regulation of anatomical structure size',is_a,'regulation of biological quality').
go('regulation of biological quality',is_a,'biological regulation').
go('blood vessel diameter maintenance',part_of,'blood circulation').
go('blood circulation',is_a,'circulatory system process').
leaf('SUCLG1','malate-CoA ligase activity').
fm('malate-CoA ligase activity').
leaf('SUCLG1','RNA binding').
leaf('SUCLG1','succinate-CoA ligase (ADP-forming) activity').
fm('succinate-CoA ligase (ADP-forming) activity').
leaf('SUCLG1','succinate-CoA ligase (GDP-forming) activity').
fm('succinate-CoA ligase (GDP-forming) activity').
leaf('SUCLG1','succinate-CoA ligase activity').
fm('succinate-CoA ligase activity').
leaf('SUCLG1','malate metabolic process').
bp('malate metabolic process').
leaf('SUCLG1','succinyl-CoA catabolic process').
bp('succinyl-CoA catabolic process').
leaf('SUCLG1','toxic metabolite repair').
bp('toxic metabolite repair').
leaf('SUCLG1','tricarboxylic acid cycle').
bp('tricarboxylic acid cycle').
leaf('SUCLG1','catalytic complex').
cc('catalytic complex').
leaf('SUCLG1','mitochondrial matrix').
cc('mitochondrial matrix').
leaf('SUCLG1','mitochondrion').
leaf('SUCLG1','succinate-CoA ligase complex (ADP-forming)').
cc('succinate-CoA ligase complex (ADP-forming)').
leaf('SUCLG1','succinate-CoA ligase complex (GDP-forming)').
cc('succinate-CoA ligase complex (GDP-forming)').
go('malate-CoA ligase activity',is_a,'CoA-ligase activity').
go('CoA-ligase activity',is_a,'acid-thiol ligase activity').
go('acid-thiol ligase activity',is_a,'ligase activity, forming carbon-sulfur bonds').
go('ligase activity, forming carbon-sulfur bonds',is_a,'ligase activity').
go('ligase activity',is_a,'catalytic activity').
go('succinate-CoA ligase (ADP-forming) activity',is_a,'succinate-CoA ligase activity').
go('succinate-CoA ligase activity',is_a,'CoA-ligase activity').
go('succinate-CoA ligase (GDP-forming) activity',is_a,'succinate-CoA ligase activity').
go('malate metabolic process',is_a,'dicarboxylic acid metabolic process').
go('dicarboxylic acid metabolic process',is_a,'carboxylic acid metabolic process').
go('carboxylic acid metabolic process',is_a,'oxoacid metabolic process').
go('oxoacid metabolic process',is_a,'small molecule metabolic process').
go('succinyl-CoA catabolic process',is_a,'sulfur compound catabolic process').
go('sulfur compound catabolic process',is_a,'catabolic process').
go('sulfur compound catabolic process',is_a,'sulfur compound metabolic process').
go('sulfur compound metabolic process',is_a,'metabolic process').
go('succinyl-CoA catabolic process',is_a,'succinyl-CoA metabolic process').
go('succinyl-CoA metabolic process',is_a,'acyl-CoA metabolic process').
go('acyl-CoA metabolic process',is_a,'nucleoside phosphate metabolic process').
go('succinyl-CoA catabolic process',is_a,'purine-containing compound catabolic process').
go('acyl-CoA metabolic process',is_a,'purine-containing compound metabolic process').
go('purine-containing compound metabolic process',is_a,'metabolic process').
go('acyl-CoA metabolic process',is_a,'sulfur compound metabolic process').
go('succinyl-CoA catabolic process',is_a,'nucleoside phosphate catabolic process').
go('nucleoside phosphate catabolic process',is_a,'nucleobase-containing compound catabolic process').
go('purine-containing compound catabolic process',is_a,'nucleobase-containing small molecule catabolic process').
go('nucleobase-containing small molecule catabolic process',is_a,'small molecule catabolic process').
go('nucleobase-containing compound catabolic process',is_a,'catabolic process').
go('small molecule catabolic process',is_a,'catabolic process').
go('small molecule catabolic process',is_a,'small molecule metabolic process').
go('nucleobase-containing compound catabolic process',is_a,'nucleobase-containing compound metabolic process').
go('nucleobase-containing small molecule catabolic process',is_a,'nucleobase-containing small molecule metabolic process').
go('nucleoside phosphate catabolic process',is_a,'organophosphate catabolic process').
go('nucleobase-containing small molecule catabolic process',is_a,'nucleobase-containing compound catabolic process').
go('organophosphate catabolic process',is_a,'catabolic process').
go('purine-containing compound catabolic process',is_a,'purine-containing compound metabolic process').
go('organophosphate catabolic process',is_a,'organophosphate metabolic process').
go('nucleoside phosphate catabolic process',is_a,'nucleoside phosphate metabolic process').
go('toxic metabolite repair',is_a,'cellular detoxification').
go('toxic metabolite repair',is_a,'metabolite repair').
go('cellular detoxification',is_a,'detoxification').
go('metabolite repair',is_a,'metabolic process').
go('detoxification',is_a,'biological_process').
go('cellular detoxification',is_a,'cellular process').
go('detoxification',part_of,'response to toxic substance').
go('response to toxic substance',is_a,'response to chemical').
go('cellular detoxification',part_of,'cellular response to toxic substance').
go('cellular response to toxic substance',is_a,'cellular response to chemical stimulus').
go('cellular response to toxic substance',is_a,'response to toxic substance').
go('tricarboxylic acid cycle',is_a,'primary metabolic process').
go('tricarboxylic acid cycle',part_of,'aerobic respiration').
go('aerobic respiration',is_a,'cellular respiration').
go('cellular respiration',is_a,'energy derivation by oxidation of organic compounds').
go('energy derivation by oxidation of organic compounds',is_a,'generation of precursor metabolites and energy').
go('generation of precursor metabolites and energy',is_a,'metabolic process').
go('mitochondrial matrix',is_a,'intracellular organelle lumen').
go('mitochondrial matrix',part_of,'mitochondrion').
go('succinate-CoA ligase complex (ADP-forming)',is_a,'succinate-CoA ligase complex').
go('succinate-CoA ligase complex',is_a,'tricarboxylic acid cycle heteromeric enzyme complex').
go('tricarboxylic acid cycle heteromeric enzyme complex',is_a,'catalytic complex').
go('tricarboxylic acid cycle heteromeric enzyme complex',part_of,'cytoplasm').
go('succinate-CoA ligase complex (GDP-forming)',is_a,'succinate-CoA ligase complex').
leaf('SUCLG2','ATP binding').
leaf('SUCLG2','GTP binding').
leaf('SUCLG2','magnesium ion binding').
fm('magnesium ion binding').
leaf('SUCLG2','succinate-CoA ligase (GDP-forming) activity').
leaf('SUCLG2','succinyl-CoA catabolic process').
leaf('SUCLG2','succinyl-CoA metabolic process').
bp('succinyl-CoA metabolic process').
leaf('SUCLG2','tricarboxylic acid cycle').
leaf('SUCLG2','mitochondrial matrix').
leaf('SUCLG2','mitochondrion').
leaf('SUCLG2','succinate-CoA ligase complex').
cc('succinate-CoA ligase complex').
leaf('SUCLG2','succinate-CoA ligase complex (GDP-forming)').
go('magnesium ion binding',is_a,'metal ion binding').
leaf('AGTPBP1','metallocarboxypeptidase activity').
fm('metallocarboxypeptidase activity').
leaf('AGTPBP1','tubulin binding').
fm('tubulin binding').
leaf('AGTPBP1','zinc ion binding').
fm('zinc ion binding').
leaf('AGTPBP1','cerebellar Purkinje cell differentiation').
bp('cerebellar Purkinje cell differentiation').
leaf('AGTPBP1','eye photoreceptor cell differentiation').
bp('eye photoreceptor cell differentiation').
leaf('AGTPBP1','mitochondrion organization').
bp('mitochondrion organization').
leaf('AGTPBP1','neuromuscular process').
bp('neuromuscular process').
leaf('AGTPBP1','olfactory bulb development').
bp('olfactory bulb development').
leaf('AGTPBP1','proteolysis').
bp('proteolysis').
leaf('AGTPBP1','cytoplasm').
leaf('AGTPBP1','cytosol').
leaf('AGTPBP1','microtubule cytoskeleton').
cc('microtubule cytoskeleton').
leaf('AGTPBP1','mitochondrion').
leaf('AGTPBP1','nucleoplasm').
leaf('AGTPBP1','nucleus').
go('metallocarboxypeptidase activity',is_a,'carboxypeptidase activity').
go('metallocarboxypeptidase activity',is_a,'metalloexopeptidase activity').
go('carboxypeptidase activity',is_a,'exopeptidase activity').
go('metalloexopeptidase activity',is_a,'exopeptidase activity').
go('exopeptidase activity',is_a,'peptidase activity').
go('metalloexopeptidase activity',is_a,'metallopeptidase activity').
go('peptidase activity',is_a,'catalytic activity, acting on a protein').
go('peptidase activity',is_a,'hydrolase activity').
go('metallopeptidase activity',is_a,'peptidase activity').
go('tubulin binding',is_a,'cytoskeletal protein binding').
go('zinc ion binding',is_a,'transition metal ion binding').
go('transition metal ion binding',is_a,'metal ion binding').
go('cerebellar Purkinje cell differentiation',is_a,'cell differentiation in hindbrain').
go('cerebellar Purkinje cell differentiation',is_a,'central nervous system neuron differentiation').
go('cell differentiation in hindbrain',is_a,'cell differentiation').
go('central nervous system neuron differentiation',is_a,'neuron differentiation').
go('cell differentiation in hindbrain',part_of,'hindbrain development').
go('hindbrain development',is_a,'animal gross anatomical part developmental process').
go('hindbrain development',part_of,'brain development').
go('brain development',is_a,'animal organ development').
go('brain development',part_of,'head development').
go('head development',is_a,'animal gross anatomical part developmental process').
go('central nervous system neuron differentiation',part_of,'central nervous system development').
go('brain development',part_of,'central nervous system development').
go('central nervous system development',is_a,'animal gross anatomical part developmental process').
go('cerebellar Purkinje cell differentiation',is_a,'GABAergic neuron differentiation').
go('GABAergic neuron differentiation',is_a,'neuron differentiation').
go('central nervous system development',is_a,'system development').
go('central nervous system development',part_of,'nervous system development').
go('cerebellar Purkinje cell differentiation',part_of,'cerebellar Purkinje cell layer formation').
go('cerebellar Purkinje cell layer formation',is_a,'anatomical structure formation involved in morphogenesis').
go('cerebellar Purkinje cell layer formation',part_of,'cerebellar Purkinje cell layer morphogenesis').
go('cerebellar Purkinje cell layer formation',part_of,'cerebellar cortex formation').
go('cerebellar Purkinje cell layer morphogenesis',is_a,'anatomical structure morphogenesis').
go('cerebellar cortex formation',is_a,'anatomical structure formation involved in morphogenesis').
go('cerebellar cortex formation',part_of,'cerebellar cortex morphogenesis').
go('cerebellar Purkinje cell layer morphogenesis',part_of,'cerebellar cortex morphogenesis').
go('cerebellar cortex morphogenesis',is_a,'anatomical structure morphogenesis').
go('cerebellar Purkinje cell layer morphogenesis',part_of,'cerebellar Purkinje cell layer development').
go('cerebellar cortex morphogenesis',part_of,'cerebellar cortex development').
go('cerebellar Purkinje cell layer development',is_a,'animal gross anatomical part developmental process').
go('cerebellar cortex development',is_a,'animal gross anatomical part developmental process').
go('cerebellar Purkinje cell layer development',part_of,'cerebellar cortex development').
go('cerebellar cortex development',part_of,'cerebellum development').
go('cerebellar cortex morphogenesis',part_of,'cerebellum morphogenesis').
go('cerebellum development',is_a,'animal gross anatomical part developmental process').
go('cerebellum morphogenesis',is_a,'anatomical structure morphogenesis').
go('cerebellum development',part_of,'metencephalon development').
go('cerebellum morphogenesis',part_of,'hindbrain morphogenesis').
go('hindbrain morphogenesis',is_a,'anatomical structure morphogenesis').
go('metencephalon development',is_a,'animal gross anatomical part developmental process').
go('hindbrain morphogenesis',part_of,'hindbrain development').
go('metencephalon development',part_of,'hindbrain development').
go('cerebellum morphogenesis',part_of,'cerebellum development').
go('eye photoreceptor cell differentiation',is_a,'photoreceptor cell differentiation').
go('photoreceptor cell differentiation',is_a,'neuron differentiation').
go('eye photoreceptor cell differentiation',part_of,'eye morphogenesis').
go('eye morphogenesis',is_a,'sensory organ morphogenesis').
go('sensory organ morphogenesis',is_a,'animal organ morphogenesis').
go('animal organ morphogenesis',is_a,'anatomical structure morphogenesis').
go('animal organ morphogenesis',part_of,'animal organ development').
go('sensory organ morphogenesis',part_of,'sensory organ development').
go('sensory organ development',is_a,'animal organ development').
go('eye morphogenesis',part_of,'eye development').
go('eye development',is_a,'sensory organ development').
go('eye development',part_of,'visual system development').
go('visual system development',is_a,'sensory system development').
go('sensory system development',is_a,'animal gross anatomical part developmental process').
go('sensory system development',is_a,'system development').
go('neuromuscular process',is_a,'nervous system process').
go('olfactory bulb development',is_a,'animal gross anatomical part developmental process').
go('olfactory bulb development',part_of,'olfactory lobe development').
go('olfactory lobe development',is_a,'animal gross anatomical part developmental process').
go('olfactory lobe development',part_of,'telencephalon development').
go('telencephalon development',is_a,'animal gross anatomical part developmental process').
go('telencephalon development',part_of,'forebrain development').
go('forebrain development',is_a,'animal gross anatomical part developmental process').
go('forebrain development',part_of,'brain development').
go('proteolysis',is_a,'protein metabolic process').
go('microtubule cytoskeleton',is_a,'cytoskeleton').
leaf('GCH1','GTP binding').
leaf('GCH1','GTP cyclohydrolase I activity').
fm('GTP cyclohydrolase I activity').
leaf('GCH1','GTPase activity').
leaf('GCH1','identical protein binding').
leaf('GCH1','mitogen-activated protein kinase binding').
fm('mitogen-activated protein kinase binding').
leaf('GCH1','protein homodimerization activity').
fm('protein homodimerization activity').
leaf('GCH1','zinc ion binding').
leaf('GCH1','dopamine biosynthetic process').
bp('dopamine biosynthetic process').
leaf('GCH1','neuromuscular process controlling posture').
bp('neuromuscular process controlling posture').
leaf('GCH1','nitric oxide biosynthetic process').
bp('nitric oxide biosynthetic process').
leaf('GCH1','positive regulation of heart rate').
bp('positive regulation of heart rate').
leaf('GCH1','positive regulation of nitric-oxide synthase activity').
bp('positive regulation of nitric-oxide synthase activity').
leaf('GCH1','pteridine-containing compound biosynthetic process').
bp('pteridine-containing compound biosynthetic process').
leaf('GCH1','regulation of blood pressure').
bp('regulation of blood pressure').
leaf('GCH1','regulation of removal of superoxide radicals').
bp('regulation of removal of superoxide radicals').
leaf('GCH1','response to lipopolysaccharide').
bp('response to lipopolysaccharide').
leaf('GCH1','response to pain').
bp('response to pain').
leaf('GCH1','response to tumor necrosis factor').
bp('response to tumor necrosis factor').
leaf('GCH1','response to type II interferon').
bp('response to type II interferon').
leaf('GCH1','tetrahydrobiopterin biosynthetic process').
bp('tetrahydrobiopterin biosynthetic process').
leaf('GCH1','tetrahydrofolate biosynthetic process').
bp('tetrahydrofolate biosynthetic process').
leaf('GCH1','cytoplasm').
leaf('GCH1','cytoplasmic vesicle').
leaf('GCH1','cytosol').
leaf('GCH1','neuron projection terminus').
cc('neuron projection terminus').
leaf('GCH1','nuclear membrane').
leaf('GCH1','nucleoplasm').
leaf('GCH1','nucleus').
leaf('GCH1','protein-containing complex').
go('GTP cyclohydrolase I activity',is_a,'GTP cyclohydrolase activity').
go('GTP cyclohydrolase activity',is_a,'cyclohydrolase activity').
go('cyclohydrolase activity',is_a,'hydrolase activity, acting on carbon-nitrogen (but not peptide) bonds, in cyclic amidines').
go('hydrolase activity, acting on carbon-nitrogen (but not peptide) bonds, in cyclic amidines',is_a,'hydrolase activity, acting on carbon-nitrogen (but not peptide) bonds').
go('hydrolase activity, acting on carbon-nitrogen (but not peptide) bonds',is_a,'hydrolase activity').
go('mitogen-activated protein kinase binding',is_a,'protein kinase binding').
go('protein homodimerization activity',is_a,'protein dimerization activity').
go('protein homodimerization activity',is_a,'identical protein binding').
go('dopamine biosynthetic process',is_a,'catecholamine biosynthetic process').
go('dopamine biosynthetic process',is_a,'dopamine metabolic process').
go('catecholamine biosynthetic process',is_a,'catecholamine metabolic process').
go('catecholamine metabolic process',is_a,'catechol-containing compound metabolic process').
go('dopamine metabolic process',is_a,'catecholamine metabolic process').
go('catechol-containing compound metabolic process',is_a,'phenol-containing compound metabolic process').
go('catecholamine biosynthetic process',is_a,'biogenic amine biosynthetic process').
go('phenol-containing compound metabolic process',is_a,'metabolic process').
go('biogenic amine biosynthetic process',is_a,'amine biosynthetic process').
go('amine biosynthetic process',is_a,'biosynthetic process').
go('catecholamine metabolic process',is_a,'biogenic amine metabolic process').
go('biogenic amine metabolic process',is_a,'amine metabolic process').
go('amine biosynthetic process',is_a,'amine metabolic process').
go('amine metabolic process',is_a,'metabolic process').
go('biogenic amine biosynthetic process',is_a,'biogenic amine metabolic process').
go('catecholamine biosynthetic process',is_a,'catechol-containing compound biosynthetic process').
go('catechol-containing compound biosynthetic process',is_a,'phenol-containing compound biosynthetic process').
go('catechol-containing compound biosynthetic process',is_a,'catechol-containing compound metabolic process').
go('phenol-containing compound biosynthetic process',is_a,'biosynthetic process').
go('phenol-containing compound biosynthetic process',is_a,'phenol-containing compound metabolic process').
go('neuromuscular process controlling posture',is_a,'neuromuscular process').
go('nitric oxide biosynthetic process',is_a,'biosynthetic process').
go('nitric oxide biosynthetic process',is_a,'nitric oxide metabolic process').
go('nitric oxide metabolic process',is_a,'reactive nitrogen species metabolic process').
go('reactive nitrogen species metabolic process',is_a,'metabolic process').
go('positive regulation of heart rate',is_a,'positive regulation of heart contraction').
go('positive regulation of heart rate',is_a,'regulation of heart rate').
go('positive regulation of heart contraction',is_a,'positive regulation of blood circulation').
go('positive regulation of blood circulation',is_a,'regulation of blood circulation').
go('regulation of heart rate',is_a,'regulation of heart contraction').
go('regulation of blood circulation',is_a,'regulation of system process').
go('regulation of heart contraction',is_a,'regulation of blood circulation').
go('regulation of system process',is_a,'regulation of multicellular organismal process').
go('regulation of heart contraction',regulates,'heart contraction').
go('regulation of system process',regulates,'system process').
go('heart contraction',is_a,'heart process').
go('regulation of blood circulation',regulates,'blood circulation').
go('heart process',is_a,'circulatory system process').
go('positive regulation of blood circulation',is_a,'positive regulation of multicellular organismal process').
go('heart contraction',part_of,'blood circulation').
go('regulation of heart rate',is_a,'regulation of biological quality').
go('positive regulation of heart contraction',is_a,'regulation of heart contraction').
go('positive regulation of nitric-oxide synthase activity',is_a,'regulation of nitric-oxide synthase activity').
go('positive regulation of nitric-oxide synthase activity',is_a,'positive regulation of oxidoreductase activity').
go('positive regulation of oxidoreductase activity',is_a,'regulation of oxidoreductase activity').
go('regulation of nitric-oxide synthase activity',is_a,'regulation of oxidoreductase activity').
go('regulation of oxidoreductase activity',is_a,'regulation of catalytic activity').
go('regulation of nitric-oxide synthase activity',regulates,'nitric-oxide synthase activity').
go('regulation of catalytic activity',is_a,'regulation of molecular function').
go('nitric-oxide synthase activity',is_a,'oxidoreductase activity, acting on paired donors, with incorporation or reduction of molecular oxygen, NAD(P)H as one donor, and incorporation of one atom of oxygen').
go('regulation of catalytic activity',regulates,'catalytic activity').
go('oxidoreductase activity, acting on paired donors, with incorporation or reduction of molecular oxygen, NAD(P)H as one donor, and incorporation of one atom of oxygen',is_a,'monooxygenase activity').
go('regulation of oxidoreductase activity',regulates,'oxidoreductase activity').
go('monooxygenase activity',is_a,'oxidoreductase activity').
go('oxidoreductase activity, acting on paired donors, with incorporation or reduction of molecular oxygen, NAD(P)H as one donor, and incorporation of one atom of oxygen',is_a,'oxidoreductase activity, acting on paired donors, with incorporation or reduction of molecular oxygen').
go('positive regulation of oxidoreductase activity',is_a,'positive regulation of catalytic activity').
go('oxidoreductase activity, acting on paired donors, with incorporation or reduction of molecular oxygen',is_a,'oxidoreductase activity').
go('positive regulation of catalytic activity',is_a,'positive regulation of molecular function').
go('positive regulation of catalytic activity',is_a,'regulation of catalytic activity').
go('pteridine-containing compound biosynthetic process',is_a,'biosynthetic process').
go('pteridine-containing compound biosynthetic process',is_a,'pteridine-containing compound metabolic process').
go('pteridine-containing compound metabolic process',is_a,'metabolic process').
go('regulation of blood pressure',is_a,'regulation of biological quality').
go('regulation of blood pressure',part_of,'blood circulation').
go('regulation of removal of superoxide radicals',is_a,'regulation of cellular response to oxidative stress').
go('regulation of removal of superoxide radicals',is_a,'regulation of superoxide metabolic process').
go('regulation of cellular response to oxidative stress',is_a,'regulation of response to oxidative stress').
go('regulation of superoxide metabolic process',is_a,'regulation of reactive oxygen species metabolic process').
go('regulation of response to oxidative stress',is_a,'regulation of response to stress').
go('regulation of superoxide metabolic process',regulates,'superoxide metabolic process').
go('regulation of response to oxidative stress',regulates,'response to oxidative stress').
go('superoxide metabolic process',is_a,'reactive oxygen species metabolic process').
go('response to oxidative stress',is_a,'response to stress').
go('regulation of cellular response to oxidative stress',is_a,'regulation of cellular response to stress').
go('regulation of removal of superoxide radicals',is_a,'regulation of response to reactive oxygen species').
go('regulation of response to reactive oxygen species',is_a,'regulation of response to oxidative stress').
go('regulation of response to reactive oxygen species',regulates,'response to reactive oxygen species').
go('response to reactive oxygen species',is_a,'response to oxygen-containing compound').
go('regulation of cellular response to oxidative stress',regulates,'cellular response to oxidative stress').
go('cellular response to oxidative stress',is_a,'cellular response to chemical stress').
go('response to reactive oxygen species',is_a,'response to oxidative stress').
go('cellular response to chemical stress',is_a,'cellular response to chemical stimulus').
go('cellular response to oxidative stress',is_a,'response to oxidative stress').
go('cellular response to chemical stress',is_a,'cellular response to stress').
go('regulation of removal of superoxide radicals',regulates,'removal of superoxide radicals').
go('removal of superoxide radicals',is_a,'cellular oxidant detoxification').
go('removal of superoxide radicals',is_a,'superoxide metabolic process').
go('cellular oxidant detoxification',is_a,'cellular detoxification').
go('removal of superoxide radicals',part_of,'cellular response to superoxide').
go('cellular response to superoxide',is_a,'cellular response to oxygen radical').
go('cellular response to superoxide',is_a,'response to superoxide').
go('cellular response to oxygen radical',is_a,'cellular response to reactive oxygen species').
go('response to superoxide',is_a,'response to oxygen radical').
go('cellular response to reactive oxygen species',is_a,'response to reactive oxygen species').
go('cellular response to reactive oxygen species',is_a,'cellular response to oxidative stress').
go('response to oxygen radical',is_a,'response to reactive oxygen species').
go('cellular response to reactive oxygen species',is_a,'cellular response to oxygen-containing compound').
go('cellular response to oxygen radical',is_a,'response to oxygen radical').
go('response to lipopolysaccharide',is_a,'response to oxygen-containing compound').
go('response to lipopolysaccharide',is_a,'response to molecule of bacterial origin').
go('response to lipopolysaccharide',is_a,'response to lipid').
go('response to molecule of bacterial origin',is_a,'response to external biotic stimulus').
go('response to molecule of bacterial origin',part_of,'response to bacterium').
go('response to bacterium',is_a,'response to other organism').
go('response to pain',is_a,'multicellular organismal response to stress').
go('multicellular organismal response to stress',is_a,'multicellular organismal process').
go('multicellular organismal response to stress',is_a,'response to stress').
go('response to tumor necrosis factor',is_a,'response to cytokine').
go('response to type II interferon',is_a,'response to cytokine').
go('response to type II interferon',part_of,'innate immune response').
go('tetrahydrobiopterin biosynthetic process',is_a,'pteridine-containing compound biosynthetic process').
go('tetrahydrobiopterin biosynthetic process',is_a,'tetrahydrobiopterin metabolic process').
go('tetrahydrobiopterin biosynthetic process',is_a,'diol biosynthetic process').
go('tetrahydrobiopterin metabolic process',is_a,'diol metabolic process').
go('diol metabolic process',is_a,'polyol metabolic process').
go('diol biosynthetic process',is_a,'polyol biosynthetic process').
go('polyol metabolic process',is_a,'alcohol metabolic process').
go('polyol biosynthetic process',is_a,'alcohol biosynthetic process').
go('alcohol metabolic process',is_a,'small molecule metabolic process').
go('alcohol biosynthetic process',is_a,'small molecule biosynthetic process').
go('small molecule biosynthetic process',is_a,'biosynthetic process').
go('tetrahydrobiopterin metabolic process',is_a,'pteridine-containing compound metabolic process').
go('small molecule biosynthetic process',is_a,'small molecule metabolic process').
go('diol biosynthetic process',is_a,'diol metabolic process').
go('alcohol biosynthetic process',is_a,'alcohol metabolic process').
go('polyol biosynthetic process',is_a,'polyol metabolic process').
go('tetrahydrofolate biosynthetic process',is_a,'tetrahydrofolate metabolic process').
go('tetrahydrofolate biosynthetic process',is_a,'folic acid-containing compound biosynthetic process').
go('tetrahydrofolate metabolic process',is_a,'folic acid-containing compound metabolic process').
go('folic acid-containing compound biosynthetic process',is_a,'pteridine-containing compound biosynthetic process').
go('folic acid-containing compound metabolic process',is_a,'modified amino acid metabolic process').
go('folic acid-containing compound biosynthetic process',is_a,'modified amino acid biosynthetic process').
go('modified amino acid metabolic process',is_a,'metabolic process').
go('modified amino acid biosynthetic process',is_a,'biosynthetic process').
go('folic acid-containing compound metabolic process',is_a,'pteridine-containing compound metabolic process').
go('modified amino acid biosynthetic process',is_a,'modified amino acid metabolic process').
go('folic acid-containing compound biosynthetic process',is_a,'folic acid-containing compound metabolic process').
go('neuron projection terminus',is_a,'cellular anatomical structure').
go('neuron projection terminus',part_of,'neuron projection').
leaf('GCHFR','enzyme inhibitor activity').
leaf('GCHFR','GTP cyclohydrolase binding').
fm('GTP cyclohydrolase binding').
leaf('GCHFR','regulation of nitric oxide biosynthetic process').
bp('regulation of nitric oxide biosynthetic process').
leaf('GCHFR','cytoplasm').
leaf('GCHFR','cytosol').
leaf('GCHFR','dendrite').
cc('dendrite').
leaf('GCHFR','melanosome').
cc('melanosome').
leaf('GCHFR','nuclear membrane').
leaf('GCHFR','nucleoplasm').
leaf('GCHFR','nucleus').
go('GTP cyclohydrolase binding',is_a,'enzyme binding').
go('regulation of nitric oxide biosynthetic process',is_a,'regulation of biosynthetic process').
go('regulation of nitric oxide biosynthetic process',is_a,'regulation of nitric oxide metabolic process').
go('regulation of nitric oxide metabolic process',is_a,'regulation of metabolic process').
go('regulation of nitric oxide metabolic process',regulates,'nitric oxide metabolic process').
go('regulation of nitric oxide biosynthetic process',regulates,'nitric oxide biosynthetic process').
go('dendrite',is_a,'neuron projection').
go('dendrite',part_of,'dendritic tree').
go('dendritic tree',is_a,'neuron projection').
go('dendritic tree',part_of,'somatodendritic compartment').
go('melanosome',is_a,'pigment granule').
go('pigment granule',is_a,'cytoplasmic vesicle').
leaf('GEM','calcium channel regulator activity').
fm('calcium channel regulator activity').
leaf('GEM','GDP binding').
fm('GDP binding').
leaf('GEM','GTP binding').
leaf('GEM','GTPase activity').
leaf('GEM','magnesium ion binding').
leaf('GEM','cell surface receptor signaling pathway').
leaf('GEM','chromosome organization').
bp('chromosome organization').
leaf('GEM','immune response').
bp('immune response').
leaf('GEM','metaphase chromosome alignment').
bp('metaphase chromosome alignment').
leaf('GEM','mitotic cell cycle').
bp('mitotic cell cycle').
leaf('GEM','signal transduction').
leaf('GEM','cytoplasmic side of plasma membrane').
cc('cytoplasmic side of plasma membrane').
leaf('GEM','midbody').
leaf('GEM','mitotic spindle').
cc('mitotic spindle').
leaf('GEM','nucleus').
leaf('GEM','plasma membrane').
leaf('GEM','spindle midzone').
cc('spindle midzone').
go('calcium channel regulator activity',is_a,'ion channel regulator activity').
go('ion channel regulator activity',is_a,'channel regulator activity').
go('channel regulator activity',is_a,'transporter regulator activity').
go('transporter regulator activity',is_a,'molecular function regulator activity').
go('transporter regulator activity',regulates,'transporter activity').
go('transporter activity',is_a,'molecular_function').
go('channel regulator activity',regulates,'channel activity').
go('channel activity',is_a,'passive transmembrane transporter activity').
go('passive transmembrane transporter activity',is_a,'transmembrane transporter activity').
go('transmembrane transporter activity',is_a,'transporter activity').
go('transmembrane transporter activity',part_of,'transmembrane transport').
go('transmembrane transport',is_a,'transport').
go('transmembrane transport',is_a,'cellular process').
go('ion channel regulator activity',regulates,'monoatomic ion channel activity').
go('monoatomic ion channel activity',is_a,'monoatomic ion transmembrane transporter activity').
go('monoatomic ion transmembrane transporter activity',is_a,'transmembrane transporter activity').
go('monoatomic ion transmembrane transporter activity',part_of,'monoatomic ion transmembrane transport').
go('monoatomic ion channel activity',is_a,'channel activity').
go('monoatomic ion transmembrane transport',is_a,'transmembrane transport').
go('monoatomic ion transmembrane transport',is_a,'monoatomic ion transport').
go('calcium channel regulator activity',regulates,'calcium channel activity').
go('calcium channel activity',is_a,'calcium ion transmembrane transporter activity').
go('calcium channel activity',is_a,'monoatomic cation channel activity').
go('calcium ion transmembrane transporter activity',is_a,'metal ion transmembrane transporter activity').
go('monoatomic cation channel activity',is_a,'monoatomic cation transmembrane transporter activity').
go('metal ion transmembrane transporter activity',is_a,'monoatomic cation transmembrane transporter activity').
go('monoatomic cation transmembrane transporter activity',is_a,'monoatomic ion transmembrane transporter activity').
go('metal ion transmembrane transporter activity',part_of,'metal ion transport').
go('monoatomic cation transmembrane transporter activity',part_of,'monoatomic cation transmembrane transport').
go('calcium ion transmembrane transporter activity',part_of,'calcium ion transmembrane transport').
go('monoatomic cation transmembrane transport',is_a,'monoatomic cation transport').
go('calcium ion transmembrane transport',is_a,'calcium ion transport').
go('monoatomic cation transmembrane transport',is_a,'monoatomic ion transmembrane transport').
go('calcium ion transmembrane transport',is_a,'monoatomic cation transmembrane transport').
go('monoatomic cation channel activity',is_a,'monoatomic ion channel activity').
go('GDP binding',is_a,'anion binding').
go('GDP binding',is_a,'guanyl ribonucleotide binding').
go('chromosome organization',is_a,'organelle organization').
go('metaphase chromosome alignment',is_a,'chromosome localization').
go('chromosome localization',is_a,'organelle localization').
go('organelle localization',is_a,'localization').
go('metaphase chromosome alignment',part_of,'nuclear chromosome segregation').
go('nuclear chromosome segregation',is_a,'chromosome segregation').
go('chromosome segregation',is_a,'cell cycle process').
go('cytoplasmic side of plasma membrane',is_a,'cytoplasmic side of membrane').
go('cytoplasmic side of membrane',is_a,'side of membrane').
go('side of membrane',is_a,'cellular anatomical structure').
go('side of membrane',part_of,'membrane').
go('cytoplasmic side of plasma membrane',part_of,'plasma membrane').
go('mitotic spindle',is_a,'spindle').
go('spindle',is_a,'intracellular membraneless organelle').
go('spindle',part_of,'microtubule cytoskeleton').
go('spindle midzone',is_a,'cellular anatomical structure').
go('spindle midzone',part_of,'spindle').
leaf('GFM2','GTP binding').
leaf('GFM2','GTPase activity').
leaf('GFM2','mitochondrial translation').
bp('mitochondrial translation').
leaf('GFM2','mitochondrial translational termination').
bp('mitochondrial translational termination').
leaf('GFM2','ribosome disassembly').
bp('ribosome disassembly').
leaf('GFM2','mitochondrial matrix').
leaf('GFM2','mitochondrion').
go('mitochondrial translation',is_a,'translation').
go('translation',is_a,'protein metabolic process').
go('translation',is_a,'macromolecule biosynthetic process').
go('translation',part_of,'gene expression').
go('translation',part_of,'protein biosynthetic process').
go('protein biosynthetic process',is_a,'protein metabolic process').
go('protein biosynthetic process',is_a,'macromolecule biosynthetic process').
go('protein biosynthetic process',part_of,'gene expression').
go('mitochondrial translation',part_of,'mitochondrial protein biosynthetic process').
go('mitochondrial translation',part_of,'mitochondrial gene expression').
go('mitochondrial protein biosynthetic process',is_a,'protein biosynthetic process').
go('mitochondrial gene expression',is_a,'gene expression').
go('mitochondrial protein biosynthetic process',part_of,'mitochondrial gene expression').
go('mitochondrial gene expression',occurs_in,'mitochondrion').
go('mitochondrial protein biosynthetic process',occurs_in,'mitochondrion').
go('mitochondrial translation',occurs_in,'mitochondrion').
go('mitochondrial translational termination',is_a,'translational termination').
go('translational termination',is_a,'protein-containing complex disassembly').
go('protein-containing complex disassembly',is_a,'cellular component disassembly').
go('protein-containing complex disassembly',is_a,'protein-containing complex organization').
go('cellular component disassembly',is_a,'cellular component organization').
go('translational termination',part_of,'translation').
go('mitochondrial translational termination',part_of,'mitochondrial translation').
go('mitochondrial translational termination',occurs_in,'mitochondrion').
go('ribosome disassembly',is_a,'organelle disassembly').
go('organelle disassembly',is_a,'organelle organization').
go('organelle disassembly',is_a,'cellular component disassembly').
leaf('GTPBP1','alpha-aminoacyl-tRNA binding').
fm('alpha-aminoacyl-tRNA binding').
leaf('GTPBP1','GTP binding').
leaf('GTPBP1','GTPase activity').
leaf('GTPBP1','RNA binding').
leaf('GTPBP1','translation elongation factor activity').
fm('translation elongation factor activity').
leaf('GTPBP1','tRNA binding').
fm('tRNA binding').
leaf('GTPBP1','cytoplasmic translation').
bp('cytoplasmic translation').
leaf('GTPBP1','GTP metabolic process').
bp('GTP metabolic process').
leaf('GTPBP1','immune response').
leaf('GTPBP1','positive regulation of mRNA catabolic process').
bp('positive regulation of mRNA catabolic process').
leaf('GTPBP1','RNA surveillance').
bp('RNA surveillance').
leaf('GTPBP1','signal transduction').
leaf('GTPBP1','translational elongation').
bp('translational elongation').
leaf('GTPBP1','cytoplasm').
leaf('GTPBP1','cytoplasmic exosome (RNase complex)').
cc('cytoplasmic exosome (RNase complex)').
leaf('GTPBP1','cytosol').
leaf('GTPBP1','membrane').
go('alpha-aminoacyl-tRNA binding',is_a,'RNA binding').
go('translation elongation factor activity',is_a,'translation factor activity').
go('translation factor activity',is_a,'molecular_function').
go('translation elongation factor activity',part_of,'translational elongation').
go('translational elongation',is_a,'macromolecule biosynthetic process').
go('translational elongation',part_of,'translation').
go('tRNA binding',is_a,'RNA binding').
go('cytoplasmic translation',is_a,'translation').
go('cytoplasmic translation',part_of,'cytosolic protein biosynthetic process').
go('cytosolic protein biosynthetic process',is_a,'protein biosynthetic process').
go('cytosolic protein biosynthetic process',occurs_in,'cytosol').
go('GTP metabolic process',is_a,'nucleoside triphosphate metabolic process').
go('GTP metabolic process',is_a,'purine ribonucleoside triphosphate metabolic process').
go('nucleoside triphosphate metabolic process',is_a,'phosphorus metabolic process').
go('GTP metabolic process',is_a,'purine ribonucleotide metabolic process').
go('purine ribonucleoside triphosphate metabolic process',is_a,'purine nucleoside triphosphate metabolic process').
go('purine ribonucleotide metabolic process',is_a,'purine nucleotide metabolic process').
go('purine nucleoside triphosphate metabolic process',is_a,'nucleoside phosphate metabolic process').
go('purine nucleotide metabolic process',is_a,'purine-containing compound metabolic process').
go('purine nucleotide metabolic process',is_a,'nucleotide metabolic process').
go('nucleotide metabolic process',is_a,'nucleoside phosphate metabolic process').
go('purine ribonucleotide metabolic process',is_a,'ribonucleotide metabolic process').
go('ribonucleotide metabolic process',is_a,'ribose phosphate metabolic process').
go('ribose phosphate metabolic process',is_a,'carbohydrate derivative metabolic process').
go('ribonucleotide metabolic process',is_a,'nucleotide metabolic process').
go('ribose phosphate metabolic process',is_a,'organophosphate metabolic process').
go('positive regulation of mRNA catabolic process',is_a,'positive regulation of catabolic process').
go('positive regulation of mRNA catabolic process',is_a,'positive regulation of mRNA metabolic process').
go('positive regulation of mRNA metabolic process',is_a,'regulation of mRNA metabolic process').
go('positive regulation of mRNA catabolic process',is_a,'regulation of mRNA catabolic process').
go('regulation of mRNA metabolic process',is_a,'regulation of RNA metabolic process').
go('regulation of mRNA catabolic process',is_a,'regulation of catabolic process').
go('regulation of mRNA catabolic process',is_a,'regulation of gene expression').
go('regulation of mRNA catabolic process',is_a,'regulation of mRNA metabolic process').
go('regulation of mRNA metabolic process',regulates,'mRNA metabolic process').
go('regulation of mRNA catabolic process',regulates,'mRNA catabolic process').
go('mRNA metabolic process',is_a,'RNA metabolic process').
go('mRNA catabolic process',is_a,'mRNA metabolic process').
go('mRNA catabolic process',is_a,'negative regulation of gene expression').
go('positive regulation of mRNA metabolic process',is_a,'positive regulation of RNA metabolic process').
go('negative regulation of gene expression',is_a,'negative regulation of macromolecule biosynthetic process').
go('negative regulation of macromolecule biosynthetic process',is_a,'negative regulation of biosynthetic process').
go('mRNA catabolic process',is_a,'RNA catabolic process').
go('negative regulation of biosynthetic process',is_a,'negative regulation of metabolic process').
go('RNA catabolic process',is_a,'nucleic acid catabolic process').
go('nucleic acid catabolic process',is_a,'nucleobase-containing compound catabolic process').
go('negative regulation of biosynthetic process',is_a,'regulation of biosynthetic process').
go('negative regulation of macromolecule biosynthetic process',is_a,'negative regulation of macromolecule metabolic process').
go('nucleic acid catabolic process',is_a,'nucleic acid metabolic process').
go('negative regulation of macromolecule biosynthetic process',is_a,'regulation of macromolecule biosynthetic process').
go('nucleic acid catabolic process',is_a,'macromolecule catabolic process').
go('negative regulation of gene expression',is_a,'regulation of gene expression').
go('RNA catabolic process',is_a,'RNA metabolic process').
go('RNA surveillance',is_a,'RNA catabolic process').
go('cytoplasmic exosome (RNase complex)',is_a,'exosome (RNase complex)').
go('exosome (RNase complex)',is_a,'exoribonuclease complex').
go('exoribonuclease complex',is_a,'catalytic complex').
go('exosome (RNase complex)',part_of,'intracellular anatomical structure').
go('cytoplasmic exosome (RNase complex)',part_of,'cytoplasm').
leaf('GTPBP2','alpha-aminoacyl-tRNA binding').
leaf('GTPBP2','GTP binding').
leaf('GTPBP2','GTPase activity').
leaf('GTPBP2','identical protein binding').
leaf('GTPBP2','translational elongation').
leaf('GTPBP2','extracellular region').
leaf('GTPBP2','platelet alpha granule lumen').
leaf('GTPBP3','GTP binding').
leaf('GTPBP3','GTPase activity').
leaf('GTPBP3','mitochondrial tRNA wobble uridine modification').
bp('mitochondrial tRNA wobble uridine modification').
leaf('GTPBP3','tRNA methylation').
bp('tRNA methylation').
leaf('GTPBP3','tRNA wobble uridine modification').
bp('tRNA wobble uridine modification').
leaf('GTPBP3','cytoplasm').
leaf('GTPBP3','GTPBP3-MTO1 complex').
cc('GTPBP3-MTO1 complex').
leaf('GTPBP3','mitochondrion').
leaf('GTPBP3','nucleus').
go('mitochondrial tRNA wobble uridine modification',is_a,'mitochondrial tRNA modification').
go('mitochondrial tRNA wobble uridine modification',is_a,'tRNA wobble uridine modification').
go('mitochondrial tRNA modification',is_a,'mitochondrial RNA modification').
go('tRNA wobble uridine modification',is_a,'tRNA wobble base modification').
go('mitochondrial RNA modification',is_a,'RNA modification').
go('tRNA wobble base modification',is_a,'tRNA modification').
go('RNA modification',is_a,'RNA metabolic process').
go('tRNA modification',is_a,'RNA modification').
go('RNA modification',is_a,'macromolecule modification').
go('tRNA modification',is_a,'tRNA processing').
go('tRNA processing',is_a,'RNA processing').
go('RNA processing',is_a,'primary metabolic process').
go('mitochondrial RNA modification',is_a,'mitochondrial RNA metabolic process').
go('mitochondrial RNA metabolic process',is_a,'RNA metabolic process').
go('RNA processing',part_of,'RNA biosynthetic process').
go('mitochondrial RNA metabolic process',occurs_in,'mitochondrion').
go('RNA processing',part_of,'gene expression').
go('tRNA processing',is_a,'tRNA metabolic process').
go('tRNA metabolic process',is_a,'RNA metabolic process').
go('mitochondrial tRNA modification',is_a,'tRNA modification').
go('mitochondrial RNA modification',occurs_in,'mitochondrion').
go('mitochondrial tRNA modification',is_a,'mitochondrial tRNA processing').
go('mitochondrial tRNA processing',is_a,'mitochondrial RNA processing').
go('mitochondrial RNA processing',is_a,'RNA processing').
go('mitochondrial RNA processing',is_a,'mitochondrial gene expression').
go('mitochondrial RNA processing',part_of,'mitochondrial RNA metabolic process').
go('mitochondrial RNA processing',occurs_in,'mitochondrion').
go('mitochondrial tRNA processing',is_a,'tRNA processing').
go('mitochondrial tRNA processing',is_a,'mitochondrial RNA metabolic process').
go('mitochondrial tRNA processing',occurs_in,'mitochondrion').
go('mitochondrial tRNA modification',occurs_in,'mitochondrion').
go('mitochondrial tRNA wobble uridine modification',occurs_in,'mitochondrion').
go('tRNA methylation',is_a,'tRNA modification').
go('tRNA methylation',is_a,'RNA methylation').
go('RNA methylation',is_a,'macromolecule methylation').
go('macromolecule methylation',is_a,'methylation').
go('methylation',is_a,'metabolic process').
go('macromolecule methylation',is_a,'macromolecule modification').
go('RNA methylation',is_a,'RNA modification').
go('GTPBP3-MTO1 complex',is_a,'transferase complex').
leaf('GTPBP4','GTP binding').
leaf('GTPBP4','GTPase activity').
leaf('GTPBP4','preribosome binding').
fm('preribosome binding').
leaf('GTPBP4','RNA binding').
leaf('GTPBP4','negative regulation of cell migration').
bp('negative regulation of cell migration').
leaf('GTPBP4','negative regulation of cell population proliferation').
bp('negative regulation of cell population proliferation').
leaf('GTPBP4','negative regulation of cell-cell adhesion').
bp('negative regulation of cell-cell adhesion').
leaf('GTPBP4','negative regulation of DNA replication').
bp('negative regulation of DNA replication').
leaf('GTPBP4','negative regulation of G2/M transition of mitotic cell cycle').
bp('negative regulation of G2/M transition of mitotic cell cycle').
leaf('GTPBP4','negative regulation of protein ubiquitination').
bp('negative regulation of protein ubiquitination').
leaf('GTPBP4','osteoblast differentiation').
bp('osteoblast differentiation').
leaf('GTPBP4','protein stabilization').
bp('protein stabilization').
leaf('GTPBP4','ribosomal large subunit biogenesis').
bp('ribosomal large subunit biogenesis').
leaf('GTPBP4','cytoplasm').
leaf('GTPBP4','membrane').
leaf('GTPBP4','nucleolus').
cc('nucleolus').
leaf('GTPBP4','nucleus').
leaf('GTPBP4','perinuclear region of cytoplasm').
go('preribosome binding',is_a,'ribonucleoprotein complex binding').
go('ribonucleoprotein complex binding',is_a,'protein-containing complex binding').
go('negative regulation of cell population proliferation',is_a,'regulation of cell population proliferation').
go('negative regulation of cell population proliferation',is_a,'negative regulation of cellular process').
go('negative regulation of cell-cell adhesion',is_a,'negative regulation of cell adhesion').
go('negative regulation of cell-cell adhesion',is_a,'regulation of cell-cell adhesion').
go('regulation of cell-cell adhesion',is_a,'regulation of cell adhesion').
go('regulation of cell-cell adhesion',regulates,'cell-cell adhesion').
go('negative regulation of DNA replication',is_a,'negative regulation of DNA metabolic process').
go('negative regulation of DNA replication',is_a,'regulation of DNA replication').
go('negative regulation of DNA metabolic process',is_a,'regulation of DNA metabolic process').
go('negative regulation of DNA metabolic process',is_a,'negative regulation of macromolecule metabolic process').
go('negative regulation of DNA metabolic process',is_a,'negative regulation of nucleobase-containing compound metabolic process').
go('negative regulation of nucleobase-containing compound metabolic process',is_a,'negative regulation of metabolic process').
go('negative regulation of nucleobase-containing compound metabolic process',is_a,'regulation of nucleobase-containing compound metabolic process').
go('negative regulation of G2/M transition of mitotic cell cycle',is_a,'negative regulation of cell cycle G2/M phase transition').
go('negative regulation of G2/M transition of mitotic cell cycle',is_a,'regulation of G2/M transition of mitotic cell cycle').
go('negative regulation of cell cycle G2/M phase transition',is_a,'regulation of cell cycle G2/M phase transition').
go('regulation of G2/M transition of mitotic cell cycle',is_a,'regulation of mitotic cell cycle phase transition').
go('regulation of cell cycle G2/M phase transition',is_a,'regulation of cell cycle phase transition').
go('regulation of cell cycle G2/M phase transition',regulates,'cell cycle G2/M phase transition').
go('cell cycle G2/M phase transition',is_a,'cell cycle phase transition').
go('negative regulation of cell cycle G2/M phase transition',is_a,'negative regulation of cell cycle phase transition').
go('negative regulation of cell cycle phase transition',is_a,'regulation of cell cycle phase transition').
go('negative regulation of cell cycle phase transition',is_a,'negative regulation of cell cycle process').
go('regulation of G2/M transition of mitotic cell cycle',is_a,'regulation of cell cycle G2/M phase transition').
go('negative regulation of cell cycle process',is_a,'regulation of cell cycle process').
go('regulation of G2/M transition of mitotic cell cycle',regulates,'G2/M transition of mitotic cell cycle').
go('negative regulation of cell cycle process',is_a,'negative regulation of cell cycle').
go('G2/M transition of mitotic cell cycle',is_a,'mitotic cell cycle phase transition').
go('negative regulation of cell cycle',is_a,'negative regulation of cellular process').
go('G2/M transition of mitotic cell cycle',is_a,'cell cycle G2/M phase transition').
go('negative regulation of cell cycle',is_a,'regulation of cell cycle').
go('G2/M transition of mitotic cell cycle',part_of,'mitotic cell cycle').
go('negative regulation of G2/M transition of mitotic cell cycle',is_a,'negative regulation of mitotic cell cycle phase transition').
go('negative regulation of mitotic cell cycle phase transition',is_a,'regulation of mitotic cell cycle phase transition').
go('negative regulation of mitotic cell cycle phase transition',is_a,'negative regulation of cell cycle phase transition').
go('negative regulation of mitotic cell cycle phase transition',is_a,'negative regulation of mitotic cell cycle').
go('negative regulation of mitotic cell cycle',is_a,'negative regulation of cell cycle').
go('negative regulation of mitotic cell cycle',is_a,'regulation of mitotic cell cycle').
go('negative regulation of protein ubiquitination',is_a,'negative regulation of protein modification by small protein conjugation or removal').
go('negative regulation of protein ubiquitination',is_a,'regulation of protein ubiquitination').
go('negative regulation of protein modification by small protein conjugation or removal',is_a,'negative regulation of post-translational protein modification').
go('regulation of protein ubiquitination',is_a,'regulation of protein modification by small protein conjugation or removal').
go('negative regulation of post-translational protein modification',is_a,'regulation of post-translational protein modification').
go('regulation of protein modification by small protein conjugation or removal',is_a,'regulation of post-translational protein modification').
go('regulation of post-translational protein modification',is_a,'regulation of protein modification process').
go('regulation of protein modification by small protein conjugation or removal',regulates,'protein modification by small protein conjugation or removal').
go('protein modification by small protein conjugation or removal',is_a,'post-translational protein modification').
go('post-translational protein modification',is_a,'protein modification process').
go('regulation of post-translational protein modification',regulates,'post-translational protein modification').
go('regulation of protein ubiquitination',regulates,'protein ubiquitination').
go('negative regulation of post-translational protein modification',is_a,'negative regulation of protein modification process').
go('protein ubiquitination',is_a,'protein modification by small protein conjugation').
go('negative regulation of protein modification process',is_a,'negative regulation of protein metabolic process').
go('protein modification by small protein conjugation',is_a,'protein modification by small protein conjugation or removal').
go('negative regulation of protein modification by small protein conjugation or removal',is_a,'regulation of protein modification by small protein conjugation or removal').
go('negative regulation of protein modification process',is_a,'regulation of protein modification process').
go('osteoblast differentiation',is_a,'cell differentiation').
go('osteoblast differentiation',part_of,'ossification').
go('protein stabilization',is_a,'regulation of protein stability').
go('regulation of protein stability',is_a,'regulation of biological quality').
go('ribosomal large subunit biogenesis',is_a,'ribonucleoprotein complex biogenesis').
go('ribonucleoprotein complex biogenesis',is_a,'cellular component biogenesis').
go('ribosomal large subunit biogenesis',part_of,'ribosome biogenesis').
go('ribosome biogenesis',is_a,'ribonucleoprotein complex biogenesis').
go('nucleolus',is_a,'intracellular membraneless organelle').
go('nucleolus',part_of,'nuclear lumen').
leaf('GTPBP6','GTP binding').
leaf('GTPBP6','ribosomal large subunit binding').
fm('ribosomal large subunit binding').
leaf('GTPBP6','ribosome binding').
fm('ribosome binding').
leaf('GTPBP6','mitochondrial large ribosomal subunit assembly').
bp('mitochondrial large ribosomal subunit assembly').
leaf('GTPBP6','cytoplasm').
leaf('GTPBP6','mitochondrion').
go('ribosomal large subunit binding',is_a,'ribosome binding').
go('ribosome binding',is_a,'ribonucleoprotein complex binding').
go('mitochondrial large ribosomal subunit assembly',is_a,'ribosomal large subunit assembly').
go('ribosomal large subunit assembly',is_a,'protein-RNA complex assembly').
go('protein-RNA complex assembly',is_a,'protein-containing complex assembly').
go('protein-RNA complex assembly',is_a,'protein-RNA complex organization').
go('protein-RNA complex organization',is_a,'protein-containing complex organization').
go('protein-RNA complex assembly',part_of,'ribonucleoprotein complex biogenesis').
go('ribosomal large subunit assembly',part_of,'ribosomal large subunit biogenesis').
go('ribosomal large subunit assembly',part_of,'ribosome assembly').
go('ribosome assembly',is_a,'membraneless organelle assembly').
go('membraneless organelle assembly',is_a,'organelle assembly').
go('ribosome assembly',part_of,'ribosome biogenesis').
go('mitochondrial large ribosomal subunit assembly',part_of,'mitochondrial ribosome assembly').
go('mitochondrial ribosome assembly',is_a,'ribosome assembly').
leaf('GTPBP8','GTP binding').
leaf('GTPBP8','mitochondrion').
leaf('GTPBP10','GTP binding').
leaf('GTPBP10','GTPase activity').
leaf('GTPBP10','magnesium ion binding').
leaf('GTPBP10','mitochondrial large ribosomal subunit binding').
fm('mitochondrial large ribosomal subunit binding').
leaf('GTPBP10','RNA binding').
leaf('GTPBP10','rRNA binding').
fm('rRNA binding').
leaf('GTPBP10','mitochondrial large ribosomal subunit assembly').
leaf('GTPBP10','chromosome').
cc('chromosome').
leaf('GTPBP10','mitochondrial matrix').
leaf('GTPBP10','mitochondrion').
leaf('GTPBP10','nucleolus').
go('mitochondrial large ribosomal subunit binding',is_a,'mitochondrial ribosome binding').
go('mitochondrial large ribosomal subunit binding',is_a,'ribosomal large subunit binding').
go('mitochondrial ribosome binding',is_a,'ribosome binding').
go('rRNA binding',is_a,'RNA binding').
go('chromosome',is_a,'intracellular membraneless organelle').
leaf('GUF1','GTP binding').
leaf('GUF1','GTPase activity').
leaf('GUF1','mitochondrial ribosome binding').
fm('mitochondrial ribosome binding').
leaf('GUF1','positive regulation of translation').
bp('positive regulation of translation').
leaf('GUF1','translation').
bp('translation').
leaf('GUF1','mitochondrial inner membrane').
cc('mitochondrial inner membrane').
leaf('GUF1','mitochondrial matrix').
leaf('GUF1','mitochondrion').
go('positive regulation of translation',is_a,'positive regulation of gene expression').
go('positive regulation of translation',is_a,'regulation of translation').
go('regulation of translation',is_a,'regulation of protein metabolic process').
go('positive regulation of translation',is_a,'positive regulation of protein metabolic process').
go('regulation of translation',is_a,'post-transcriptional regulation of gene expression').
go('post-transcriptional regulation of gene expression',is_a,'regulation of gene expression').
go('regulation of translation',regulates,'translation').
go('mitochondrial inner membrane',is_a,'organelle inner membrane').
go('mitochondrial inner membrane',is_a,'mitochondrial membrane').
go('organelle inner membrane',is_a,'organelle membrane').
go('mitochondrial membrane',is_a,'organelle membrane').
go('organelle inner membrane',part_of,'organelle envelope').
go('mitochondrial membrane',part_of,'mitochondrion').
go('mitochondrial membrane',part_of,'mitochondrial envelope').
go('mitochondrial envelope',is_a,'organelle envelope').
go('mitochondrial envelope',part_of,'mitochondrion').
leaf('RRAGA','GTP binding').
leaf('RRAGA','GTPase activity').
leaf('RRAGA','phosphoprotein binding').
fm('phosphoprotein binding').
leaf('RRAGA','protein heterodimerization activity').
leaf('RRAGA','protein homodimerization activity').
leaf('RRAGA','protein-membrane adaptor activity').
fm('protein-membrane adaptor activity').
leaf('RRAGA','ubiquitin protein ligase binding').
leaf('RRAGA','cellular response to amino acid starvation').
bp('cellular response to amino acid starvation').
leaf('RRAGA','cellular response to amino acid stimulus').
leaf('RRAGA','cellular response to nutrient levels').
bp('cellular response to nutrient levels').
leaf('RRAGA','cellular response to starvation').
bp('cellular response to starvation').
leaf('RRAGA','glucose homeostasis').
bp('glucose homeostasis').
leaf('RRAGA','intracellular protein localization').
bp('intracellular protein localization').
leaf('RRAGA','intracellular signal transduction').
bp('intracellular signal transduction').
leaf('RRAGA','negative regulation of autophagy').
bp('negative regulation of autophagy').
leaf('RRAGA','positive regulation of TOR signaling').
bp('positive regulation of TOR signaling').
leaf('RRAGA','positive regulation of TORC1 signaling').
bp('positive regulation of TORC1 signaling').
leaf('RRAGA','protein localization to lysosome').
bp('protein localization to lysosome').
leaf('RRAGA','protein localization to membrane').
bp('protein localization to membrane').
leaf('RRAGA','tumor necrosis factor-mediated signaling pathway').
bp('tumor necrosis factor-mediated signaling pathway').
leaf('RRAGA','cytoplasm').
leaf('RRAGA','cytosol').
leaf('RRAGA','FNIP-folliculin RagC/D GAP').
cc('FNIP-folliculin RagC/D GAP').
leaf('RRAGA','Gtr1-Gtr2 GTPase complex').
cc('Gtr1-Gtr2 GTPase complex').
leaf('RRAGA','lysosomal membrane').
leaf('RRAGA','lysosome').
cc('lysosome').
leaf('RRAGA','nucleoplasm').
leaf('RRAGA','nucleus').
go('protein-membrane adaptor activity',is_a,'protein-macromolecule adaptor activity').
go('cellular response to amino acid starvation',is_a,'response to amino acid starvation').
go('cellular response to amino acid starvation',is_a,'cellular response to starvation').
go('response to amino acid starvation',is_a,'response to starvation').
go('cellular response to starvation',is_a,'response to starvation').
go('response to starvation',is_a,'response to stress').
go('cellular response to starvation',is_a,'cellular response to stress').
go('response to starvation',is_a,'response to nutrient levels').
go('response to nutrient levels',is_a,'response to stimulus').
go('cellular response to starvation',is_a,'cellular response to nutrient levels').
go('cellular response to nutrient levels',is_a,'cellular response to stimulus').
go('cellular response to nutrient levels',is_a,'response to nutrient levels').
go('glucose homeostasis',is_a,'carbohydrate homeostasis').
go('carbohydrate homeostasis',is_a,'chemical homeostasis').
go('positive regulation of TOR signaling',is_a,'positive regulation of intracellular signal transduction').
go('positive regulation of TOR signaling',is_a,'regulation of TOR signaling').
go('regulation of TOR signaling',is_a,'regulation of intracellular signal transduction').
go('regulation of TOR signaling',regulates,'TOR signaling').
go('TOR signaling',is_a,'intracellular signal transduction').
go('positive regulation of TORC1 signaling',is_a,'positive regulation of TOR signaling').
go('positive regulation of TORC1 signaling',is_a,'regulation of TORC1 signaling').
go('regulation of TORC1 signaling',is_a,'regulation of TOR signaling').
go('regulation of TORC1 signaling',regulates,'TORC1 signaling').
go('TORC1 signaling',is_a,'TOR signaling').
go('protein localization to lysosome',is_a,'protein localization to vacuole').
go('protein localization to vacuole',is_a,'protein localization to organelle').
go('tumor necrosis factor-mediated signaling pathway',is_a,'cytokine-mediated signaling pathway').
go('tumor necrosis factor-mediated signaling pathway',part_of,'cellular response to tumor necrosis factor').
go('cellular response to tumor necrosis factor',is_a,'cellular response to cytokine stimulus').
go('cellular response to tumor necrosis factor',is_a,'response to tumor necrosis factor').
go('FNIP-folliculin RagC/D GAP',is_a,'GTPase activator complex').
go('GTPase activator complex',is_a,'enzyme activator complex').
go('enzyme activator complex',is_a,'protein-containing complex').
go('Gtr1-Gtr2 GTPase complex',is_a,'GTPase complex').
leaf('RRAGB','GTP binding').
leaf('RRAGB','GTPase activity').
leaf('RRAGB','GTPase binding').
fm('GTPase binding').
leaf('RRAGB','guanyl ribonucleotide binding').
fm('guanyl ribonucleotide binding').
leaf('RRAGB','cellular response to amino acid starvation').
leaf('RRAGB','cellular response to amino acid stimulus').
leaf('RRAGB','cellular response to leucine starvation').
bp('cellular response to leucine starvation').
leaf('RRAGB','cellular response to starvation').
leaf('RRAGB','intracellular protein localization').
leaf('RRAGB','negative regulation of autophagy').
leaf('RRAGB','positive regulation of TOR signaling').
leaf('RRAGB','positive regulation of TORC1 signaling').
leaf('RRAGB','regulation of TOR signaling').
bp('regulation of TOR signaling').
leaf('RRAGB','cytoplasm').
leaf('RRAGB','cytosol').
leaf('RRAGB','Gtr1-Gtr2 GTPase complex').
leaf('RRAGB','lysosomal membrane').
leaf('RRAGB','lysosome').
leaf('RRAGB','nucleus').
go('cellular response to leucine starvation',is_a,'cellular response to amino acid starvation').
leaf('RRAGC','enzyme-substrate adaptor activity').
fm('enzyme-substrate adaptor activity').
leaf('RRAGC','GDP binding').
leaf('RRAGC','GTP binding').
leaf('RRAGC','GTPase activity').
leaf('RRAGC','GTPase binding').
leaf('RRAGC','magnesium ion binding').
leaf('RRAGC','molecular adaptor activity').
fm('molecular adaptor activity').
leaf('RRAGC','protein heterodimerization activity').
leaf('RRAGC','protein-membrane adaptor activity').
leaf('RRAGC','apoptotic process').
bp('apoptotic process').
leaf('RRAGC','cellular response to amino acid starvation').
leaf('RRAGC','cellular response to amino acid stimulus').
leaf('RRAGC','cellular response to nutrient levels').
leaf('RRAGC','cellular response to starvation').
leaf('RRAGC','DNA-templated transcription').
bp('DNA-templated transcription').
leaf('RRAGC','intracellular protein localization').
leaf('RRAGC','negative regulation of autophagy').
leaf('RRAGC','positive regulation of TORC1 signaling').
leaf('RRAGC','protein localization to lysosome').
leaf('RRAGC','protein localization to membrane').
leaf('RRAGC','regulation of TOR signaling').
leaf('RRAGC','regulation of TORC1 signaling').
bp('regulation of TORC1 signaling').
leaf('RRAGC','response to amino acid').
bp('response to amino acid').
leaf('RRAGC','RNA splicing').
bp('RNA splicing').
leaf('RRAGC','small GTPase-mediated signal transduction').
leaf('RRAGC','cytoplasm').
leaf('RRAGC','cytosol').
leaf('RRAGC','FNIP-folliculin RagC/D GAP').
leaf('RRAGC','Gtr1-Gtr2 GTPase complex').
leaf('RRAGC','lysosomal membrane').
leaf('RRAGC','lysosome').
leaf('RRAGC','nucleoplasm').
leaf('RRAGC','nucleus').
go('enzyme-substrate adaptor activity',is_a,'protein-macromolecule adaptor activity').
go('RNA splicing',is_a,'RNA processing').
leaf('RRAGD','GDP binding').
leaf('RRAGD','GTP binding').
leaf('RRAGD','GTPase activity').
leaf('RRAGD','GTPase binding').
leaf('RRAGD','molecular adaptor activity').
leaf('RRAGD','protein heterodimerization activity').
leaf('RRAGD','cellular response to amino acid stimulus').
leaf('RRAGD','cellular response to L-leucine').
bp('cellular response to L-leucine').
leaf('RRAGD','cellular response to leucine starvation').
leaf('RRAGD','cellular response to starvation').
leaf('RRAGD','intracellular protein localization').
leaf('RRAGD','negative regulation of autophagy').
leaf('RRAGD','positive regulation of TOR signaling').
leaf('RRAGD','positive regulation of TORC1 signaling').
leaf('RRAGD','cytoplasm').
leaf('RRAGD','cytosol').
leaf('RRAGD','Gtr1-Gtr2 GTPase complex').
leaf('RRAGD','lysosomal membrane').
leaf('RRAGD','lysosome').
leaf('RRAGD','nucleoplasm').
leaf('RRAGD','nucleus').
go('cellular response to L-leucine',is_a,'cellular response to amino acid stimulus').
go('cellular response to L-leucine',is_a,'cellular response to oxygen-containing compound').
go('cellular response to L-leucine',is_a,'response to L-leucine').
go('cellular response to L-leucine',is_a,'cellular response to nitrogen compound').
go('response to L-leucine',is_a,'response to nitrogen compound').
go('response to L-leucine',is_a,'response to oxygen-containing compound').
go('response to L-leucine',is_a,'response to amino acid').
leaf('DRG1','GTP binding').
leaf('DRG1','GTPase activity').
leaf('DRG1','identical protein binding').
leaf('DRG1','microtubule binding').
fm('microtubule binding').
leaf('DRG1','potassium ion binding').
fm('potassium ion binding').
leaf('DRG1','cytoplasmic translation').
leaf('DRG1','positive regulation of microtubule polymerization').
bp('positive regulation of microtubule polymerization').
leaf('DRG1','regulation of mitotic spindle assembly').
bp('regulation of mitotic spindle assembly').
leaf('DRG1','cytoplasm').
leaf('DRG1','cytosol').
leaf('DRG1','membrane').
leaf('DRG1','nuclear body').
cc('nuclear body').
leaf('DRG1','nucleoplasm').
leaf('DRG1','nucleus').
go('microtubule binding',is_a,'tubulin binding').
go('potassium ion binding',is_a,'alkali metal ion binding').
go('alkali metal ion binding',is_a,'metal ion binding').
go('positive regulation of microtubule polymerization',is_a,'positive regulation of protein polymerization').
go('positive regulation of microtubule polymerization',is_a,'regulation of microtubule polymerization').
go('regulation of microtubule polymerization',is_a,'regulation of protein polymerization').
go('positive regulation of protein polymerization',is_a,'regulation of protein polymerization').
go('regulation of protein polymerization',is_a,'regulation of protein-containing complex assembly').
go('positive regulation of protein polymerization',is_a,'positive regulation of protein-containing complex assembly').
go('positive regulation of protein-containing complex assembly',is_a,'regulation of protein-containing complex assembly').
go('regulation of protein-containing complex assembly',is_a,'regulation of cellular component organization').
go('positive regulation of protein-containing complex assembly',is_a,'positive regulation of cellular component organization').
go('regulation of protein-containing complex assembly',is_a,'regulation of cellular component biogenesis').
go('positive regulation of protein-containing complex assembly',is_a,'positive regulation of cellular component biogenesis').
go('positive regulation of cellular component biogenesis',is_a,'positive regulation of cellular process').
go('positive regulation of cellular component biogenesis',is_a,'regulation of cellular component biogenesis').
go('regulation of protein-containing complex assembly',regulates,'protein-containing complex assembly').
go('positive regulation of microtubule polymerization',is_a,'positive regulation of supramolecular fiber organization').
go('positive regulation of supramolecular fiber organization',is_a,'positive regulation of cellular component organization').
go('positive regulation of supramolecular fiber organization',is_a,'regulation of supramolecular fiber organization').
go('regulation of protein polymerization',regulates,'protein polymerization').
go('regulation of supramolecular fiber organization',is_a,'regulation of cellular component organization').
go('protein polymerization',is_a,'protein-containing complex assembly').
go('regulation of supramolecular fiber organization',regulates,'supramolecular fiber organization').
go('regulation of microtubule polymerization',is_a,'regulation of supramolecular fiber organization').
go('regulation of microtubule polymerization',is_a,'regulation of microtubule polymerization or depolymerization').
go('positive regulation of microtubule polymerization',is_a,'positive regulation of microtubule polymerization or depolymerization').
go('regulation of microtubule polymerization or depolymerization',is_a,'regulation of microtubule cytoskeleton organization').
go('positive regulation of microtubule polymerization or depolymerization',is_a,'positive regulation of cytoskeleton organization').
go('regulation of microtubule cytoskeleton organization',is_a,'regulation of microtubule-based process').
go('positive regulation of cytoskeleton organization',is_a,'positive regulation of organelle organization').
go('regulation of microtubule-based process',is_a,'regulation of cellular process').
go('regulation of microtubule-based process',regulates,'microtubule-based process').
go('microtubule-based process',is_a,'cellular process').
go('positive regulation of cytoskeleton organization',is_a,'regulation of cytoskeleton organization').
go('regulation of microtubule cytoskeleton organization',is_a,'regulation of cytoskeleton organization').
go('regulation of cytoskeleton organization',is_a,'regulation of organelle organization').
go('regulation of microtubule cytoskeleton organization',regulates,'microtubule cytoskeleton organization').
go('regulation of cytoskeleton organization',regulates,'cytoskeleton organization').
go('microtubule cytoskeleton organization',is_a,'microtubule-based process').
go('microtubule cytoskeleton organization',is_a,'cytoskeleton organization').
go('positive regulation of microtubule polymerization or depolymerization',is_a,'regulation of microtubule polymerization or depolymerization').
go('regulation of microtubule polymerization or depolymerization',regulates,'microtubule polymerization or depolymerization').
go('microtubule polymerization or depolymerization',is_a,'microtubule cytoskeleton organization').
go('regulation of microtubule polymerization',regulates,'microtubule polymerization').
go('microtubule polymerization',is_a,'protein polymerization').
go('microtubule polymerization',is_a,'supramolecular fiber organization').
go('microtubule polymerization',is_a,'microtubule polymerization or depolymerization').
go('regulation of mitotic spindle assembly',is_a,'regulation of mitotic spindle organization').
go('regulation of mitotic spindle assembly',is_a,'regulation of spindle assembly').
go('regulation of spindle assembly',is_a,'regulation of organelle assembly').
go('regulation of mitotic spindle organization',is_a,'regulation of spindle organization').
go('regulation of spindle assembly',is_a,'regulation of spindle organization').
go('regulation of spindle organization',is_a,'regulation of microtubule cytoskeleton organization').
go('regulation of spindle assembly',regulates,'spindle assembly').
go('regulation of spindle organization',is_a,'regulation of cell cycle process').
go('spindle assembly',is_a,'membraneless organelle assembly').
go('spindle assembly',is_a,'spindle organization').
go('regulation of spindle organization',regulates,'spindle organization').
go('spindle organization',is_a,'cell cycle process').
go('regulation of mitotic spindle organization',regulates,'mitotic spindle organization').
go('spindle organization',is_a,'microtubule cytoskeleton organization').
go('mitotic spindle organization',is_a,'microtubule cytoskeleton organization involved in mitosis').
go('spindle assembly',part_of,'chromosome segregation').
go('microtubule cytoskeleton organization involved in mitosis',is_a,'microtubule cytoskeleton organization').
go('mitotic spindle organization',is_a,'spindle organization').
go('microtubule cytoskeleton organization involved in mitosis',is_a,'mitotic cell cycle process').
go('microtubule cytoskeleton organization involved in mitosis',part_of,'mitotic cell cycle').
go('mitotic spindle organization',part_of,'mitotic cell cycle').
go('regulation of mitotic spindle assembly',regulates,'mitotic spindle assembly').
go('mitotic spindle assembly',is_a,'mitotic spindle organization').
go('mitotic spindle assembly',is_a,'spindle assembly').
go('mitotic spindle assembly',part_of,'mitotic nuclear division').
go('mitotic spindle assembly',part_of,'mitotic sister chromatid segregation').
go('mitotic sister chromatid segregation',is_a,'mitotic cell cycle process').
go('mitotic sister chromatid segregation',is_a,'sister chromatid segregation').
go('sister chromatid segregation',is_a,'nuclear chromosome segregation').
go('sister chromatid segregation',is_a,'chromosome organization').
go('mitotic sister chromatid segregation',part_of,'mitotic nuclear division').
go('nuclear body',is_a,'intracellular membraneless organelle').
go('nuclear body',part_of,'nucleoplasm').
leaf('DRG2','GTP binding').
leaf('DRG2','GTPase activity').
leaf('DRG2','RNA binding').
leaf('DRG2','cytoplasmic translation').
leaf('DRG2','signal transduction').
leaf('DRG2','cytoplasm').
leaf('DRG2','cytosol').
leaf('DRG2','membrane').
leaf('DRG2','nucleus').
leaf('EFTUD2','GTP binding').
leaf('EFTUD2','GTPase activity').
leaf('EFTUD2','RNA binding').
leaf('EFTUD2','U5 snRNA binding').
fm('U5 snRNA binding').
leaf('EFTUD2','cellular response to xenobiotic stimulus').
bp('cellular response to xenobiotic stimulus').
leaf('EFTUD2','mRNA splicing, via spliceosome').
bp('mRNA splicing, via spliceosome').
leaf('EFTUD2','negative regulation of mRNA splicing, via spliceosome').
bp('negative regulation of mRNA splicing, via spliceosome').
leaf('EFTUD2','response to cocaine').
bp('response to cocaine').
leaf('EFTUD2','spliceosomal snRNP assembly').
bp('spliceosomal snRNP assembly').
leaf('EFTUD2','spliceosomal tri-snRNP complex assembly').
bp('spliceosomal tri-snRNP complex assembly').
leaf('EFTUD2','spliceosome conformational change to release U4 (or U4atac) and U1 (or U11)').
bp('spliceosome conformational change to release U4 (or U4atac) and U1 (or U11)').
leaf('EFTUD2','Cajal body').
cc('Cajal body').
leaf('EFTUD2','catalytic step 2 spliceosome').
cc('catalytic step 2 spliceosome').
leaf('EFTUD2','cytosol').
leaf('EFTUD2','membrane').
leaf('EFTUD2','nuclear speck').
cc('nuclear speck').
leaf('EFTUD2','nucleoplasm').
leaf('EFTUD2','nucleus').
leaf('EFTUD2','post-mRNA release spliceosomal complex').
cc('post-mRNA release spliceosomal complex').
leaf('EFTUD2','post-spliceosomal complex').
cc('post-spliceosomal complex').
leaf('EFTUD2','precatalytic spliceosome').
cc('precatalytic spliceosome').
leaf('EFTUD2','spliceosomal complex').
cc('spliceosomal complex').
leaf('EFTUD2','U12-type catalytic step 2 spliceosome').
cc('U12-type catalytic step 2 spliceosome').
leaf('EFTUD2','U12-type precatalytic spliceosome').
cc('U12-type precatalytic spliceosome').
leaf('EFTUD2','U2-type catalytic step 1 spliceosome').
cc('U2-type catalytic step 1 spliceosome').
leaf('EFTUD2','U2-type catalytic step 2 spliceosome').
cc('U2-type catalytic step 2 spliceosome').
leaf('EFTUD2','U2-type precatalytic spliceosome').
cc('U2-type precatalytic spliceosome').
leaf('EFTUD2','U4/U6 x U5 tri-snRNP complex').
cc('U4/U6 x U5 tri-snRNP complex').
leaf('EFTUD2','U4atac/U6atac x U5 tri-snRNP complex').
cc('U4atac/U6atac x U5 tri-snRNP complex').
leaf('EFTUD2','U5 snRNP').
cc('U5 snRNP').
go('U5 snRNA binding',is_a,'snRNA binding').
go('snRNA binding',is_a,'RNA binding').
go('cellular response to xenobiotic stimulus',is_a,'cellular response to chemical stimulus').
go('cellular response to xenobiotic stimulus',is_a,'response to xenobiotic stimulus').
go('response to xenobiotic stimulus',is_a,'response to chemical').
go('mRNA splicing, via spliceosome',is_a,'mRNA processing').
go('mRNA splicing, via spliceosome',is_a,'RNA splicing, via transesterification reactions with bulged adenosine as nucleophile').
go('RNA splicing, via transesterification reactions with bulged adenosine as nucleophile',is_a,'RNA splicing, via transesterification reactions').
go('mRNA processing',is_a,'mRNA metabolic process').
go('RNA splicing, via transesterification reactions',is_a,'RNA splicing').
go('mRNA processing',is_a,'RNA processing').
go('negative regulation of mRNA splicing, via spliceosome',is_a,'regulation of mRNA splicing, via spliceosome').
go('negative regulation of mRNA splicing, via spliceosome',is_a,'negative regulation of mRNA processing').
go('regulation of mRNA splicing, via spliceosome',is_a,'regulation of RNA splicing').
go('negative regulation of mRNA processing',is_a,'negative regulation of mRNA metabolic process').
go('regulation of RNA splicing',is_a,'regulation of primary metabolic process').
go('negative regulation of mRNA metabolic process',is_a,'regulation of mRNA metabolic process').
go('regulation of RNA splicing',is_a,'regulation of gene expression').
go('regulation of RNA splicing',regulates,'RNA splicing').
go('regulation of mRNA splicing, via spliceosome',is_a,'regulation of mRNA processing').
go('negative regulation of mRNA metabolic process',is_a,'negative regulation of RNA metabolic process').
go('regulation of mRNA processing',is_a,'regulation of mRNA metabolic process').
go('negative regulation of RNA metabolic process',is_a,'regulation of RNA metabolic process').
go('regulation of mRNA processing',regulates,'mRNA processing').
go('negative regulation of RNA metabolic process',is_a,'negative regulation of macromolecule metabolic process').
go('regulation of mRNA splicing, via spliceosome',regulates,'mRNA splicing, via spliceosome').
go('negative regulation of mRNA splicing, via spliceosome',is_a,'negative regulation of RNA splicing').
go('negative regulation of RNA splicing',is_a,'regulation of RNA splicing').
go('negative regulation of RNA metabolic process',is_a,'negative regulation of nucleobase-containing compound metabolic process').
go('negative regulation of RNA splicing',is_a,'negative regulation of gene expression').
go('negative regulation of mRNA processing',is_a,'regulation of mRNA processing').
go('response to cocaine',is_a,'response to alkaloid').
go('response to cocaine',is_a,'response to oxygen-containing compound').
go('response to alkaloid',is_a,'response to nitrogen compound').
go('spliceosomal snRNP assembly',is_a,'protein-RNA complex assembly').
go('spliceosomal snRNP assembly',part_of,'mRNA splicing, via spliceosome').
go('spliceosomal tri-snRNP complex assembly',is_a,'spliceosomal snRNP assembly').
go('spliceosome conformational change to release U4 (or U4atac) and U1 (or U11)',is_a,'protein-RNA complex assembly').
go('spliceosome conformational change to release U4 (or U4atac) and U1 (or U11)',part_of,'spliceosomal conformational changes to generate catalytic conformation').
go('spliceosomal conformational changes to generate catalytic conformation',is_a,'protein-RNA complex assembly').
go('spliceosomal conformational changes to generate catalytic conformation',part_of,'mRNA splicing, via spliceosome').
go('Cajal body',is_a,'nuclear ribonucleoprotein granule').
go('nuclear ribonucleoprotein granule',is_a,'ribonucleoprotein granule').
go('nuclear ribonucleoprotein granule',is_a,'nuclear body').
go('ribonucleoprotein granule',is_a,'intracellular membraneless organelle').
go('ribonucleoprotein granule',is_a,'supramolecular complex').
go('supramolecular complex',is_a,'cellular anatomical structure').
go('nuclear ribonucleoprotein granule',part_of,'nucleoplasm').
go('catalytic step 2 spliceosome',is_a,'catalytic complex').
go('catalytic step 2 spliceosome',is_a,'spliceosomal complex').
go('spliceosomal complex',is_a,'ribonucleoprotein complex').
go('ribonucleoprotein complex',is_a,'protein-containing complex').
go('spliceosomal complex',is_a,'nuclear protein-containing complex').
go('nuclear speck',is_a,'nuclear ribonucleoprotein granule').
go('post-mRNA release spliceosomal complex',is_a,'spliceosomal complex').
go('post-spliceosomal complex',is_a,'spliceosomal complex').
go('precatalytic spliceosome',is_a,'spliceosomal complex').
go('U12-type catalytic step 2 spliceosome',is_a,'catalytic step 2 spliceosome').
go('U12-type catalytic step 2 spliceosome',is_a,'U12-type spliceosomal complex').
go('U12-type spliceosomal complex',is_a,'spliceosomal complex').
go('U12-type precatalytic spliceosome',is_a,'precatalytic spliceosome').
go('U12-type precatalytic spliceosome',is_a,'U12-type spliceosomal complex').
go('U2-type catalytic step 1 spliceosome',is_a,'catalytic step 1 spliceosome').
go('U2-type catalytic step 1 spliceosome',is_a,'U2-type spliceosomal complex').
go('catalytic step 1 spliceosome',is_a,'catalytic complex').
go('U2-type spliceosomal complex',is_a,'spliceosomal complex').
go('catalytic step 1 spliceosome',is_a,'spliceosomal complex').
go('U2-type catalytic step 2 spliceosome',is_a,'catalytic step 2 spliceosome').
go('U2-type catalytic step 2 spliceosome',is_a,'U2-type spliceosomal complex').
go('U2-type precatalytic spliceosome',is_a,'U2-type spliceosomal complex').
go('U2-type precatalytic spliceosome',is_a,'precatalytic spliceosome').
go('U4/U6 x U5 tri-snRNP complex',is_a,'spliceosomal tri-snRNP complex').
go('spliceosomal tri-snRNP complex',is_a,'spliceosomal snRNP complex').
go('spliceosomal snRNP complex',is_a,'small nuclear ribonucleoprotein complex').
go('small nuclear ribonucleoprotein complex',is_a,'ribonucleoprotein complex').
go('small nuclear ribonucleoprotein complex',is_a,'nuclear protein-containing complex').
go('small nuclear ribonucleoprotein complex',is_a,'Sm-like protein family complex').
go('Sm-like protein family complex',is_a,'protein-containing complex').
go('U4atac/U6atac x U5 tri-snRNP complex',is_a,'spliceosomal tri-snRNP complex').
go('U5 snRNP',is_a,'spliceosomal snRNP complex').
leaf('ARAF','ATP binding').
leaf('ARAF','MAP kinase kinase kinase activity').
leaf('ARAF','protein kinase activity').
fm('protein kinase activity').
leaf('ARAF','protein serine kinase activity').
fm('protein serine kinase activity').
leaf('ARAF','protein serine/threonine kinase activity').
fm('protein serine/threonine kinase activity').
leaf('ARAF','MAPK cascade').
bp('MAPK cascade').
leaf('ARAF','negative regulation of apoptotic process').
leaf('ARAF','positive regulation of peptidyl-serine phosphorylation').
leaf('ARAF','protein modification process').
bp('protein modification process').
leaf('ARAF','regulation of proteasomal ubiquitin-dependent protein catabolic process').
bp('regulation of proteasomal ubiquitin-dependent protein catabolic process').
leaf('ARAF','regulation of TOR signaling').
leaf('ARAF','cytoplasm').
leaf('ARAF','cytosol').
leaf('ARAF','mitochondrion').
leaf('ARAF','plasma membrane').
go('protein serine kinase activity',is_a,'protein kinase activity').
go('regulation of proteasomal ubiquitin-dependent protein catabolic process',is_a,'regulation of proteasomal protein catabolic process').
go('regulation of proteasomal ubiquitin-dependent protein catabolic process',is_a,'regulation of ubiquitin-dependent protein catabolic process').
go('regulation of proteasomal protein catabolic process',is_a,'regulation of protein catabolic process').
go('regulation of proteasomal protein catabolic process',regulates,'proteasomal protein catabolic process').
go('proteasomal protein catabolic process',is_a,'protein catabolic process').
go('regulation of proteasomal ubiquitin-dependent protein catabolic process',regulates,'proteasome-mediated ubiquitin-dependent protein catabolic process').
go('proteasome-mediated ubiquitin-dependent protein catabolic process',is_a,'proteasomal protein catabolic process').
go('proteasome-mediated ubiquitin-dependent protein catabolic process',is_a,'ubiquitin-dependent protein catabolic process').
leaf('BRAF','ATP binding').
leaf('BRAF','calcium ion binding').
leaf('BRAF','identical protein binding').
leaf('BRAF','MAP kinase kinase activity').
fm('MAP kinase kinase activity').
leaf('BRAF','MAP kinase kinase kinase activity').
leaf('BRAF','protein kinase activity').
leaf('BRAF','protein serine kinase activity').
leaf('BRAF','protein serine/threonine kinase activity').
leaf('BRAF','scaffold protein binding').
fm('scaffold protein binding').
leaf('BRAF','animal organ morphogenesis').
bp('animal organ morphogenesis').
leaf('BRAF','cellular response to calcium ion').
bp('cellular response to calcium ion').
leaf('BRAF','epidermal growth factor receptor signaling pathway').
leaf('BRAF','establishment of protein localization to membrane').
bp('establishment of protein localization to membrane').
leaf('BRAF','MAPK cascade').
leaf('BRAF','negative regulation of apoptotic process').
leaf('BRAF','positive regulation of D-glucose transmembrane transport').
bp('positive regulation of D-glucose transmembrane transport').
leaf('BRAF','positive regulation of ERK1 and ERK2 cascade').
leaf('BRAF','positive regulation of gene expression').
leaf('BRAF','positive regulation of peptidyl-serine phosphorylation').
leaf('BRAF','postsynaptic modulation of chemical synaptic transmission').
bp('postsynaptic modulation of chemical synaptic transmission').
leaf('BRAF','protein phosphorylation').
bp('protein phosphorylation').
leaf('BRAF','cell body').
cc('cell body').
leaf('BRAF','cytoplasm').
leaf('BRAF','cytosol').
leaf('BRAF','glutamatergic synapse').
leaf('BRAF','mitochondrion').
leaf('BRAF','neuron projection').
cc('neuron projection').
leaf('BRAF','nucleus').
leaf('BRAF','plasma membrane').
leaf('BRAF','postsynapse').
cc('postsynapse').
go('MAP kinase kinase activity',is_a,'protein serine/threonine/tyrosine kinase activity').
go('protein serine/threonine/tyrosine kinase activity',is_a,'protein kinase activity').
go('MAP kinase kinase activity',part_of,'MAPK cascade').
go('scaffold protein binding',is_a,'protein binding').
go('cellular response to calcium ion',is_a,'cellular response to metal ion').
go('cellular response to calcium ion',is_a,'response to calcium ion').
go('cellular response to metal ion',is_a,'cellular response to chemical stimulus').
go('cellular response to metal ion',is_a,'response to metal ion').
go('positive regulation of D-glucose transmembrane transport',is_a,'regulation of D-glucose transmembrane transport').
go('positive regulation of D-glucose transmembrane transport',is_a,'positive regulation of transmembrane transport').
go('regulation of D-glucose transmembrane transport',is_a,'regulation of transmembrane transport').
go('positive regulation of transmembrane transport',is_a,'regulation of transmembrane transport').
go('regulation of transmembrane transport',is_a,'regulation of cellular process').
go('positive regulation of transmembrane transport',is_a,'positive regulation of cellular process').
go('regulation of transmembrane transport',is_a,'regulation of transport').
go('positive regulation of transmembrane transport',is_a,'positive regulation of transport').
go('regulation of transmembrane transport',regulates,'transmembrane transport').
go('regulation of D-glucose transmembrane transport',regulates,'D-glucose transmembrane transport').
go('D-glucose transmembrane transport',is_a,'hexose transmembrane transport').
go('hexose transmembrane transport',is_a,'monosaccharide transmembrane transport').
go('monosaccharide transmembrane transport',is_a,'carbohydrate transmembrane transport').
go('carbohydrate transmembrane transport',is_a,'carbohydrate transport').
go('carbohydrate transmembrane transport',is_a,'transmembrane transport').
go('carbohydrate transport',is_a,'transport').
go('postsynaptic modulation of chemical synaptic transmission',is_a,'modulation of chemical synaptic transmission').
go('modulation of chemical synaptic transmission',is_a,'regulation of trans-synaptic signaling').
go('regulation of trans-synaptic signaling',is_a,'regulation of signaling').
go('regulation of trans-synaptic signaling',is_a,'regulation of cell communication').
go('regulation of trans-synaptic signaling',regulates,'trans-synaptic signaling').
go('trans-synaptic signaling',is_a,'synaptic signaling').
go('synaptic signaling',is_a,'cell-cell signaling').
go('cell-cell signaling',is_a,'signaling').
go('cell-cell signaling',is_a,'cell communication').
go('synaptic signaling',occurs_in,'synapse').
go('modulation of chemical synaptic transmission',regulates,'chemical synaptic transmission').
go('chemical synaptic transmission',is_a,'anterograde trans-synaptic signaling').
go('anterograde trans-synaptic signaling',is_a,'trans-synaptic signaling').
go('postsynaptic modulation of chemical synaptic transmission',occurs_in,'postsynapse').
leaf('RAF1','adenylate cyclase activator activity').
fm('adenylate cyclase activator activity').
leaf('RAF1','ATP binding').
leaf('RAF1','enzyme binding').
leaf('RAF1','identical protein binding').
leaf('RAF1','MAP kinase kinase kinase activity').
leaf('RAF1','protein kinase activity').
leaf('RAF1','protein serine kinase activity').
leaf('RAF1','protein serine/threonine kinase activity').
leaf('RAF1','apoptotic process').
leaf('RAF1','ERBB2-ERBB3 signaling pathway').
bp('ERBB2-ERBB3 signaling pathway').
leaf('RAF1','insulin receptor signaling pathway').
leaf('RAF1','insulin-like growth factor receptor signaling pathway').
leaf('RAF1','MAPK cascade').
leaf('RAF1','myelination').
leaf('RAF1','negative regulation of apoptotic process').
leaf('RAF1','negative regulation of cell population proliferation').
leaf('RAF1','negative regulation of protein-containing complex assembly').
bp('negative regulation of protein-containing complex assembly').
leaf('RAF1','neuromuscular junction development').
bp('neuromuscular junction development').
leaf('RAF1','positive regulation of MAPK cascade').
leaf('RAF1','positive regulation of peptidyl-serine phosphorylation').
leaf('RAF1','protein phosphorylation').
leaf('RAF1','regulation of apoptotic process').
bp('regulation of apoptotic process').
leaf('RAF1','regulation of cell differentiation').
bp('regulation of cell differentiation').
leaf('RAF1','regulation of Rho protein signal transduction').
leaf('RAF1','Schwann cell development').
leaf('RAF1','signal transduction').
leaf('RAF1','type II interferon-mediated signaling pathway').
bp('type II interferon-mediated signaling pathway').
leaf('RAF1','wound healing').
bp('wound healing').
leaf('RAF1','cytoplasm').
leaf('RAF1','cytosol').
leaf('RAF1','Golgi apparatus').
leaf('RAF1','mitochondrial outer membrane').
cc('mitochondrial outer membrane').
leaf('RAF1','mitochondrion').
leaf('RAF1','nucleus').
leaf('RAF1','plasma membrane').
leaf('RAF1','pseudopodium').
cc('pseudopodium').
leaf('RAF1','serine/threonine protein kinase complex').
cc('serine/threonine protein kinase complex').
go('adenylate cyclase activator activity',is_a,'adenylate cyclase regulator activity').
go('adenylate cyclase activator activity',is_a,'cyclase activator activity').
go('cyclase activator activity',is_a,'enzyme activator activity').
go('adenylate cyclase regulator activity',is_a,'cyclase regulator activity').
go('cyclase regulator activity',is_a,'enzyme regulator activity').
go('cyclase regulator activity',regulates,'cyclase activity').
go('cyclase activator activity',is_a,'cyclase regulator activity').
go('cyclase activity',is_a,'catalytic activity').
go('adenylate cyclase regulator activity',regulates,'adenylate cyclase activity').
go('adenylate cyclase activity',is_a,'cyclase activity').
go('adenylate cyclase activity',is_a,'phosphorus-oxygen lyase activity').
go('phosphorus-oxygen lyase activity',is_a,'lyase activity').
go('ERBB2-ERBB3 signaling pathway',is_a,'ERBB3 signaling pathway').
go('ERBB2-ERBB3 signaling pathway',is_a,'ERBB2 signaling pathway').
go('ERBB3 signaling pathway',is_a,'ERBB signaling pathway').
go('negative regulation of protein-containing complex assembly',is_a,'negative regulation of cellular component organization').
go('negative regulation of protein-containing complex assembly',is_a,'regulation of protein-containing complex assembly').
go('neuromuscular junction development',is_a,'synapse organization').
go('synapse organization',is_a,'cell junction organization').
go('cell junction organization',is_a,'cellular component organization').
go('type II interferon-mediated signaling pathway',is_a,'interferon-mediated signaling pathway').
go('interferon-mediated signaling pathway',is_a,'cytokine-mediated signaling pathway').
go('type II interferon-mediated signaling pathway',part_of,'cellular response to type II interferon').
go('cellular response to type II interferon',is_a,'response to type II interferon').
go('cellular response to type II interferon',is_a,'cellular response to cytokine stimulus').
go('wound healing',is_a,'response to wounding').
go('response to wounding',is_a,'response to stress').
go('mitochondrial outer membrane',is_a,'organelle outer membrane').
go('mitochondrial outer membrane',is_a,'mitochondrial membrane').
go('organelle outer membrane',is_a,'bounding membrane of organelle').
go('organelle outer membrane',is_a,'outer membrane').
go('outer membrane',is_a,'membrane').
go('organelle outer membrane',part_of,'organelle').
go('organelle outer membrane',part_of,'organelle envelope').
go('mitochondrial outer membrane',part_of,'mitochondrion').
go('pseudopodium',is_a,'plasma membrane bounded cell projection').
go('serine/threonine protein kinase complex',is_a,'protein kinase complex').
go('protein kinase complex',is_a,'transferase complex, transferring phosphorus-containing groups').
leaf('LAMTOR3','kinase activator activity').
fm('kinase activator activity').
leaf('LAMTOR3','cellular response to amino acid stimulus').
leaf('LAMTOR3','cellular response to nutrient levels').
leaf('LAMTOR3','intracellular protein localization').
leaf('LAMTOR3','positive regulation of TOR signaling').
leaf('LAMTOR3','positive regulation of TORC1 signaling').
leaf('LAMTOR3','TORC1 signaling').
bp('TORC1 signaling').
leaf('LAMTOR3','endosome membrane').
leaf('LAMTOR3','extracellular exosome').
leaf('LAMTOR3','FNIP-folliculin RagC/D GAP').
leaf('LAMTOR3','focal adhesion').
leaf('LAMTOR3','late endosome membrane').
cc('late endosome membrane').
leaf('LAMTOR3','lysosomal membrane').
leaf('LAMTOR3','plasma membrane').
leaf('LAMTOR3','Ragulator complex').
cc('Ragulator complex').
leaf('LAMTOR3','specific granule membrane').
cc('specific granule membrane').
leaf('LAMTOR3','tertiary granule membrane').
cc('tertiary granule membrane').
go('late endosome membrane',is_a,'endosome membrane').
go('late endosome membrane',part_of,'late endosome').
go('Ragulator complex',is_a,'guanyl-nucleotide exchange factor complex').
go('Ragulator complex',is_a,'membrane protein complex').
go('guanyl-nucleotide exchange factor complex',is_a,'intracellular protein-containing complex').
go('intracellular protein-containing complex',is_a,'protein-containing complex').
go('Ragulator complex',part_of,'vacuolar membrane').
go('specific granule membrane',is_a,'secretory granule membrane').
go('secretory granule membrane',is_a,'bounding membrane of organelle').
go('secretory granule membrane',is_a,'cytoplasmic vesicle membrane').
go('secretory granule membrane',part_of,'secretory granule').
go('specific granule membrane',part_of,'specific granule').
go('specific granule',is_a,'secretory granule').
go('tertiary granule membrane',is_a,'secretory granule membrane').
go('tertiary granule membrane',part_of,'tertiary granule').
go('tertiary granule',is_a,'secretory granule').
leaf('LAMTOR1','GTPase binding').
leaf('LAMTOR1','protein-membrane adaptor activity').
leaf('LAMTOR1','cellular response to amino acid stimulus').
leaf('LAMTOR1','cellular response to nutrient levels').
leaf('LAMTOR1','cholesterol homeostasis').
bp('cholesterol homeostasis').
leaf('LAMTOR1','endosomal transport').
bp('endosomal transport').
leaf('LAMTOR1','endosome organization').
bp('endosome organization').
leaf('LAMTOR1','intracellular protein localization').
leaf('LAMTOR1','lysosome localization').
bp('lysosome localization').
leaf('LAMTOR1','lysosome organization').
bp('lysosome organization').
leaf('LAMTOR1','positive regulation of MAPK cascade').
leaf('LAMTOR1','positive regulation of protein localization to lysosome').
bp('positive regulation of protein localization to lysosome').
leaf('LAMTOR1','positive regulation of TOR signaling').
leaf('LAMTOR1','positive regulation of TORC1 signaling').
leaf('LAMTOR1','protein localization to membrane').
leaf('LAMTOR1','regulation of cell growth').
bp('regulation of cell growth').
leaf('LAMTOR1','regulation of cholesterol efflux').
bp('regulation of cholesterol efflux').
leaf('LAMTOR1','regulation of cholesterol import').
bp('regulation of cholesterol import').
leaf('LAMTOR1','regulation of receptor recycling').
bp('regulation of receptor recycling').
leaf('LAMTOR1','TORC1 signaling').
leaf('LAMTOR1','azurophil granule membrane').
cc('azurophil granule membrane').
leaf('LAMTOR1','extracellular exosome').
leaf('LAMTOR1','ficolin-1-rich granule membrane').
cc('ficolin-1-rich granule membrane').
leaf('LAMTOR1','FNIP-folliculin RagC/D GAP').
leaf('LAMTOR1','late endosome membrane').
leaf('LAMTOR1','lysosomal membrane').
leaf('LAMTOR1','lysosome').
leaf('LAMTOR1','membrane raft').
leaf('LAMTOR1','plasma membrane').
leaf('LAMTOR1','Ragulator complex').
leaf('LAMTOR1','specific granule membrane').
go('cholesterol homeostasis',is_a,'sterol homeostasis').
go('sterol homeostasis',is_a,'lipid homeostasis').
go('lipid homeostasis',is_a,'chemical homeostasis').
go('endosomal transport',is_a,'intracellular transport').
go('endosomal transport',is_a,'vesicle-mediated transport').
go('intracellular transport',is_a,'cellular localization').
go('intracellular transport',is_a,'establishment of localization in cell').
go('intracellular transport',is_a,'transport').
go('intracellular transport',occurs_in,'intracellular anatomical structure').
go('endosomal transport',occurs_in,'intracellular anatomical structure').
go('endosome organization',is_a,'vesicle organization').
go('vesicle organization',is_a,'organelle organization').
go('endosome organization',part_of,'endomembrane system organization').
go('endomembrane system organization',is_a,'cellular component organization').
go('lysosome localization',is_a,'vacuolar localization').
go('vacuolar localization',is_a,'organelle localization').
go('lysosome organization',is_a,'lytic vacuole organization').
go('lytic vacuole organization',is_a,'vacuole organization').
go('vacuole organization',is_a,'organelle organization').
go('positive regulation of protein localization to lysosome',is_a,'positive regulation of protein localization').
go('positive regulation of protein localization to lysosome',is_a,'regulation of protein localization to lysosome').
go('regulation of protein localization to lysosome',is_a,'regulation of protein localization').
go('regulation of protein localization to lysosome',regulates,'protein localization to lysosome').
go('regulation of cholesterol import',is_a,'regulation of cholesterol transport').
go('regulation of cholesterol import',regulates,'cholesterol import').
go('cholesterol import',is_a,'cholesterol transport').
go('regulation of receptor recycling',is_a,'regulation of macromolecule metabolic process').
go('regulation of receptor recycling',is_a,'regulation of signaling').
go('regulation of receptor recycling',regulates,'receptor recycling').
go('receptor recycling',is_a,'receptor metabolic process').
go('receptor metabolic process',is_a,'macromolecule metabolic process').
go('azurophil granule membrane',is_a,'lysosomal membrane').
go('azurophil granule membrane',is_a,'secretory granule membrane').
go('azurophil granule membrane',part_of,'azurophil granule').
go('ficolin-1-rich granule membrane',is_a,'secretory granule membrane').
go('ficolin-1-rich granule membrane',part_of,'tertiary granule').
go('ficolin-1-rich granule membrane',part_of,'ficolin-1-rich granule').
go('ficolin-1-rich granule',is_a,'secretory granule').
leaf('LAMTOR2','guanyl-nucleotide exchange factor activity').
leaf('LAMTOR2','molecular adaptor activity').
leaf('LAMTOR2','cellular response to amino acid stimulus').
leaf('LAMTOR2','cellular response to nutrient levels').
leaf('LAMTOR2','intracellular protein localization').
leaf('LAMTOR2','positive regulation of TOR signaling').
leaf('LAMTOR2','positive regulation of TORC1 signaling').
leaf('LAMTOR2','regulation of cell growth').
leaf('LAMTOR2','regulation of cell-substrate junction organization').
bp('regulation of cell-substrate junction organization').
leaf('LAMTOR2','TORC1 signaling').
leaf('LAMTOR2','endosome membrane').
leaf('LAMTOR2','FNIP-folliculin RagC/D GAP').
leaf('LAMTOR2','late endosome').
cc('late endosome').
leaf('LAMTOR2','late endosome membrane').
leaf('LAMTOR2','lysosomal membrane').
leaf('LAMTOR2','plasma membrane').
leaf('LAMTOR2','Ragulator complex').
leaf('LAMTOR2','specific granule membrane').
leaf('LAMTOR2','tertiary granule membrane').
go('regulation of cell-substrate junction organization',is_a,'regulation of cellular component organization').
go('regulation of cell-substrate junction organization',regulates,'cell-substrate junction organization').
go('cell-substrate junction organization',is_a,'cell junction organization').
leaf('LAMTOR4','cellular response to amino acid stimulus').
leaf('LAMTOR4','cellular response to nutrient levels').
leaf('LAMTOR4','positive regulation of TOR signaling').
leaf('LAMTOR4','positive regulation of TORC1 signaling').
leaf('LAMTOR4','protein localization to lysosome').
leaf('LAMTOR4','regulation of cell size').
bp('regulation of cell size').
leaf('LAMTOR4','TORC1 signaling').
leaf('LAMTOR4','FNIP-folliculin RagC/D GAP').
leaf('LAMTOR4','late endosome membrane').
leaf('LAMTOR4','lysosomal membrane').
leaf('LAMTOR4','lysosome').
leaf('LAMTOR4','Ragulator complex').
go('regulation of cell size',is_a,'regulation of cellular component size').
go('regulation of cellular component size',is_a,'regulation of anatomical structure size').
go('regulation of cellular component size',is_a,'cellular component organization').
leaf('LAMTOR5','cellular response to amino acid stimulus').
leaf('LAMTOR5','cellular response to nutrient levels').
leaf('LAMTOR5','negative regulation of apoptotic process').
leaf('LAMTOR5','positive regulation of canonical NF-kappaB signal transduction').
bp('positive regulation of canonical NF-kappaB signal transduction').
leaf('LAMTOR5','positive regulation of gene expression').
leaf('LAMTOR5','positive regulation of interleukin-8 production').
bp('positive regulation of interleukin-8 production').
leaf('LAMTOR5','positive regulation of protein localization to nucleus').
bp('positive regulation of protein localization to nucleus').
leaf('LAMTOR5','positive regulation of TOR signaling').
leaf('LAMTOR5','positive regulation of TORC1 signaling').
leaf('LAMTOR5','protein localization to lysosome').
leaf('LAMTOR5','regulation of cell size').
leaf('LAMTOR5','response to virus').
bp('response to virus').
leaf('LAMTOR5','TORC1 signaling').
leaf('LAMTOR5','viral genome replication').
bp('viral genome replication').
leaf('LAMTOR5','cytosol').
leaf('LAMTOR5','FNIP-folliculin RagC/D GAP').
leaf('LAMTOR5','late endosome membrane').
leaf('LAMTOR5','lysosomal membrane').
leaf('LAMTOR5','lysosome').
leaf('LAMTOR5','protein-containing complex').
leaf('LAMTOR5','Ragulator complex').
go('positive regulation of canonical NF-kappaB signal transduction',is_a,'regulation of canonical NF-kappaB signal transduction').
go('positive regulation of canonical NF-kappaB signal transduction',is_a,'positive regulation of intracellular signal transduction').
go('regulation of canonical NF-kappaB signal transduction',is_a,'regulation of intracellular signal transduction').
go('regulation of canonical NF-kappaB signal transduction',regulates,'canonical NF-kappaB signal transduction').
go('canonical NF-kappaB signal transduction',is_a,'intracellular signaling cassette').
go('positive regulation of interleukin-8 production',is_a,'positive regulation of cytokine production').
go('positive regulation of interleukin-8 production',is_a,'regulation of interleukin-8 production').
go('regulation of interleukin-8 production',is_a,'regulation of cytokine production').
go('positive regulation of cytokine production',is_a,'regulation of cytokine production').
go('regulation of cytokine production',is_a,'regulation of gene expression').
go('regulation of cytokine production',is_a,'regulation of multicellular organismal process').
go('positive regulation of cytokine production',is_a,'positive regulation of gene expression').
go('positive regulation of cytokine production',is_a,'positive regulation of multicellular organismal process').
go('regulation of cytokine production',regulates,'cytokine production').
go('cytokine production',is_a,'gene expression').
go('cytokine production',is_a,'multicellular organismal process').
go('regulation of interleukin-8 production',regulates,'interleukin-8 production').
go('interleukin-8 production',is_a,'cytokine production').
go('positive regulation of protein localization to nucleus',is_a,'regulation of protein localization to nucleus').
go('regulation of protein localization to nucleus',is_a,'regulation of protein localization').
go('positive regulation of protein localization to nucleus',is_a,'positive regulation of protein localization').
go('regulation of protein localization to nucleus',regulates,'protein localization to nucleus').
go('response to virus',is_a,'response to other organism').
go('viral genome replication',is_a,'viral process').
go('viral process',is_a,'biological_process').
go('viral genome replication',part_of,'viral life cycle').
go('viral life cycle',is_a,'viral process').
leaf('MAPKAP1','enzyme-substrate adaptor activity').
leaf('MAPKAP1','molecular adaptor activity').
leaf('MAPKAP1','phosphatidic acid binding').
fm('phosphatidic acid binding').
leaf('MAPKAP1','phosphatidylinositol-3,4,5-trisphosphate binding').
fm('phosphatidylinositol-3,4,5-trisphosphate binding').
leaf('MAPKAP1','phosphatidylinositol-3,4-bisphosphate binding').
fm('phosphatidylinositol-3,4-bisphosphate binding').
leaf('MAPKAP1','phosphatidylinositol-3,5-bisphosphate binding').
fm('phosphatidylinositol-3,5-bisphosphate binding').
leaf('MAPKAP1','phosphatidylinositol-4,5-bisphosphate binding').
fm('phosphatidylinositol-4,5-bisphosphate binding').
leaf('MAPKAP1','protein kinase binding').
leaf('MAPKAP1','small GTPase binding').
leaf('MAPKAP1','cellular response to insulin stimulus').
bp('cellular response to insulin stimulus').
leaf('MAPKAP1','cellular response to nutrient levels').
leaf('MAPKAP1','cytoskeleton organization').
bp('cytoskeleton organization').
leaf('MAPKAP1','negative regulation of apoptotic process').
leaf('MAPKAP1','negative regulation of insulin receptor signaling pathway').
bp('negative regulation of insulin receptor signaling pathway').
leaf('MAPKAP1','negative regulation of Ras protein signal transduction').
bp('negative regulation of Ras protein signal transduction').
leaf('MAPKAP1','positive regulation of cell growth').
leaf('MAPKAP1','regulation of cellular response to oxidative stress').
bp('regulation of cellular response to oxidative stress').
leaf('MAPKAP1','substantia nigra development').
bp('substantia nigra development').
leaf('MAPKAP1','TORC2 signaling').
bp('TORC2 signaling').
leaf('MAPKAP1','cytoplasm').
leaf('MAPKAP1','cytosol').
leaf('MAPKAP1','early endosome').
cc('early endosome').
leaf('MAPKAP1','early endosome membrane').
leaf('MAPKAP1','endoplasmic reticulum').
leaf('MAPKAP1','endoplasmic reticulum membrane').
leaf('MAPKAP1','Golgi apparatus').
leaf('MAPKAP1','Golgi membrane').
leaf('MAPKAP1','late endosome').
leaf('MAPKAP1','late endosome membrane').
leaf('MAPKAP1','lysosomal membrane').
leaf('MAPKAP1','lysosome').
leaf('MAPKAP1','mitochondrial outer membrane').
leaf('MAPKAP1','nucleoplasm').
leaf('MAPKAP1','nucleus').
leaf('MAPKAP1','perinuclear region of cytoplasm').
leaf('MAPKAP1','plasma membrane').
leaf('MAPKAP1','TORC2 complex').
cc('TORC2 complex').
go('phosphatidic acid binding',is_a,'phospholipid binding').
go('phosphatidic acid binding',is_a,'anion binding').
go('phospholipid binding',is_a,'lipid binding').
go('lipid binding',is_a,'binding').
go('phosphatidylinositol-3,4,5-trisphosphate binding',is_a,'anion binding').
go('phosphatidylinositol-3,4,5-trisphosphate binding',is_a,'phosphatidylinositol phosphate binding').
go('phosphatidylinositol phosphate binding',is_a,'phospholipid binding').
go('phosphatidylinositol-3,4-bisphosphate binding',is_a,'phosphatidylinositol bisphosphate binding').
go('phosphatidylinositol bisphosphate binding',is_a,'anion binding').
go('phosphatidylinositol-3,5-bisphosphate binding',is_a,'phosphatidylinositol bisphosphate binding').
go('phosphatidylinositol-3,5-bisphosphate binding',is_a,'phosphatidylinositol phosphate binding').
go('phosphatidylinositol-4,5-bisphosphate binding',is_a,'phosphatidylinositol bisphosphate binding').
go('phosphatidylinositol-4,5-bisphosphate binding',is_a,'phosphatidylinositol phosphate binding').
go('negative regulation of insulin receptor signaling pathway',is_a,'regulation of insulin receptor signaling pathway').
go('negative regulation of insulin receptor signaling pathway',is_a,'negative regulation of cellular response to insulin stimulus').
go('regulation of insulin receptor signaling pathway',is_a,'regulation of signal transduction').
go('negative regulation of cellular response to insulin stimulus',is_a,'negative regulation of response to stimulus').
go('negative regulation of cellular response to insulin stimulus',is_a,'regulation of cellular response to insulin stimulus').
go('regulation of insulin receptor signaling pathway',regulates,'insulin receptor signaling pathway').
go('regulation of cellular response to insulin stimulus',is_a,'regulation of cellular process').
go('regulation of cellular response to insulin stimulus',is_a,'regulation of response to stimulus').
go('negative regulation of insulin receptor signaling pathway',is_a,'negative regulation of signal transduction').
go('regulation of cellular response to insulin stimulus',regulates,'cellular response to insulin stimulus').
go('negative regulation of cellular response to insulin stimulus',is_a,'negative regulation of cellular process').
go('negative regulation of Ras protein signal transduction',is_a,'negative regulation of small GTPase mediated signal transduction').
go('negative regulation of Ras protein signal transduction',is_a,'regulation of Ras protein signal transduction').
go('negative regulation of small GTPase mediated signal transduction',is_a,'negative regulation of intracellular signal transduction').
go('regulation of Ras protein signal transduction',is_a,'regulation of small GTPase mediated signal transduction').
go('negative regulation of intracellular signal transduction',is_a,'regulation of intracellular signal transduction').
go('negative regulation of intracellular signal transduction',is_a,'negative regulation of signal transduction').
go('negative regulation of small GTPase mediated signal transduction',is_a,'regulation of small GTPase mediated signal transduction').
go('regulation of Ras protein signal transduction',regulates,'Ras protein signal transduction').
go('substantia nigra development',is_a,'neural nucleus development').
go('neural nucleus development',is_a,'animal gross anatomical part developmental process').
go('substantia nigra development',part_of,'midbrain development').
go('midbrain development',is_a,'animal gross anatomical part developmental process').
go('midbrain development',part_of,'brain development').
go('TORC2 signaling',is_a,'TOR signaling').
go('TORC2 complex',is_a,'TOR complex').
go('TOR complex',is_a,'intracellular protein-containing complex').
leaf('MAPKAPK2','ATP binding').
leaf('MAPKAPK2','mitogen-activated protein kinase binding').
leaf('MAPKAPK2','protein kinase activity').
leaf('MAPKAPK2','protein serine kinase activity').
leaf('MAPKAPK2','protein serine/threonine kinase activity').
leaf('MAPKAPK2','3-UTR-mediated mRNA stabilization').
bp('3-UTR-mediated mRNA stabilization').
leaf('MAPKAPK2','cellular response to vascular endothelial growth factor stimulus').
bp('cellular response to vascular endothelial growth factor stimulus').
leaf('MAPKAPK2','DNA damage response').
bp('DNA damage response').
leaf('MAPKAPK2','inflammatory response').
bp('inflammatory response').
leaf('MAPKAPK2','intracellular signal transduction').
leaf('MAPKAPK2','leukotriene metabolic process').
bp('leukotriene metabolic process').
leaf('MAPKAPK2','macropinocytosis').
bp('macropinocytosis').
leaf('MAPKAPK2','MAPK cascade').
leaf('MAPKAPK2','regulation of cellular response to heat').
bp('regulation of cellular response to heat').
leaf('MAPKAPK2','regulation of interleukin-6 production').
bp('regulation of interleukin-6 production').
leaf('MAPKAPK2','regulation of mRNA stability').
bp('regulation of mRNA stability').
leaf('MAPKAPK2','regulation of tumor necrosis factor production').
bp('regulation of tumor necrosis factor production').
leaf('MAPKAPK2','regulation of tumor necrosis factor-mediated signaling pathway').
bp('regulation of tumor necrosis factor-mediated signaling pathway').
leaf('MAPKAPK2','response to cytokine').
bp('response to cytokine').
leaf('MAPKAPK2','response to lipopolysaccharide').
leaf('MAPKAPK2','toll-like receptor signaling pathway').
bp('toll-like receptor signaling pathway').
leaf('MAPKAPK2','vascular endothelial growth factor receptor signaling pathway').
bp('vascular endothelial growth factor receptor signaling pathway').
leaf('MAPKAPK2','cytoplasm').
leaf('MAPKAPK2','cytosol').
leaf('MAPKAPK2','extracellular exosome').
leaf('MAPKAPK2','nucleoplasm').
leaf('MAPKAPK2','nucleus').
go('3-UTR-mediated mRNA stabilization',is_a,'mRNA stabilization').
go('mRNA stabilization',is_a,'regulation of mRNA stability').
go('mRNA stabilization',is_a,'RNA stabilization').
go('regulation of mRNA stability',is_a,'regulation of mRNA catabolic process').
go('RNA stabilization',is_a,'negative regulation of RNA catabolic process').
go('negative regulation of RNA catabolic process',is_a,'negative regulation of RNA metabolic process').
go('negative regulation of RNA catabolic process',is_a,'negative regulation of catabolic process').
go('RNA stabilization',is_a,'regulation of RNA stability').
go('regulation of RNA stability',is_a,'regulation of biological quality').
go('regulation of RNA stability',is_a,'regulation of RNA metabolic process').
go('regulation of RNA stability',is_a,'post-transcriptional regulation of gene expression').
go('regulation of RNA stability',is_a,'regulation of catabolic process').
go('regulation of RNA stability',regulates,'RNA catabolic process').
go('mRNA stabilization',is_a,'negative regulation of mRNA catabolic process').
go('negative regulation of mRNA catabolic process',is_a,'negative regulation of RNA catabolic process').
go('regulation of mRNA stability',is_a,'regulation of RNA stability').
go('negative regulation of mRNA catabolic process',is_a,'positive regulation of gene expression').
go('negative regulation of mRNA catabolic process',is_a,'regulation of mRNA catabolic process').
go('negative regulation of mRNA catabolic process',is_a,'negative regulation of mRNA metabolic process').
go('cellular response to vascular endothelial growth factor stimulus',is_a,'cellular response to growth factor stimulus').
go('inflammatory response',is_a,'defense response').
go('leukotriene metabolic process',is_a,'icosanoid metabolic process').
go('icosanoid metabolic process',is_a,'carboxylic acid metabolic process').
go('macropinocytosis',is_a,'pinocytosis').
go('pinocytosis',is_a,'endocytosis').
go('regulation of cellular response to heat',is_a,'regulation of cellular response to stress').
go('regulation of cellular response to heat',regulates,'cellular response to heat').
go('cellular response to heat',is_a,'cellular response to stress').
go('cellular response to heat',is_a,'response to heat').
go('response to heat',is_a,'response to stress').
go('response to heat',is_a,'response to temperature stimulus').
go('response to temperature stimulus',is_a,'response to abiotic stimulus').
go('regulation of interleukin-6 production',is_a,'regulation of cytokine production').
go('regulation of interleukin-6 production',regulates,'interleukin-6 production').
go('interleukin-6 production',is_a,'cytokine production').
go('regulation of tumor necrosis factor production',is_a,'regulation of tumor necrosis factor superfamily cytokine production').
go('regulation of tumor necrosis factor superfamily cytokine production',is_a,'regulation of cytokine production').
go('regulation of tumor necrosis factor superfamily cytokine production',regulates,'tumor necrosis factor superfamily cytokine production').
go('tumor necrosis factor superfamily cytokine production',is_a,'cytokine production').
go('regulation of tumor necrosis factor production',regulates,'tumor necrosis factor production').
go('tumor necrosis factor production',is_a,'tumor necrosis factor superfamily cytokine production').
go('regulation of tumor necrosis factor-mediated signaling pathway',is_a,'regulation of cytokine-mediated signaling pathway').
go('regulation of cytokine-mediated signaling pathway',is_a,'regulation of signal transduction').
go('regulation of cytokine-mediated signaling pathway',is_a,'regulation of response to cytokine stimulus').
go('regulation of response to cytokine stimulus',is_a,'regulation of response to stimulus').
go('regulation of response to cytokine stimulus',regulates,'response to cytokine').
go('regulation of cytokine-mediated signaling pathway',regulates,'cytokine-mediated signaling pathway').
go('regulation of tumor necrosis factor-mediated signaling pathway',regulates,'tumor necrosis factor-mediated signaling pathway').
go('vascular endothelial growth factor receptor signaling pathway',is_a,'cell surface receptor protein tyrosine kinase signaling pathway').
leaf('MAPKAPK3','ATP binding').
leaf('MAPKAPK3','MAP kinase kinase activity').
leaf('MAPKAPK3','mitogen-activated protein kinase binding').
leaf('MAPKAPK3','protein serine kinase activity').
leaf('MAPKAPK3','protein serine/threonine kinase activity').
leaf('MAPKAPK3','intracellular signal transduction').
leaf('MAPKAPK3','macropinocytosis').
leaf('MAPKAPK3','MAPK cascade').
leaf('MAPKAPK3','response to cytokine').
leaf('MAPKAPK3','response to lipopolysaccharide').
leaf('MAPKAPK3','signal transduction').
leaf('MAPKAPK3','toll-like receptor signaling pathway').
leaf('MAPKAPK3','vascular endothelial growth factor receptor signaling pathway').
leaf('MAPKAPK3','cytoplasm').
leaf('MAPKAPK3','cytosol').
leaf('MAPKAPK3','nucleoplasm').
leaf('MAPKAPK3','nucleus').
leaf('MAPKAPK5','ATP binding').
leaf('MAPKAPK5','MAP kinase kinase activity').
leaf('MAPKAPK5','mitogen-activated protein kinase binding').
leaf('MAPKAPK5','p53 binding').
fm('p53 binding').
leaf('MAPKAPK5','protein serine kinase activity').
leaf('MAPKAPK5','protein serine/threonine kinase activity').
leaf('MAPKAPK5','cellular senescence').
bp('cellular senescence').
leaf('MAPKAPK5','negative regulation of TOR signaling').
bp('negative regulation of TOR signaling').
leaf('MAPKAPK5','positive regulation of telomere maintenance').
bp('positive regulation of telomere maintenance').
leaf('MAPKAPK5','positive regulation of transcription by RNA polymerase II').
leaf('MAPKAPK5','protein autophosphorylation').
bp('protein autophosphorylation').
leaf('MAPKAPK5','Ras protein signal transduction').
leaf('MAPKAPK5','regulation of signal transduction by p53 class mediator').
bp('regulation of signal transduction by p53 class mediator').
leaf('MAPKAPK5','regulation of translation').
bp('regulation of translation').
leaf('MAPKAPK5','signal transduction').
leaf('MAPKAPK5','stress-induced premature senescence').
bp('stress-induced premature senescence').
leaf('MAPKAPK5','cytosol').
leaf('MAPKAPK5','nucleoplasm').
leaf('MAPKAPK5','protein-containing complex').
leaf('MAPKAPK5','septin cytoskeleton').
cc('septin cytoskeleton').
go('p53 binding',is_a,'protein binding').
go('cellular senescence',is_a,'cellular process').
go('cellular senescence',part_of,'cellular response to stress').
go('negative regulation of TOR signaling',is_a,'regulation of TOR signaling').
go('negative regulation of TOR signaling',is_a,'negative regulation of intracellular signal transduction').
go('positive regulation of telomere maintenance',is_a,'regulation of telomere maintenance').
go('positive regulation of telomere maintenance',is_a,'positive regulation of DNA metabolic process').
go('regulation of telomere maintenance',is_a,'regulation of DNA metabolic process').
go('positive regulation of telomere maintenance',is_a,'positive regulation of chromosome organization').
go('regulation of telomere maintenance',is_a,'regulation of chromosome organization').
go('positive regulation of chromosome organization',is_a,'regulation of chromosome organization').
go('regulation of chromosome organization',is_a,'regulation of organelle organization').
go('positive regulation of chromosome organization',is_a,'positive regulation of organelle organization').
go('regulation of chromosome organization',regulates,'chromosome organization').
go('regulation of telomere maintenance',regulates,'telomere maintenance').
go('telomere maintenance',is_a,'DNA metabolic process').
go('telomere maintenance',is_a,'telomere organization').
go('telomere organization',is_a,'chromosome organization').
go('protein autophosphorylation',is_a,'protein phosphorylation').
go('regulation of signal transduction by p53 class mediator',is_a,'regulation of intracellular signal transduction').
go('regulation of signal transduction by p53 class mediator',regulates,'signal transduction by p53 class mediator').
go('signal transduction by p53 class mediator',is_a,'intracellular signal transduction').
go('stress-induced premature senescence',is_a,'cellular senescence').
go('septin cytoskeleton',is_a,'cytoskeleton').
leaf('MCRIP1','regulation of epithelial to mesenchymal transition').
bp('regulation of epithelial to mesenchymal transition').
leaf('MCRIP1','cytoplasm').
leaf('MCRIP1','cytoplasmic stress granule').
cc('cytoplasmic stress granule').
leaf('MCRIP1','nucleoplasm').
leaf('MCRIP1','nucleus').
go('regulation of epithelial to mesenchymal transition',is_a,'regulation of cell differentiation').
go('regulation of epithelial to mesenchymal transition',regulates,'epithelial to mesenchymal transition').
go('epithelial to mesenchymal transition',is_a,'mesenchymal cell differentiation').
go('mesenchymal cell differentiation',is_a,'cell differentiation').
go('mesenchymal cell differentiation',part_of,'mesenchyme development').
go('mesenchyme development',is_a,'tissue development').
go('mesenchyme development',is_a,'animal gross anatomical part developmental process').
go('mesenchyme development',part_of,'animal organ development').
go('cytoplasmic stress granule',is_a,'cytoplasmic ribonucleoprotein granule').
go('cytoplasmic ribonucleoprotein granule',is_a,'ribonucleoprotein granule').
go('cytoplasmic ribonucleoprotein granule',part_of,'cytoplasm').
leaf('MCRIP2','protein-containing complex binding').
fm('protein-containing complex binding').
leaf('MCRIP2','RNA binding').
leaf('MCRIP2','cytoplasm').
leaf('MCRIP2','cytoplasmic stress granule').
leaf('MCRIP2','cytosol').
leaf('MCRIP2','nucleus').
leaf('MKNK1','ATP binding').
leaf('MKNK1','protein serine kinase activity').
leaf('MKNK1','protein serine/threonine kinase activity').
leaf('MKNK1','intracellular signal transduction').
leaf('MKNK1','protein phosphorylation').
leaf('MKNK1','cytosol').
leaf('MKNK1','nucleoplasm').
leaf('MKNK2','ATP binding').
leaf('MKNK2','protein serine kinase activity').
leaf('MKNK2','protein serine/threonine kinase activity').
leaf('MKNK2','cell surface receptor signaling pathway').
leaf('MKNK2','cellular response to arsenic-containing substance').
bp('cellular response to arsenic-containing substance').
leaf('MKNK2','hemopoiesis').
bp('hemopoiesis').
leaf('MKNK2','intracellular signal transduction').
leaf('MKNK2','protein phosphorylation').
leaf('MKNK2','cytosol').
leaf('MKNK2','nuclear body').
leaf('MKNK2','PML body').
cc('PML body').
go('cellular response to arsenic-containing substance',is_a,'response to arsenic-containing substance').
go('response to arsenic-containing substance',is_a,'response to chemical').
go('cellular response to arsenic-containing substance',is_a,'cellular response to chemical stimulus').
go('hemopoiesis',is_a,'cell development').
go('PML body',is_a,'nuclear body').
leaf('MAP2K4','ATP binding').
leaf('MAP2K4','JUN kinase kinase activity').
fm('JUN kinase kinase activity').
leaf('MAP2K4','mitogen-activated protein kinase binding').
leaf('MAP2K4','mitogen-activated protein kinase p38 binding').
fm('mitogen-activated protein kinase p38 binding').
leaf('MAP2K4','protein kinase activity').
leaf('MAP2K4','protein serine kinase activity').
leaf('MAP2K4','protein tyrosine kinase activity').
leaf('MAP2K4','cellular response to mechanical stimulus').
bp('cellular response to mechanical stimulus').
leaf('MAP2K4','cellular senescence').
leaf('MAP2K4','ERBB signaling pathway').
bp('ERBB signaling pathway').
leaf('MAP2K4','Fc-epsilon receptor signaling pathway').
leaf('MAP2K4','intrinsic apoptotic signaling pathway in response to hydrogen peroxide').
bp('intrinsic apoptotic signaling pathway in response to hydrogen peroxide').
leaf('MAP2K4','JNK cascade').
bp('JNK cascade').
leaf('MAP2K4','MAPK cascade').
leaf('MAP2K4','neuromuscular junction development').
leaf('MAP2K4','signal transduction').
leaf('MAP2K4','smooth muscle cell apoptotic process').
bp('smooth muscle cell apoptotic process').
leaf('MAP2K4','cytosol').
leaf('MAP2K4','nucleus').
go('JUN kinase kinase activity',is_a,'MAP kinase kinase activity').
go('JUN kinase kinase activity',part_of,'JNK cascade').
go('JNK cascade',is_a,'MAPK cascade').
go('mitogen-activated protein kinase p38 binding',is_a,'mitogen-activated protein kinase binding').
go('cellular response to mechanical stimulus',is_a,'response to mechanical stimulus').
go('response to mechanical stimulus',is_a,'response to external stimulus').
go('response to mechanical stimulus',is_a,'response to abiotic stimulus').
go('cellular response to mechanical stimulus',is_a,'cellular response to abiotic stimulus').
go('cellular response to mechanical stimulus',is_a,'cellular response to external stimulus').
go('cellular response to external stimulus',is_a,'response to external stimulus').
go('intrinsic apoptotic signaling pathway in response to hydrogen peroxide',is_a,'intrinsic apoptotic signaling pathway in response to oxidative stress').
go('intrinsic apoptotic signaling pathway in response to oxidative stress',is_a,'intrinsic apoptotic signaling pathway').
go('intrinsic apoptotic signaling pathway',is_a,'intracellular signal transduction').
go('intrinsic apoptotic signaling pathway',is_a,'apoptotic signaling pathway').
go('apoptotic signaling pathway',is_a,'signal transduction').
go('apoptotic signaling pathway',part_of,'apoptotic process').
go('intrinsic apoptotic signaling pathway in response to hydrogen peroxide',part_of,'hydrogen peroxide-mediated programmed cell death').
go('hydrogen peroxide-mediated programmed cell death',is_a,'programmed cell death in response to reactive oxygen species').
go('programmed cell death in response to reactive oxygen species',is_a,'programmed cell death').
go('programmed cell death in response to reactive oxygen species',part_of,'cellular response to reactive oxygen species').
go('smooth muscle cell apoptotic process',is_a,'muscle cell apoptotic process').
go('muscle cell apoptotic process',is_a,'apoptotic process').
leaf('CREBBP','acetyltransferase activity').
fm('acetyltransferase activity').
leaf('CREBBP','chromatin binding').
leaf('CREBBP','chromatin DNA binding').
fm('chromatin DNA binding').
leaf('CREBBP','damaged DNA binding').
fm('damaged DNA binding').
leaf('CREBBP','DNA-binding transcription factor binding').
fm('DNA-binding transcription factor binding').
leaf('CREBBP','histone acetyltransferase activity').
fm('histone acetyltransferase activity').
leaf('CREBBP','histone H3K18 acetyltransferase activity').
fm('histone H3K18 acetyltransferase activity').
leaf('CREBBP','histone H3K27 acetyltransferase activity').
fm('histone H3K27 acetyltransferase activity').
leaf('CREBBP','MRF binding').
fm('MRF binding').
leaf('CREBBP','p53 binding').
leaf('CREBBP','peptide lactyltransferase (CoA-dependent) activity').
fm('peptide lactyltransferase (CoA-dependent) activity').
leaf('CREBBP','protein-lysine-acetyltransferase activity').
fm('protein-lysine-acetyltransferase activity').
leaf('CREBBP','RNA polymerase II-specific DNA-binding transcription factor binding').
fm('RNA polymerase II-specific DNA-binding transcription factor binding').
leaf('CREBBP','tau protein binding').
fm('tau protein binding').
leaf('CREBBP','transcription coactivator activity').
fm('transcription coactivator activity').
leaf('CREBBP','transcription coactivator binding').
fm('transcription coactivator binding').
leaf('CREBBP','transcription corepressor activity').
fm('transcription corepressor activity').
leaf('CREBBP','zinc ion binding').
leaf('CREBBP','cAMP/PKA signal transduction').
bp('cAMP/PKA signal transduction').
leaf('CREBBP','canonical NF-kappaB signal transduction').
bp('canonical NF-kappaB signal transduction').
leaf('CREBBP','cellular response to nutrient levels').
leaf('CREBBP','cellular response to UV').
bp('cellular response to UV').
leaf('CREBBP','embryonic digit morphogenesis').
bp('embryonic digit morphogenesis').
leaf('CREBBP','negative regulation of transcription by RNA polymerase I').
bp('negative regulation of transcription by RNA polymerase I').
leaf('CREBBP','negative regulation of transcription by RNA polymerase II').
bp('negative regulation of transcription by RNA polymerase II').
leaf('CREBBP','negative regulation of transcription of nucleolar large rRNA by RNA polymerase I').
bp('negative regulation of transcription of nucleolar large rRNA by RNA polymerase I').
leaf('CREBBP','positive regulation of DNA-templated transcription').
leaf('CREBBP','positive regulation of double-strand break repair via homologous recombination').
bp('positive regulation of double-strand break repair via homologous recombination').
leaf('CREBBP','positive regulation of protein localization to nucleus').
leaf('CREBBP','positive regulation of transcription by RNA polymerase II').
leaf('CREBBP','positive regulation of transforming growth factor beta receptor signaling pathway').
bp('positive regulation of transforming growth factor beta receptor signaling pathway').
leaf('CREBBP','protein destabilization').
bp('protein destabilization').
leaf('CREBBP','protein-containing complex assembly').
bp('protein-containing complex assembly').
leaf('CREBBP','regulation of cellular response to heat').
leaf('CREBBP','regulation of DNA-templated transcription').
bp('regulation of DNA-templated transcription').
leaf('CREBBP','regulation of nucleotide-excision repair').
bp('regulation of nucleotide-excision repair').
leaf('CREBBP','regulation of smoothened signaling pathway').
bp('regulation of smoothened signaling pathway').
leaf('CREBBP','response to hypoxia').
bp('response to hypoxia').
leaf('CREBBP','stimulatory C-type lectin receptor signaling pathway').
bp('stimulatory C-type lectin receptor signaling pathway').
leaf('CREBBP','chromatin').
cc('chromatin').
leaf('CREBBP','cytoplasm').
leaf('CREBBP','cytosol').
leaf('CREBBP','histone acetyltransferase complex').
cc('histone acetyltransferase complex').
leaf('CREBBP','nuclear body').
leaf('CREBBP','nucleoplasm').
leaf('CREBBP','nucleus').
leaf('CREBBP','transcription regulator complex').
cc('transcription regulator complex').
go('acetyltransferase activity',is_a,'acyltransferase activity, transferring groups other than amino-acyl groups').
go('acyltransferase activity, transferring groups other than amino-acyl groups',is_a,'acyltransferase activity').
go('acyltransferase activity',is_a,'transferase activity').
go('chromatin DNA binding',is_a,'DNA binding').
go('chromatin DNA binding',is_a,'chromatin binding').
go('damaged DNA binding',is_a,'DNA binding').
go('DNA-binding transcription factor binding',is_a,'transcription factor binding').
go('transcription factor binding',is_a,'protein binding').
go('histone acetyltransferase activity',is_a,'protein-lysine-acetyltransferase activity').
go('histone acetyltransferase activity',is_a,'histone modifying activity').
go('protein-lysine-acetyltransferase activity',is_a,'protein N-acetyltransferase activity').
go('histone modifying activity',is_a,'catalytic activity, acting on a protein').
go('protein N-acetyltransferase activity',is_a,'protein N-acyltransferase activity').
go('histone modifying activity',part_of,'chromatin remodeling').
go('protein N-acyltransferase activity',is_a,'catalytic activity, acting on a protein').
go('chromatin remodeling',is_a,'chromatin organization').
go('protein N-acyltransferase activity',is_a,'acyltransferase activity, transferring groups other than amino-acyl groups').
go('chromatin organization',is_a,'cellular component organization').
go('protein N-acetyltransferase activity',is_a,'N-acetyltransferase activity').
go('N-acetyltransferase activity',is_a,'acetyltransferase activity').
go('histone H3K18 acetyltransferase activity',is_a,'histone H3 acetyltransferase activity').
go('histone H3 acetyltransferase activity',is_a,'histone acetyltransferase activity').
go('histone H3K27 acetyltransferase activity',is_a,'histone H3 acetyltransferase activity').
go('MRF binding',is_a,'bHLH transcription factor binding').
go('bHLH transcription factor binding',is_a,'DNA-binding transcription factor binding').
go('peptide lactyltransferase (CoA-dependent) activity',is_a,'acyltransferase activity, transferring groups other than amino-acyl groups').
go('RNA polymerase II-specific DNA-binding transcription factor binding',is_a,'DNA-binding transcription factor binding').
go('tau protein binding',is_a,'cytoskeletal protein binding').
go('transcription coactivator activity',is_a,'transcription coregulator activity').
go('transcription coregulator activity',is_a,'transcription regulator activity').
go('transcription regulator activity',is_a,'molecular_function').
go('transcription coactivator activity',part_of,'positive regulation of DNA-templated transcription').
go('transcription coactivator binding',is_a,'transcription coregulator binding').
go('transcription coregulator binding',is_a,'transcription factor binding').
go('transcription corepressor activity',is_a,'transcription coregulator activity').
go('transcription corepressor activity',part_of,'negative regulation of DNA-templated transcription').
go('negative regulation of DNA-templated transcription',is_a,'regulation of DNA-templated transcription').
go('negative regulation of DNA-templated transcription',is_a,'negative regulation of RNA biosynthetic process').
go('negative regulation of RNA biosynthetic process',is_a,'negative regulation of macromolecule biosynthetic process').
go('negative regulation of RNA biosynthetic process',is_a,'negative regulation of RNA metabolic process').
go('negative regulation of RNA biosynthetic process',is_a,'regulation of RNA biosynthetic process').
go('cAMP/PKA signal transduction',is_a,'intracellular signaling cassette').
go('cellular response to UV',is_a,'cellular response to light stimulus').
go('cellular response to UV',is_a,'response to UV').
go('cellular response to light stimulus',is_a,'cellular response to radiation').
go('cellular response to light stimulus',is_a,'response to light stimulus').
go('embryonic digit morphogenesis',is_a,'embryonic morphogenesis').
go('embryonic morphogenesis',is_a,'anatomical structure morphogenesis').
go('embryonic morphogenesis',part_of,'embryo development').
go('embryo development',is_a,'multicellular organism development').
go('embryonic digit morphogenesis',part_of,'embryonic limb morphogenesis').
go('embryonic limb morphogenesis',is_a,'embryonic appendage morphogenesis').
go('embryonic limb morphogenesis',is_a,'limb morphogenesis').
go('embryonic appendage morphogenesis',is_a,'appendage morphogenesis').
go('limb morphogenesis',is_a,'appendage morphogenesis').
go('appendage morphogenesis',is_a,'anatomical structure morphogenesis').
go('appendage morphogenesis',part_of,'appendage development').
go('limb morphogenesis',part_of,'limb development').
go('appendage development',is_a,'animal gross anatomical part developmental process').
go('limb development',is_a,'appendage development').
go('appendage development',part_of,'multicellular organism development').
go('embryonic appendage morphogenesis',is_a,'embryonic morphogenesis').
go('negative regulation of transcription by RNA polymerase I',is_a,'regulation of transcription by RNA polymerase I').
go('negative regulation of transcription by RNA polymerase I',is_a,'negative regulation of DNA-templated transcription').
go('regulation of transcription by RNA polymerase I',is_a,'regulation of DNA-templated transcription').
go('regulation of transcription by RNA polymerase I',regulates,'transcription by RNA polymerase I').
go('transcription by RNA polymerase I',is_a,'DNA-templated transcription').
go('negative regulation of transcription by RNA polymerase II',is_a,'regulation of transcription by RNA polymerase II').
go('negative regulation of transcription by RNA polymerase II',is_a,'negative regulation of DNA-templated transcription').
go('negative regulation of transcription of nucleolar large rRNA by RNA polymerase I',is_a,'negative regulation of transcription by RNA polymerase I').
go('negative regulation of transcription of nucleolar large rRNA by RNA polymerase I',is_a,'regulation of transcription of nucleolar large rRNA by RNA polymerase I').
go('regulation of transcription of nucleolar large rRNA by RNA polymerase I',is_a,'regulation of transcription by RNA polymerase I').
go('regulation of transcription of nucleolar large rRNA by RNA polymerase I',regulates,'nucleolar large rRNA transcription by RNA polymerase I').
go('nucleolar large rRNA transcription by RNA polymerase I',is_a,'rRNA transcription').
go('nucleolar large rRNA transcription by RNA polymerase I',is_a,'transcription by RNA polymerase I').
go('rRNA transcription',is_a,'DNA-templated transcription').
go('rRNA transcription',is_a,'rRNA metabolic process').
go('rRNA metabolic process',is_a,'RNA metabolic process').
go('positive regulation of double-strand break repair via homologous recombination',is_a,'positive regulation of DNA recombination').
go('positive regulation of double-strand break repair via homologous recombination',is_a,'regulation of double-strand break repair via homologous recombination').
go('positive regulation of DNA recombination',is_a,'positive regulation of DNA metabolic process').
go('regulation of double-strand break repair via homologous recombination',is_a,'regulation of double-strand break repair').
go('regulation of double-strand break repair',is_a,'regulation of DNA repair').
go('positive regulation of DNA recombination',is_a,'regulation of DNA recombination').
go('regulation of DNA recombination',is_a,'regulation of DNA metabolic process').
go('regulation of DNA recombination',regulates,'DNA recombination').
go('DNA recombination',is_a,'DNA metabolic process').
go('positive regulation of double-strand break repair via homologous recombination',is_a,'positive regulation of double-strand break repair').
go('regulation of double-strand break repair',regulates,'double-strand break repair').
go('positive regulation of double-strand break repair',is_a,'regulation of double-strand break repair').
go('double-strand break repair',is_a,'DNA repair').
go('positive regulation of double-strand break repair',is_a,'positive regulation of DNA repair').
go('regulation of double-strand break repair via homologous recombination',is_a,'regulation of DNA recombination').
go('regulation of double-strand break repair via homologous recombination',regulates,'double-strand break repair via homologous recombination').
go('double-strand break repair via homologous recombination',is_a,'double-strand break repair').
go('double-strand break repair via homologous recombination',is_a,'recombinational repair').
go('recombinational repair',is_a,'DNA repair').
go('recombinational repair',is_a,'DNA recombination').
go('positive regulation of transforming growth factor beta receptor signaling pathway',is_a,'positive regulation of cellular response to transforming growth factor beta stimulus').
go('positive regulation of transforming growth factor beta receptor signaling pathway',is_a,'regulation of transforming growth factor beta receptor signaling pathway').
go('positive regulation of cellular response to transforming growth factor beta stimulus',is_a,'regulation of cellular response to transforming growth factor beta stimulus').
go('regulation of transforming growth factor beta receptor signaling pathway',is_a,'regulation of transmembrane receptor protein serine/threonine kinase signaling pathway').
go('regulation of cellular response to transforming growth factor beta stimulus',is_a,'regulation of cellular response to growth factor stimulus').
go('regulation of transmembrane receptor protein serine/threonine kinase signaling pathway',is_a,'regulation of signal transduction').
go('regulation of cellular response to growth factor stimulus',is_a,'regulation of response to stimulus').
go('regulation of cellular response to growth factor stimulus',regulates,'cellular response to growth factor stimulus').
go('regulation of transmembrane receptor protein serine/threonine kinase signaling pathway',regulates,'cell surface receptor protein serine/threonine kinase signaling pathway').
go('cell surface receptor protein serine/threonine kinase signaling pathway',is_a,'enzyme-linked receptor protein signaling pathway').
go('regulation of cellular response to transforming growth factor beta stimulus',regulates,'cellular response to transforming growth factor beta stimulus').
go('regulation of transforming growth factor beta receptor signaling pathway',is_a,'regulation of cellular response to transforming growth factor beta stimulus').
go('cellular response to transforming growth factor beta stimulus',is_a,'response to transforming growth factor beta').
go('regulation of transforming growth factor beta receptor signaling pathway',regulates,'transforming growth factor beta receptor signaling pathway').
go('response to transforming growth factor beta',is_a,'response to growth factor').
go('cellular response to transforming growth factor beta stimulus',is_a,'cellular response to growth factor stimulus').
go('transforming growth factor beta receptor signaling pathway',is_a,'transforming growth factor beta receptor superfamily signaling pathway').
go('positive regulation of cellular response to transforming growth factor beta stimulus',is_a,'positive regulation of response to stimulus').
go('transforming growth factor beta receptor superfamily signaling pathway',is_a,'cell surface receptor protein serine/threonine kinase signaling pathway').
go('positive regulation of transforming growth factor beta receptor signaling pathway',is_a,'positive regulation of transmembrane receptor protein serine/threonine kinase signaling pathway').
go('transforming growth factor beta receptor signaling pathway',part_of,'cellular response to transforming growth factor beta stimulus').
go('positive regulation of transmembrane receptor protein serine/threonine kinase signaling pathway',is_a,'positive regulation of signal transduction').
go('positive regulation of transmembrane receptor protein serine/threonine kinase signaling pathway',is_a,'regulation of transmembrane receptor protein serine/threonine kinase signaling pathway').
go('protein destabilization',is_a,'regulation of protein stability').
go('regulation of nucleotide-excision repair',is_a,'regulation of DNA repair').
go('regulation of nucleotide-excision repair',regulates,'nucleotide-excision repair').
go('nucleotide-excision repair',is_a,'DNA repair').
go('regulation of smoothened signaling pathway',is_a,'regulation of signal transduction').
go('regulation of smoothened signaling pathway',regulates,'smoothened signaling pathway').
go('smoothened signaling pathway',is_a,'cell surface receptor signaling pathway').
go('response to hypoxia',is_a,'response to decreased oxygen levels').
go('response to hypoxia',is_a,'response to stress').
go('response to decreased oxygen levels',is_a,'response to oxygen levels').
go('response to oxygen levels',is_a,'response to abiotic stimulus').
go('stimulatory C-type lectin receptor signaling pathway',is_a,'cellular response to lectin').
go('stimulatory C-type lectin receptor signaling pathway',is_a,'innate immune response activating cell surface receptor signaling pathway').
go('cellular response to lectin',is_a,'response to lectin').
go('innate immune response activating cell surface receptor signaling pathway',is_a,'innate immune response-activating signaling pathway').
go('response to lectin',is_a,'response to biotic stimulus').
go('innate immune response activating cell surface receptor signaling pathway',is_a,'immune response-activating cell surface receptor signaling pathway').
go('chromatin',is_a,'cellular anatomical structure').
go('chromatin',part_of,'chromosome').
go('histone acetyltransferase complex',is_a,'protein acetyltransferase complex').
go('protein acetyltransferase complex',is_a,'intracellular protein-containing complex').
go('protein acetyltransferase complex',is_a,'acetyltransferase complex').
go('acetyltransferase complex',is_a,'transferase complex').
go('histone acetyltransferase complex',part_of,'chromatin').
go('transcription regulator complex',is_a,'protein-containing complex').
leaf('CREBZF','DNA binding').
fm('DNA binding').
leaf('CREBZF','DNA-binding transcription factor activity, RNA polymerase II-specific').
fm('DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('CREBZF','identical protein binding').
leaf('CREBZF','ATF6-mediated unfolded protein response').
bp('ATF6-mediated unfolded protein response').
leaf('CREBZF','integrated stress response signaling').
bp('integrated stress response signaling').
leaf('CREBZF','negative regulation of DNA-templated transcription').
bp('negative regulation of DNA-templated transcription').
leaf('CREBZF','negative regulation of gene expression, epigenetic').
bp('negative regulation of gene expression, epigenetic').
leaf('CREBZF','positive regulation of transcription by RNA polymerase II').
leaf('CREBZF','regulation of transcription by RNA polymerase II').
leaf('CREBZF','response to virus').
leaf('CREBZF','chromatin').
leaf('CREBZF','nucleus').
leaf('CREBZF','RNA polymerase II transcription regulator complex').
cc('RNA polymerase II transcription regulator complex').
go('DNA-binding transcription factor activity, RNA polymerase II-specific',is_a,'DNA-binding transcription factor activity').
go('DNA-binding transcription factor activity',is_a,'transcription regulator activity').
go('DNA-binding transcription factor activity',part_of,'regulation of DNA-templated transcription').
go('DNA-binding transcription factor activity, RNA polymerase II-specific',part_of,'regulation of transcription by RNA polymerase II').
go('DNA-binding transcription factor activity, RNA polymerase II-specific',occurs_in,'chromatin').
go('ATF6-mediated unfolded protein response',is_a,'ER-nucleus signaling pathway').
go('ATF6-mediated unfolded protein response',is_a,'endoplasmic reticulum unfolded protein response').
go('ER-nucleus signaling pathway',is_a,'intracellular signal transduction').
go('endoplasmic reticulum unfolded protein response',is_a,'response to endoplasmic reticulum stress').
go('endoplasmic reticulum unfolded protein response',is_a,'intracellular signal transduction').
go('response to endoplasmic reticulum stress',is_a,'cellular response to stress').
go('endoplasmic reticulum unfolded protein response',part_of,'cellular response to unfolded protein').
go('endoplasmic reticulum unfolded protein response',part_of,'endoplasmic reticulum protein quality control').
go('endoplasmic reticulum protein quality control',is_a,'protein quality control').
go('cellular response to unfolded protein',is_a,'cellular response to topologically incorrect protein').
go('protein quality control',is_a,'cellular process').
go('cellular response to topologically incorrect protein',is_a,'response to topologically incorrect protein').
go('response to topologically incorrect protein',is_a,'response to stress').
go('cellular response to topologically incorrect protein',is_a,'cellular response to stress').
go('cellular response to unfolded protein',is_a,'response to unfolded protein').
go('response to unfolded protein',is_a,'response to topologically incorrect protein').
go('integrated stress response signaling',is_a,'intracellular signaling cassette').
go('integrated stress response signaling',is_a,'cellular response to stress').
go('negative regulation of gene expression, epigenetic',is_a,'epigenetic regulation of gene expression').
go('negative regulation of gene expression, epigenetic',is_a,'negative regulation of gene expression').
go('epigenetic regulation of gene expression',is_a,'chromatin remodeling').
go('epigenetic regulation of gene expression',is_a,'regulation of gene expression').
go('RNA polymerase II transcription regulator complex',is_a,'nuclear protein-containing complex').
go('RNA polymerase II transcription regulator complex',is_a,'transcription regulator complex').
leaf('CRTC1','cAMP response element binding protein binding').
fm('cAMP response element binding protein binding').
leaf('CRTC1','transcription coactivator activity').
leaf('CRTC1','cellular response to cAMP').
bp('cellular response to cAMP').
leaf('CRTC1','entrainment of circadian clock by photoperiod').
bp('entrainment of circadian clock by photoperiod').
leaf('CRTC1','positive regulation of transcription by RNA polymerase II').
leaf('CRTC1','protein homotetramerization').
bp('protein homotetramerization').
leaf('CRTC1','cytoplasm').
leaf('CRTC1','cytosol').
leaf('CRTC1','nuclear body').
leaf('CRTC1','nucleoplasm').
leaf('CRTC1','nucleus').
go('cAMP response element binding protein binding',is_a,'DNA-binding transcription factor binding').
go('cellular response to cAMP',is_a,'response to cAMP').
go('cellular response to cAMP',is_a,'cellular response to nitrogen compound').
go('response to cAMP',is_a,'response to purine-containing compound').
go('response to purine-containing compound',is_a,'response to nitrogen compound').
go('cellular response to cAMP',is_a,'cellular response to oxygen-containing compound').
go('response to cAMP',is_a,'response to organophosphorus').
go('response to organophosphorus',is_a,'response to chemical').
go('response to cAMP',is_a,'response to oxygen-containing compound').
go('entrainment of circadian clock by photoperiod',is_a,'photoperiodism').
go('entrainment of circadian clock by photoperiod',is_a,'entrainment of circadian clock').
go('entrainment of circadian clock',is_a,'regulation of circadian rhythm').
go('photoperiodism',is_a,'response to light stimulus').
go('regulation of circadian rhythm',is_a,'regulation of biological process').
go('regulation of circadian rhythm',regulates,'circadian rhythm').
go('entrainment of circadian clock',is_a,'response to external stimulus').
go('circadian rhythm',is_a,'rhythmic process').
go('rhythmic process',is_a,'biological_process').
go('protein homotetramerization',is_a,'protein tetramerization').
go('protein homotetramerization',is_a,'protein homooligomerization').
go('protein tetramerization',is_a,'protein complex oligomerization').
go('protein homooligomerization',is_a,'protein complex oligomerization').
go('protein complex oligomerization',is_a,'protein-containing complex assembly').
leaf('CRTC2','cAMP response element binding protein binding').
leaf('CRTC2','transcription coactivator activity').
leaf('CRTC2','cellular response to cAMP').
leaf('CRTC2','gluconeogenesis').
bp('gluconeogenesis').
leaf('CRTC2','glucose homeostasis').
leaf('CRTC2','positive regulation of transcription by RNA polymerase II').
leaf('CRTC2','protein homotetramerization').
leaf('CRTC2','cytoplasm').
leaf('CRTC2','extracellular exosome').
leaf('CRTC2','nucleoplasm').
leaf('CRTC2','nucleus').
go('gluconeogenesis',is_a,'hexose biosynthetic process').
go('gluconeogenesis',is_a,'glucose metabolic process').
go('hexose biosynthetic process',is_a,'monosaccharide biosynthetic process').
go('monosaccharide biosynthetic process',is_a,'carbohydrate biosynthetic process').
go('hexose biosynthetic process',is_a,'hexose metabolic process').
go('monosaccharide biosynthetic process',is_a,'small molecule biosynthetic process').
go('monosaccharide biosynthetic process',is_a,'monosaccharide metabolic process').
leaf('CRTC3','cAMP response element binding protein binding').
leaf('CRTC3','transcription coactivator activity').
leaf('CRTC3','cellular response to cAMP').
leaf('CRTC3','macrophage activation').
bp('macrophage activation').
leaf('CRTC3','negative regulation of adenylate cyclase-activating adrenergic receptor signaling pathway').
bp('negative regulation of adenylate cyclase-activating adrenergic receptor signaling pathway').
leaf('CRTC3','positive regulation of transcription by RNA polymerase II').
leaf('CRTC3','protein homotetramerization').
leaf('CRTC3','cytoplasm').
leaf('CRTC3','cytosol').
leaf('CRTC3','nucleoplasm').
leaf('CRTC3','nucleus').
go('macrophage activation',is_a,'myeloid leukocyte activation').
go('myeloid leukocyte activation',is_a,'leukocyte activation').
go('negative regulation of adenylate cyclase-activating adrenergic receptor signaling pathway',is_a,'negative regulation of adenylate cyclase-activating G protein-coupled receptor signaling pathway').
go('negative regulation of adenylate cyclase-activating G protein-coupled receptor signaling pathway',is_a,'regulation of adenylate cyclase-activating G protein-coupled receptor signaling pathway').
go('negative regulation of adenylate cyclase-activating G protein-coupled receptor signaling pathway',is_a,'negative regulation of G protein-coupled receptor signaling pathway').
go('regulation of adenylate cyclase-activating G protein-coupled receptor signaling pathway',is_a,'regulation of G protein-coupled receptor signaling pathway').
go('negative regulation of G protein-coupled receptor signaling pathway',is_a,'negative regulation of signal transduction').
go('regulation of G protein-coupled receptor signaling pathway',is_a,'regulation of signal transduction').
go('regulation of G protein-coupled receptor signaling pathway',regulates,'G protein-coupled receptor signaling pathway').
go('G protein-coupled receptor signaling pathway',is_a,'signal transduction').
go('negative regulation of G protein-coupled receptor signaling pathway',is_a,'regulation of G protein-coupled receptor signaling pathway').
go('regulation of adenylate cyclase-activating G protein-coupled receptor signaling pathway',regulates,'adenylate cyclase-activating G protein-coupled receptor signaling pathway').
go('adenylate cyclase-activating G protein-coupled receptor signaling pathway',is_a,'adenylate cyclase-modulating G protein-coupled receptor signaling pathway').
go('adenylate cyclase-modulating G protein-coupled receptor signaling pathway',is_a,'G protein-coupled receptor signaling pathway').
leaf('MRPS6','small ribosomal subunit rRNA binding').
fm('small ribosomal subunit rRNA binding').
leaf('MRPS6','structural constituent of ribosome').
fm('structural constituent of ribosome').
leaf('MRPS6','mitochondrial translation').
leaf('MRPS6','translation').
leaf('MRPS6','mitochondrial inner membrane').
leaf('MRPS6','mitochondrial small ribosomal subunit').
cc('mitochondrial small ribosomal subunit').
leaf('MRPS6','mitochondrion').
leaf('MRPS6','small ribosomal subunit').
cc('small ribosomal subunit').
go('small ribosomal subunit rRNA binding',is_a,'rRNA binding').
go('structural constituent of ribosome',is_a,'structural molecule activity').
go('structural molecule activity',is_a,'molecular_function').
go('structural constituent of ribosome',occurs_in,'ribosome').
go('ribosome',is_a,'intracellular membraneless organelle').
go('mitochondrial small ribosomal subunit',is_a,'mitochondrial protein-containing complex').
go('mitochondrial small ribosomal subunit',is_a,'organellar small ribosomal subunit').
go('mitochondrial protein-containing complex',is_a,'protein-containing complex').
go('organellar small ribosomal subunit',is_a,'small ribosomal subunit').
go('mitochondrial protein-containing complex',part_of,'mitochondrion').
go('small ribosomal subunit',is_a,'ribosomal subunit').
go('ribosomal subunit',is_a,'ribonucleoprotein complex').
go('ribosomal subunit',part_of,'ribosome').
go('organellar small ribosomal subunit',part_of,'organellar ribosome').
go('organellar ribosome',is_a,'ribosome').
go('organellar ribosome',part_of,'organelle').
go('mitochondrial small ribosomal subunit',part_of,'mitochondrial ribosome').
go('mitochondrial ribosome',is_a,'organellar ribosome').
go('mitochondrial ribosome',part_of,'mitochondrial matrix').
leaf('NDUFS6','electron transfer activity').
leaf('NDUFS6','NADH dehydrogenase (ubiquinone) activity').
fm('NADH dehydrogenase (ubiquinone) activity').
leaf('NDUFS6','aerobic respiration').
bp('aerobic respiration').
leaf('NDUFS6','mitochondrial electron transport, NADH to ubiquinone').
bp('mitochondrial electron transport, NADH to ubiquinone').
leaf('NDUFS6','proton motive force-driven mitochondrial ATP synthesis').
bp('proton motive force-driven mitochondrial ATP synthesis').
leaf('NDUFS6','mitochondrial inner membrane').
leaf('NDUFS6','mitochondrion').
leaf('NDUFS6','respiratory chain complex I').
cc('respiratory chain complex I').
go('NADH dehydrogenase (ubiquinone) activity',is_a,'oxidoreductase activity, acting on NAD(P)H, quinone or similar compound as acceptor').
go('oxidoreductase activity, acting on NAD(P)H, quinone or similar compound as acceptor',is_a,'oxidoreductase activity, acting on NAD(P)H').
go('oxidoreductase activity, acting on NAD(P)H',is_a,'oxidoreductase activity').
go('NADH dehydrogenase (ubiquinone) activity',is_a,'active monoatomic ion transmembrane transporter activity').
go('active monoatomic ion transmembrane transporter activity',is_a,'primary active transmembrane transporter activity').
go('NADH dehydrogenase (ubiquinone) activity',is_a,'proton transmembrane transporter activity').
go('proton transmembrane transporter activity',is_a,'monoatomic cation transmembrane transporter activity').
go('primary active transmembrane transporter activity',is_a,'active transmembrane transporter activity').
go('active transmembrane transporter activity',is_a,'transmembrane transporter activity').
go('active monoatomic ion transmembrane transporter activity',is_a,'monoatomic ion transmembrane transporter activity').
go('NADH dehydrogenase (ubiquinone) activity',is_a,'electron transfer activity').
go('NADH dehydrogenase (ubiquinone) activity',is_a,'oxidoreduction-driven active transmembrane transporter activity').
go('proton transmembrane transporter activity',part_of,'proton transmembrane transport').
go('oxidoreduction-driven active transmembrane transporter activity',is_a,'primary active transmembrane transporter activity').
go('proton transmembrane transport',is_a,'monoatomic cation transmembrane transport').
go('NADH dehydrogenase (ubiquinone) activity',is_a,'NADH dehydrogenase activity').
go('NADH dehydrogenase activity',is_a,'oxidoreductase activity, acting on NAD(P)H').
go('mitochondrial electron transport, NADH to ubiquinone',is_a,'aerobic electron transport chain').
go('aerobic electron transport chain',is_a,'respiratory electron transport chain').
go('aerobic electron transport chain',is_a,'aerobic respiration').
go('respiratory electron transport chain',is_a,'electron transport chain').
go('electron transport chain',is_a,'generation of precursor metabolites and energy').
go('respiratory electron transport chain',part_of,'cellular respiration').
go('aerobic electron transport chain',part_of,'oxidative phosphorylation').
go('oxidative phosphorylation',is_a,'aerobic respiration').
go('mitochondrial electron transport, NADH to ubiquinone',part_of,'mitochondrial ATP synthesis coupled electron transport').
go('mitochondrial ATP synthesis coupled electron transport',is_a,'ATP synthesis coupled electron transport').
go('ATP synthesis coupled electron transport',is_a,'respiratory electron transport chain').
go('ATP synthesis coupled electron transport',part_of,'oxidative phosphorylation').
go('mitochondrial ATP synthesis coupled electron transport',occurs_in,'mitochondrion').
go('proton motive force-driven mitochondrial ATP synthesis',is_a,'proton motive force-driven ATP synthesis').
go('proton motive force-driven ATP synthesis',is_a,'ATP biosynthetic process').
go('ATP biosynthetic process',is_a,'nucleoside triphosphate biosynthetic process').
go('ATP biosynthetic process',is_a,'ATP metabolic process').
go('nucleoside triphosphate biosynthetic process',is_a,'biosynthetic process').
go('ATP metabolic process',is_a,'purine ribonucleotide metabolic process').
go('nucleoside triphosphate biosynthetic process',is_a,'nucleoside triphosphate metabolic process').
go('ATP biosynthetic process',is_a,'purine ribonucleotide biosynthetic process').
go('purine ribonucleotide biosynthetic process',is_a,'ribonucleotide biosynthetic process').
go('ribonucleotide biosynthetic process',is_a,'ribonucleotide metabolic process').
go('ATP metabolic process',is_a,'purine ribonucleoside triphosphate metabolic process').
go('ATP metabolic process',is_a,'nucleoside triphosphate metabolic process').
go('ribonucleotide biosynthetic process',is_a,'ribose phosphate biosynthetic process').
go('ATP biosynthetic process',is_a,'purine ribonucleoside triphosphate biosynthetic process').
go('ribose phosphate biosynthetic process',is_a,'organophosphate biosynthetic process').
go('purine ribonucleoside triphosphate biosynthetic process',is_a,'purine nucleoside triphosphate biosynthetic process').
go('purine nucleoside triphosphate biosynthetic process',is_a,'nucleoside phosphate biosynthetic process').
go('ribose phosphate biosynthetic process',is_a,'carbohydrate derivative biosynthetic process').
go('ribose phosphate biosynthetic process',is_a,'ribose phosphate metabolic process').
go('purine nucleoside triphosphate biosynthetic process',is_a,'purine nucleoside triphosphate metabolic process').
go('ribonucleotide biosynthetic process',is_a,'nucleotide biosynthetic process').
go('nucleotide biosynthetic process',is_a,'nucleotide metabolic process').
go('purine ribonucleoside triphosphate biosynthetic process',is_a,'ribonucleoside triphosphate biosynthetic process').
go('nucleotide biosynthetic process',is_a,'nucleoside phosphate biosynthetic process').
go('ribonucleoside triphosphate biosynthetic process',is_a,'nucleoside phosphate biosynthetic process').
go('purine ribonucleoside triphosphate biosynthetic process',is_a,'purine ribonucleoside triphosphate metabolic process').
go('purine ribonucleotide biosynthetic process',is_a,'purine nucleotide biosynthetic process').
go('purine ribonucleotide biosynthetic process',is_a,'purine ribonucleotide metabolic process').
go('purine nucleotide biosynthetic process',is_a,'purine nucleotide metabolic process').
go('purine nucleotide biosynthetic process',is_a,'nucleotide biosynthetic process').
go('purine nucleotide biosynthetic process',is_a,'purine-containing compound biosynthetic process').
go('purine-containing compound biosynthetic process',is_a,'biosynthetic process').
go('purine-containing compound biosynthetic process',is_a,'purine-containing compound metabolic process').
go('proton motive force-driven mitochondrial ATP synthesis',part_of,'oxidative phosphorylation').
go('proton motive force-driven mitochondrial ATP synthesis',occurs_in,'mitochondrion').
go('respiratory chain complex I',is_a,'NADH dehydrogenase complex').
go('respiratory chain complex I',is_a,'transmembrane transporter complex').
go('transmembrane transporter complex',is_a,'transporter complex').
go('NADH dehydrogenase complex',is_a,'oxidoreductase complex').
go('transporter complex',is_a,'protein-containing complex').
go('oxidoreductase complex',is_a,'catalytic complex').
go('transmembrane transporter complex',is_a,'membrane protein complex').
go('NADH dehydrogenase complex',is_a,'membrane protein complex').
go('respiratory chain complex I',is_a,'respiratory chain complex').
go('respiratory chain complex',is_a,'protein-containing complex').
leaf('RPS6','protein kinase binding').
leaf('RPS6','RNA binding').
leaf('RPS6','structural constituent of ribosome').
leaf('RPS6','cytoplasmic translation').
leaf('RPS6','glucose homeostasis').
leaf('RPS6','positive regulation of apoptotic process').
bp('positive regulation of apoptotic process').
leaf('RPS6','positive regulation of cell population proliferation').
leaf('RPS6','ribosomal small subunit biogenesis').
bp('ribosomal small subunit biogenesis').
leaf('RPS6','rRNA processing').
bp('rRNA processing').
leaf('RPS6','TOR signaling').
bp('TOR signaling').
leaf('RPS6','translation').
leaf('RPS6','cell body').
leaf('RPS6','cytoplasm').
leaf('RPS6','cytoplasmic ribonucleoprotein granule').
cc('cytoplasmic ribonucleoprotein granule').
leaf('RPS6','cytosol').
leaf('RPS6','cytosolic ribosome').
cc('cytosolic ribosome').
leaf('RPS6','cytosolic small ribosomal subunit').
cc('cytosolic small ribosomal subunit').
leaf('RPS6','dendrite').
leaf('RPS6','endoplasmic reticulum').
leaf('RPS6','membrane').
leaf('RPS6','nucleolus').
leaf('RPS6','nucleoplasm').
leaf('RPS6','nucleus').
leaf('RPS6','ribonucleoprotein complex').
cc('ribonucleoprotein complex').
leaf('RPS6','small ribosomal subunit').
leaf('RPS6','small-subunit processome').
cc('small-subunit processome').
go('positive regulation of apoptotic process',is_a,'positive regulation of programmed cell death').
go('positive regulation of programmed cell death',is_a,'positive regulation of cellular process').
go('positive regulation of apoptotic process',is_a,'regulation of apoptotic process').
go('positive regulation of programmed cell death',is_a,'regulation of programmed cell death').
go('ribosomal small subunit biogenesis',is_a,'ribonucleoprotein complex biogenesis').
go('ribosomal small subunit biogenesis',part_of,'ribosome biogenesis').
go('rRNA processing',is_a,'RNA processing').
go('rRNA processing',is_a,'rRNA metabolic process').
go('rRNA processing',part_of,'ribosome biogenesis').
go('cytosolic ribosome',is_a,'ribosome').
go('cytosolic ribosome',part_of,'cytosol').
go('cytosolic small ribosomal subunit',is_a,'small ribosomal subunit').
go('cytosolic small ribosomal subunit',part_of,'cytosolic ribosome').
go('small-subunit processome',is_a,'nuclear protein-containing complex').
go('small-subunit processome',is_a,'preribosome').
go('preribosome',is_a,'ribonucleoprotein complex').
go('small-subunit processome',part_of,'nucleolus').
leaf('RPS6KA1','ATP binding').
leaf('RPS6KA1','magnesium ion binding').
leaf('RPS6KA1','mitogen-activated protein kinase binding').
leaf('RPS6KA1','PDZ domain binding').
fm('PDZ domain binding').
leaf('RPS6KA1','protein serine kinase activity').
leaf('RPS6KA1','protein serine/threonine kinase activity').
leaf('RPS6KA1','protein serine/threonine/tyrosine kinase activity').
fm('protein serine/threonine/tyrosine kinase activity').
leaf('RPS6KA1','ribosomal protein S6 kinase activity').
fm('ribosomal protein S6 kinase activity').
leaf('RPS6KA1','chemical synaptic transmission').
bp('chemical synaptic transmission').
leaf('RPS6KA1','hepatocyte proliferation').
bp('hepatocyte proliferation').
leaf('RPS6KA1','negative regulation of apoptotic process').
leaf('RPS6KA1','negative regulation of TOR signaling').
leaf('RPS6KA1','positive regulation of cell differentiation').
bp('positive regulation of cell differentiation').
leaf('RPS6KA1','positive regulation of cell growth').
leaf('RPS6KA1','positive regulation of DNA-templated transcription').
leaf('RPS6KA1','positive regulation of hepatic stellate cell activation').
bp('positive regulation of hepatic stellate cell activation').
leaf('RPS6KA1','positive regulation of transcription by RNA polymerase II').
leaf('RPS6KA1','protein phosphorylation').
leaf('RPS6KA1','regulation of DNA-templated transcription').
leaf('RPS6KA1','regulation of translation in response to stress').
bp('regulation of translation in response to stress').
leaf('RPS6KA1','signal transduction').
leaf('RPS6KA1','TORC1 signaling').
leaf('RPS6KA1','cytosol').
leaf('RPS6KA1','nucleoplasm').
leaf('RPS6KA1','synapse').
go('PDZ domain binding',is_a,'protein domain specific binding').
go('ribosomal protein S6 kinase activity',is_a,'protein serine/threonine kinase activity').
go('hepatocyte proliferation',is_a,'epithelial cell proliferation').
go('positive regulation of hepatic stellate cell activation',is_a,'positive regulation of cell activation').
go('positive regulation of hepatic stellate cell activation',is_a,'regulation of hepatic stellate cell activation').
go('positive regulation of cell activation',is_a,'positive regulation of multicellular organismal process').
go('regulation of hepatic stellate cell activation',is_a,'regulation of cell activation').
go('positive regulation of cell activation',is_a,'positive regulation of cellular process').
go('regulation of cell activation',is_a,'regulation of cellular process').
go('positive regulation of cell activation',is_a,'regulation of cell activation').
go('regulation of cell activation',is_a,'regulation of multicellular organismal process').
go('regulation of cell activation',regulates,'cell activation').
go('regulation of hepatic stellate cell activation',regulates,'hepatic stellate cell activation').
go('hepatic stellate cell activation',is_a,'fibroblast activation').
go('fibroblast activation',is_a,'cell activation').
go('regulation of translation in response to stress',is_a,'regulation of translation').
go('regulation of translation in response to stress',part_of,'cellular response to stress').
go('regulation of translation in response to stress',regulates,'translation').
leaf('RPS6KA2','ATP binding').
leaf('RPS6KA2','magnesium ion binding').
leaf('RPS6KA2','protein serine kinase activity').
leaf('RPS6KA2','protein serine/threonine kinase activity').
leaf('RPS6KA2','protein serine/threonine/tyrosine kinase activity').
leaf('RPS6KA2','ribosomal protein S6 kinase activity').
leaf('RPS6KA2','chemical synaptic transmission').
leaf('RPS6KA2','intracellular signal transduction').
leaf('RPS6KA2','negative regulation of cell cycle').
bp('negative regulation of cell cycle').
leaf('RPS6KA2','negative regulation of cell population proliferation').
leaf('RPS6KA2','positive regulation of apoptotic process').
leaf('RPS6KA2','signal transduction').
leaf('RPS6KA2','TORC1 signaling').
leaf('RPS6KA2','cytoplasm').
leaf('RPS6KA2','cytosol').
leaf('RPS6KA2','meiotic spindle').
cc('meiotic spindle').
leaf('RPS6KA2','nucleoplasm').
leaf('RPS6KA2','nucleus').
leaf('RPS6KA2','synapse').
go('meiotic spindle',is_a,'spindle').
leaf('RPS6KA3','ATP binding').
leaf('RPS6KA3','magnesium ion binding').
leaf('RPS6KA3','protein kinase activity').
leaf('RPS6KA3','protein kinase binding').
leaf('RPS6KA3','protein serine kinase activity').
leaf('RPS6KA3','protein serine/threonine kinase activity').
leaf('RPS6KA3','ribosomal protein S6 kinase activity').
leaf('RPS6KA3','central nervous system development').
bp('central nervous system development').
leaf('RPS6KA3','chemical synaptic transmission').
leaf('RPS6KA3','negative regulation of apoptotic process').
leaf('RPS6KA3','positive regulation of cell differentiation').
leaf('RPS6KA3','positive regulation of cell growth').
leaf('RPS6KA3','positive regulation of transcription by RNA polymerase II').
leaf('RPS6KA3','regulation of DNA-templated transcription').
leaf('RPS6KA3','regulation of translation in response to stress').
leaf('RPS6KA3','response to lipopolysaccharide').
leaf('RPS6KA3','signal transduction').
leaf('RPS6KA3','skeletal system development').
bp('skeletal system development').
leaf('RPS6KA3','toll-like receptor signaling pathway').
leaf('RPS6KA3','TORC1 signaling').
leaf('RPS6KA3','cytoplasm').
leaf('RPS6KA3','cytosol').
leaf('RPS6KA3','nucleolus').
leaf('RPS6KA3','nucleoplasm').
leaf('RPS6KA3','nucleus').
leaf('RPS6KA3','synapse').
go('skeletal system development',is_a,'animal gross anatomical part developmental process').
go('skeletal system development',is_a,'system development').
leaf('RPS6KA4','ATP binding').
leaf('RPS6KA4','histone H3S10 kinase activity').
fm('histone H3S10 kinase activity').
leaf('RPS6KA4','histone H3S28 kinase activity').
fm('histone H3S28 kinase activity').
leaf('RPS6KA4','magnesium ion binding').
leaf('RPS6KA4','protein serine kinase activity').
leaf('RPS6KA4','protein serine/threonine kinase activity').
leaf('RPS6KA4','ribosomal protein S6 kinase activity').
leaf('RPS6KA4','interleukin-1-mediated signaling pathway').
bp('interleukin-1-mediated signaling pathway').
leaf('RPS6KA4','intracellular signal transduction').
leaf('RPS6KA4','negative regulation of cytokine production').
bp('negative regulation of cytokine production').
leaf('RPS6KA4','positive regulation of transcription by RNA polymerase II').
leaf('RPS6KA4','post-translational protein modification').
bp('post-translational protein modification').
leaf('RPS6KA4','protein phosphorylation').
leaf('RPS6KA4','regulation of DNA-templated transcription').
leaf('RPS6KA4','TORC1 signaling').
leaf('RPS6KA4','nucleoplasm').
leaf('RPS6KA4','nucleus').
leaf('RPS6KA4','synapse').
go('histone H3S10 kinase activity',is_a,'histone H3 kinase activity').
go('histone H3S10 kinase activity',is_a,'protein serine/threonine kinase activity').
go('histone H3 kinase activity',is_a,'histone kinase activity').
go('histone kinase activity',is_a,'protein kinase activity').
go('histone kinase activity',is_a,'histone modifying activity').
go('histone H3S28 kinase activity',is_a,'protein serine/threonine kinase activity').
go('histone H3S28 kinase activity',is_a,'histone H3 kinase activity').
go('interleukin-1-mediated signaling pathway',is_a,'cytokine-mediated signaling pathway').
go('interleukin-1-mediated signaling pathway',part_of,'cellular response to interleukin-1').
go('cellular response to interleukin-1',is_a,'cellular response to cytokine stimulus').
go('cellular response to interleukin-1',is_a,'response to interleukin-1').
go('response to interleukin-1',is_a,'response to cytokine').
go('negative regulation of cytokine production',is_a,'negative regulation of multicellular organismal process').
go('negative regulation of cytokine production',is_a,'regulation of cytokine production').
go('negative regulation of cytokine production',is_a,'negative regulation of gene expression').
leaf('RPS6KA5','ATP binding').
leaf('RPS6KA5','histone H2AS1 kinase activity').
fm('histone H2AS1 kinase activity').
leaf('RPS6KA5','histone H3S10 kinase activity').
leaf('RPS6KA5','histone H3S28 kinase activity').
leaf('RPS6KA5','magnesium ion binding').
leaf('RPS6KA5','protein serine kinase activity').
leaf('RPS6KA5','protein serine/threonine kinase activity').
leaf('RPS6KA5','protein tyrosine kinase activity').
leaf('RPS6KA5','axon guidance').
leaf('RPS6KA5','interleukin-1-mediated signaling pathway').
leaf('RPS6KA5','intracellular signal transduction').
leaf('RPS6KA5','negative regulation of cytokine production').
leaf('RPS6KA5','negative regulation of DNA-templated transcription').
leaf('RPS6KA5','positive regulation of transcription by RNA polymerase II').
leaf('RPS6KA5','post-translational protein modification').
leaf('RPS6KA5','protein phosphorylation').
leaf('RPS6KA5','regulation of DNA-templated transcription').
leaf('RPS6KA5','regulation of postsynapse organization').
bp('regulation of postsynapse organization').
leaf('RPS6KA5','TORC1 signaling').
leaf('RPS6KA5','cytoplasm').
leaf('RPS6KA5','nucleoplasm').
leaf('RPS6KA5','nucleus').
go('histone H2AS1 kinase activity',is_a,'protein serine/threonine kinase activity').
go('histone H2AS1 kinase activity',is_a,'histone H2A kinase activity').
go('histone H2A kinase activity',is_a,'histone kinase activity').
go('regulation of postsynapse organization',is_a,'regulation of synapse organization').
go('regulation of synapse organization',is_a,'regulation of cellular component organization').
go('regulation of synapse organization',part_of,'regulation of synapse structure or activity').
go('regulation of synapse structure or activity',is_a,'regulation of biological quality').
go('regulation of synapse organization',regulates,'synapse organization').
go('regulation of postsynapse organization',regulates,'postsynapse organization').
go('postsynapse organization',is_a,'cellular component organization').
go('postsynapse organization',part_of,'synapse organization').
leaf('RPS6KA6','ATP binding').
leaf('RPS6KA6','magnesium ion binding').
leaf('RPS6KA6','protein kinase activity').
leaf('RPS6KA6','protein serine kinase activity').
leaf('RPS6KA6','ribosomal protein S6 kinase activity').
leaf('RPS6KA6','central nervous system development').
leaf('RPS6KA6','DNA damage response, signal transduction by p53 class mediator').
bp('DNA damage response, signal transduction by p53 class mediator').
leaf('RPS6KA6','negative regulation of embryonic development').
bp('negative regulation of embryonic development').
leaf('RPS6KA6','negative regulation of ERK1 and ERK2 cascade').
bp('negative regulation of ERK1 and ERK2 cascade').
leaf('RPS6KA6','negative regulation of mesoderm development').
bp('negative regulation of mesoderm development').
leaf('RPS6KA6','signal transduction').
leaf('RPS6KA6','TORC1 signaling').
leaf('RPS6KA6','cytosol').
leaf('RPS6KA6','nucleoplasm').
go('DNA damage response, signal transduction by p53 class mediator',is_a,'signal transduction by p53 class mediator').
go('DNA damage response, signal transduction by p53 class mediator',is_a,'signal transduction in response to DNA damage').
go('negative regulation of embryonic development',is_a,'regulation of embryonic development').
go('regulation of embryonic development',is_a,'regulation of multicellular organismal development').
go('regulation of embryonic development',regulates,'embryo development').
go('negative regulation of embryonic development',is_a,'negative regulation of multicellular organismal process').
go('negative regulation of embryonic development',is_a,'negative regulation of developmental process').
go('negative regulation of ERK1 and ERK2 cascade',is_a,'regulation of ERK1 and ERK2 cascade').
go('negative regulation of ERK1 and ERK2 cascade',is_a,'negative regulation of MAPK cascade').
go('negative regulation of MAPK cascade',is_a,'negative regulation of intracellular signal transduction').
go('negative regulation of MAPK cascade',is_a,'regulation of MAPK cascade').
go('negative regulation of mesoderm development',is_a,'regulation of mesoderm development').
go('negative regulation of mesoderm development',is_a,'negative regulation of developmental process').
go('regulation of mesoderm development',is_a,'regulation of developmental process').
go('regulation of mesoderm development',regulates,'mesoderm development').
go('mesoderm development',is_a,'tissue development').
go('mesoderm development',is_a,'animal gross anatomical part developmental process').
leaf('RPS6KB1','ATP binding').
leaf('RPS6KB1','protein kinase activity').
leaf('RPS6KB1','protein serine kinase activity').
leaf('RPS6KB1','protein serine/threonine kinase activity').
leaf('RPS6KB1','protein serine/threonine/tyrosine kinase activity').
leaf('RPS6KB1','cellular response to growth factor stimulus').
bp('cellular response to growth factor stimulus').
leaf('RPS6KB1','cellular response to insulin stimulus').
leaf('RPS6KB1','cellular response to nutrient').
bp('cellular response to nutrient').
leaf('RPS6KB1','cellular response to type II interferon').
bp('cellular response to type II interferon').
leaf('RPS6KB1','G1/S transition of mitotic cell cycle').
bp('G1/S transition of mitotic cell cycle').
leaf('RPS6KB1','long-chain fatty acid import into cell').
bp('long-chain fatty acid import into cell').
leaf('RPS6KB1','modulation of chemical synaptic transmission').
bp('modulation of chemical synaptic transmission').
leaf('RPS6KB1','negative regulation of apoptotic process').
leaf('RPS6KB1','negative regulation of insulin receptor signaling pathway').
leaf('RPS6KB1','negative regulation of TORC2 signaling').
bp('negative regulation of TORC2 signaling').
leaf('RPS6KB1','peptidyl-serine phosphorylation').
bp('peptidyl-serine phosphorylation').
leaf('RPS6KB1','phosphatidylinositol-mediated signaling').
bp('phosphatidylinositol-mediated signaling').
leaf('RPS6KB1','positive regulation of mitotic cell cycle').
bp('positive regulation of mitotic cell cycle').
leaf('RPS6KB1','positive regulation of mRNA splicing, via spliceosome').
bp('positive regulation of mRNA splicing, via spliceosome').
leaf('RPS6KB1','positive regulation of TORC1 signaling').
leaf('RPS6KB1','positive regulation of translation').
leaf('RPS6KB1','positive regulation of translational initiation').
bp('positive regulation of translational initiation').
leaf('RPS6KB1','regulation of kinase activity').
bp('regulation of kinase activity').
leaf('RPS6KB1','response to nutrient levels').
bp('response to nutrient levels').
leaf('RPS6KB1','signal transduction').
leaf('RPS6KB1','TOR signaling').
leaf('RPS6KB1','TORC1 signaling').
leaf('RPS6KB1','cytoplasm').
leaf('RPS6KB1','cytosol').
leaf('RPS6KB1','glutamatergic synapse').
leaf('RPS6KB1','mitochondrial outer membrane').
leaf('RPS6KB1','mitochondrion').
leaf('RPS6KB1','nucleoplasm').
leaf('RPS6KB1','nucleus').
go('cellular response to nutrient',is_a,'cellular response to nutrient levels').
go('cellular response to nutrient',is_a,'response to nutrient').
go('response to nutrient',is_a,'response to nutrient levels').
go('cellular response to nutrient',is_a,'cellular response to chemical stimulus').
go('response to nutrient',is_a,'response to chemical').
go('long-chain fatty acid import into cell',is_a,'lipid import into cell').
go('long-chain fatty acid import into cell',is_a,'import into cell').
go('lipid import into cell',is_a,'lipid transport').
go('long-chain fatty acid import into cell',is_a,'long-chain fatty acid transport').
go('long-chain fatty acid transport',is_a,'fatty acid transport').
go('fatty acid transport',is_a,'lipid transport').
go('fatty acid transport',is_a,'monocarboxylic acid transport').
go('monocarboxylic acid transport',is_a,'carboxylic acid transport').
go('carboxylic acid transport',is_a,'organic acid transport').
go('organic acid transport',is_a,'transport').
go('negative regulation of TORC2 signaling',is_a,'negative regulation of TOR signaling').
go('negative regulation of TORC2 signaling',is_a,'regulation of TORC2 signaling').
go('regulation of TORC2 signaling',is_a,'regulation of TOR signaling').
go('regulation of TORC2 signaling',regulates,'TORC2 signaling').
go('phosphatidylinositol-mediated signaling',is_a,'intracellular signal transduction').
go('positive regulation of mRNA splicing, via spliceosome',is_a,'regulation of mRNA splicing, via spliceosome').
go('positive regulation of mRNA splicing, via spliceosome',is_a,'positive regulation of mRNA processing').
go('positive regulation of mRNA processing',is_a,'positive regulation of mRNA metabolic process').
go('positive regulation of mRNA processing',is_a,'regulation of mRNA processing').
go('positive regulation of mRNA splicing, via spliceosome',is_a,'positive regulation of RNA splicing').
go('positive regulation of RNA splicing',is_a,'positive regulation of gene expression').
go('positive regulation of RNA splicing',is_a,'regulation of RNA splicing').
go('positive regulation of translational initiation',is_a,'positive regulation of translation').
go('positive regulation of translational initiation',is_a,'regulation of translational initiation').
go('regulation of translational initiation',is_a,'regulation of translation').
go('regulation of translational initiation',regulates,'translational initiation').
go('translational initiation',is_a,'metabolic process').
go('translational initiation',part_of,'translation').
go('regulation of kinase activity',is_a,'regulation of transferase activity').
go('regulation of transferase activity',is_a,'regulation of catalytic activity').
go('regulation of transferase activity',regulates,'transferase activity').
go('regulation of kinase activity',is_a,'regulation of phosphorylation').
go('regulation of kinase activity',regulates,'kinase activity').
leaf('RPS6KB2','ATP binding').
leaf('RPS6KB2','peptide binding').
fm('peptide binding').
leaf('RPS6KB2','protein kinase activity').
leaf('RPS6KB2','protein serine kinase activity').
leaf('RPS6KB2','protein serine/threonine kinase activity').
leaf('RPS6KB2','ribosomal protein S6 kinase activity').
leaf('RPS6KB2','positive regulation of translational initiation').
leaf('RPS6KB2','signal transduction').
leaf('RPS6KB2','TOR signaling').
leaf('RPS6KB2','TORC1 signaling').
leaf('RPS6KB2','translation').
leaf('RPS6KB2','cytosol').
leaf('RPS6KB2','nucleoplasm').
go('peptide binding',is_a,'binding').
leaf('RPS6KC1','ATP binding').
leaf('RPS6KC1','phosphatidylinositol binding').
fm('phosphatidylinositol binding').
leaf('RPS6KC1','signal transduction').
leaf('RPS6KC1','cytoplasm').
leaf('RPS6KC1','early endosome').
leaf('RPS6KC1','endosome').
leaf('RPS6KC1','lysosome').
leaf('RPS6KC1','membrane').
go('phosphatidylinositol binding',is_a,'anion binding').
leaf('RPS6KL1','ATP binding').
leaf('RSKR','ATP binding').
leaf('RSKR','protein kinase activity').
leaf('RSKR','protein serine kinase activity').
leaf('RSKR','protein serine/threonine kinase activity').
leaf('MYC','core promoter sequence-specific DNA binding').
fm('core promoter sequence-specific DNA binding').
leaf('MYC','DNA binding').
leaf('MYC','DNA-binding transcription activator activity, RNA polymerase II-specific').
fm('DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('MYC','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('MYC','DNA-binding transcription factor binding').
leaf('MYC','DNA-binding transcription repressor activity, RNA polymerase II-specific').
fm('DNA-binding transcription repressor activity, RNA polymerase II-specific').
leaf('MYC','E-box binding').
fm('E-box binding').
leaf('MYC','identical protein binding').
leaf('MYC','protein dimerization activity').
fm('protein dimerization activity').
leaf('MYC','protein-containing complex binding').
leaf('MYC','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
fm('RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('MYC','SCF ubiquitin ligase complex binding').
fm('SCF ubiquitin ligase complex binding').
leaf('MYC','transcription coregulator binding').
fm('transcription coregulator binding').
leaf('MYC','transcription regulator activator activity').
fm('transcription regulator activator activity').
leaf('MYC','branching involved in ureteric bud morphogenesis').
bp('branching involved in ureteric bud morphogenesis').
leaf('MYC','cellular response to hypoxia').
bp('cellular response to hypoxia').
leaf('MYC','cellular response to UV').
leaf('MYC','cellular response to xenobiotic stimulus').
leaf('MYC','chromatin remodeling').
bp('chromatin remodeling').
leaf('MYC','chromosome organization').
leaf('MYC','DNA damage response').
leaf('MYC','ERK1 and ERK2 cascade').
leaf('MYC','fibroblast apoptotic process').
bp('fibroblast apoptotic process').
leaf('MYC','G1/S transition of mitotic cell cycle').
leaf('MYC','intracellular iron ion homeostasis').
bp('intracellular iron ion homeostasis').
leaf('MYC','MAPK cascade').
leaf('MYC','negative regulation of apoptotic process').
leaf('MYC','negative regulation of cell division').
bp('negative regulation of cell division').
leaf('MYC','negative regulation of fibroblast proliferation').
bp('negative regulation of fibroblast proliferation').
leaf('MYC','negative regulation of gene expression via chromosomal CpG island methylation').
bp('negative regulation of gene expression via chromosomal CpG island methylation').
leaf('MYC','negative regulation of monocyte differentiation').
bp('negative regulation of monocyte differentiation').
leaf('MYC','negative regulation of stress-activated MAPK cascade').
bp('negative regulation of stress-activated MAPK cascade').
leaf('MYC','negative regulation of transcription by RNA polymerase II').
leaf('MYC','negative regulation of transcription initiation by RNA polymerase II').
bp('negative regulation of transcription initiation by RNA polymerase II').
leaf('MYC','positive regulation of cell population proliferation').
leaf('MYC','positive regulation of DNA-templated transcription').
leaf('MYC','positive regulation of epithelial cell proliferation').
leaf('MYC','positive regulation of fibroblast proliferation').
leaf('MYC','positive regulation of gene expression').
leaf('MYC','positive regulation of intrinsic apoptotic signaling pathway by p53 class mediator').
bp('positive regulation of intrinsic apoptotic signaling pathway by p53 class mediator').
leaf('MYC','positive regulation of mesenchymal cell proliferation').
bp('positive regulation of mesenchymal cell proliferation').
leaf('MYC','positive regulation of metanephric cap mesenchymal cell proliferation').
bp('positive regulation of metanephric cap mesenchymal cell proliferation').
leaf('MYC','positive regulation of miRNA transcription').
leaf('MYC','positive regulation of telomere maintenance').
leaf('MYC','positive regulation of transcription by RNA polymerase II').
leaf('MYC','protein-DNA complex disassembly').
bp('protein-DNA complex disassembly').
leaf('MYC','regulation of cell cycle process').
bp('regulation of cell cycle process').
leaf('MYC','regulation of gene expression').
bp('regulation of gene expression').
leaf('MYC','regulation of somatic stem cell population maintenance').
bp('regulation of somatic stem cell population maintenance').
leaf('MYC','regulation of telomere maintenance').
bp('regulation of telomere maintenance').
leaf('MYC','regulation of transcription by RNA polymerase II').
leaf('MYC','response to growth factor').
bp('response to growth factor').
leaf('MYC','response to xenobiotic stimulus').
bp('response to xenobiotic stimulus').
leaf('MYC','rRNA metabolic process').
bp('rRNA metabolic process').
leaf('MYC','chromatin').
leaf('MYC','chromosome').
leaf('MYC','cytoplasm').
leaf('MYC','Myc-Max complex').
cc('Myc-Max complex').
leaf('MYC','nucleolus').
leaf('MYC','nucleoplasm').
leaf('MYC','nucleus').
leaf('MYC','protein-containing complex').
leaf('MYC','RNA polymerase II transcription repressor complex').
cc('RNA polymerase II transcription repressor complex').
go('core promoter sequence-specific DNA binding',is_a,'transcription cis-regulatory region binding').
go('transcription cis-regulatory region binding',is_a,'sequence-specific double-stranded DNA binding').
go('transcription cis-regulatory region binding',is_a,'transcription regulatory region nucleic acid binding').
go('sequence-specific double-stranded DNA binding',is_a,'sequence-specific DNA binding').
go('transcription regulatory region nucleic acid binding',is_a,'nucleic acid binding').
go('sequence-specific DNA binding',is_a,'DNA binding').
go('sequence-specific double-stranded DNA binding',is_a,'double-stranded DNA binding').
go('DNA-binding transcription activator activity, RNA polymerase II-specific',is_a,'DNA-binding transcription factor activity, RNA polymerase II-specific').
go('DNA-binding transcription activator activity, RNA polymerase II-specific',is_a,'DNA-binding transcription activator activity').
go('DNA-binding transcription activator activity',is_a,'DNA-binding transcription factor activity').
go('DNA-binding transcription activator activity',part_of,'positive regulation of DNA-templated transcription').
go('DNA-binding transcription activator activity, RNA polymerase II-specific',part_of,'positive regulation of transcription by RNA polymerase II').
go('DNA-binding transcription repressor activity, RNA polymerase II-specific',is_a,'DNA-binding transcription factor activity, RNA polymerase II-specific').
go('DNA-binding transcription repressor activity, RNA polymerase II-specific',is_a,'DNA-binding transcription repressor activity').
go('DNA-binding transcription repressor activity',is_a,'DNA-binding transcription factor activity').
go('DNA-binding transcription repressor activity',part_of,'negative regulation of DNA-templated transcription').
go('DNA-binding transcription repressor activity, RNA polymerase II-specific',part_of,'negative regulation of transcription by RNA polymerase II').
go('E-box binding',is_a,'RNA polymerase II cis-regulatory region sequence-specific DNA binding').
go('RNA polymerase II cis-regulatory region sequence-specific DNA binding',is_a,'RNA polymerase II transcription regulatory region sequence-specific DNA binding').
go('RNA polymerase II cis-regulatory region sequence-specific DNA binding',is_a,'cis-regulatory region sequence-specific DNA binding').
go('RNA polymerase II transcription regulatory region sequence-specific DNA binding',is_a,'transcription cis-regulatory region binding').
go('cis-regulatory region sequence-specific DNA binding',is_a,'transcription cis-regulatory region binding').
go('SCF ubiquitin ligase complex binding',is_a,'protein-containing complex binding').
go('transcription regulator activator activity',is_a,'molecular function activator activity').
go('transcription regulator activator activity',part_of,'regulation of gene expression').
go('branching involved in ureteric bud morphogenesis',is_a,'branching morphogenesis of an epithelial tube').
go('branching morphogenesis of an epithelial tube',is_a,'morphogenesis of a branching epithelium').
go('branching morphogenesis of an epithelial tube',is_a,'tube morphogenesis').
go('morphogenesis of a branching epithelium',is_a,'morphogenesis of an epithelium').
go('morphogenesis of a branching epithelium',is_a,'morphogenesis of a branching structure').
go('morphogenesis of a branching structure',is_a,'multicellular organismal process').
go('morphogenesis of a branching structure',is_a,'anatomical structure morphogenesis').
go('branching morphogenesis of an epithelial tube',part_of,'epithelial tube morphogenesis').
go('branching involved in ureteric bud morphogenesis',part_of,'ureteric bud morphogenesis').
go('ureteric bud morphogenesis',is_a,'mesonephric tubule morphogenesis').
go('mesonephric tubule morphogenesis',is_a,'nephron tubule morphogenesis').
go('nephron tubule morphogenesis',is_a,'nephron epithelium morphogenesis').
go('nephron tubule morphogenesis',is_a,'renal tubule morphogenesis').
go('nephron epithelium morphogenesis',is_a,'morphogenesis of an epithelium').
go('renal tubule morphogenesis',is_a,'epithelial tube morphogenesis').
go('nephron epithelium morphogenesis',part_of,'nephron morphogenesis').
go('renal tubule morphogenesis',part_of,'renal tubule development').
go('nephron morphogenesis',is_a,'anatomical structure morphogenesis').
go('renal tubule development',is_a,'epithelium development').
go('nephron morphogenesis',part_of,'nephron development').
go('renal tubule development',is_a,'tube development').
go('nephron development',is_a,'animal gross anatomical part developmental process').
go('renal tubule development',part_of,'renal system development').
go('nephron development',part_of,'kidney development').
go('renal system development',is_a,'animal gross anatomical part developmental process').
go('kidney development',is_a,'animal organ development').
go('renal system development',is_a,'system development').
go('kidney development',part_of,'renal system development').
go('nephron epithelium morphogenesis',part_of,'nephron epithelium development').
go('nephron morphogenesis',part_of,'kidney morphogenesis').
go('nephron epithelium development',is_a,'kidney epithelium development').
go('kidney morphogenesis',is_a,'animal organ morphogenesis').
go('kidney epithelium development',is_a,'epithelium development').
go('kidney epithelium development',part_of,'kidney development').
go('kidney morphogenesis',part_of,'kidney development').
go('nephron epithelium development',part_of,'nephron development').
go('nephron tubule morphogenesis',part_of,'nephron tubule development').
go('nephron tubule development',is_a,'nephron epithelium development').
go('nephron tubule development',is_a,'renal tubule development').
go('mesonephric tubule morphogenesis',part_of,'mesonephric tubule development').
go('mesonephric tubule development',is_a,'mesonephric epithelium development').
go('mesonephric tubule development',is_a,'tube development').
go('mesonephric epithelium development',is_a,'kidney epithelium development').
go('mesonephric epithelium development',part_of,'mesonephros development').
go('mesonephros development',is_a,'kidney development').
go('ureteric bud morphogenesis',part_of,'ureteric bud development').
go('ureteric bud development',is_a,'mesonephric tubule development').
go('cellular response to hypoxia',is_a,'response to hypoxia').
go('cellular response to hypoxia',is_a,'cellular response to stress').
go('cellular response to hypoxia',is_a,'cellular response to decreased oxygen levels').
go('cellular response to decreased oxygen levels',is_a,'cellular response to oxygen levels').
go('cellular response to oxygen levels',is_a,'cellular response to chemical stimulus').
go('cellular response to oxygen levels',is_a,'response to oxygen levels').
go('cellular response to decreased oxygen levels',is_a,'response to decreased oxygen levels').
go('fibroblast apoptotic process',is_a,'apoptotic process').
go('intracellular iron ion homeostasis',is_a,'inorganic ion homeostasis').
go('intracellular iron ion homeostasis',is_a,'intracellular monoatomic cation homeostasis').
go('negative regulation of cell division',is_a,'regulation of cell division').
go('negative regulation of cell division',is_a,'negative regulation of cellular process').
go('regulation of cell division',is_a,'regulation of cellular process').
go('regulation of cell division',regulates,'cell division').
go('cell division',is_a,'cellular process').
go('negative regulation of fibroblast proliferation',is_a,'negative regulation of cell population proliferation').
go('negative regulation of fibroblast proliferation',is_a,'regulation of fibroblast proliferation').
go('negative regulation of gene expression via chromosomal CpG island methylation',is_a,'negative regulation of gene expression, epigenetic').
go('negative regulation of monocyte differentiation',is_a,'negative regulation of myeloid leukocyte differentiation').
go('negative regulation of monocyte differentiation',is_a,'regulation of monocyte differentiation').
go('negative regulation of myeloid leukocyte differentiation',is_a,'negative regulation of myeloid cell differentiation').
go('regulation of monocyte differentiation',is_a,'regulation of myeloid leukocyte differentiation').
go('negative regulation of myeloid cell differentiation',is_a,'regulation of myeloid cell differentiation').
go('regulation of myeloid leukocyte differentiation',is_a,'regulation of leukocyte differentiation').
go('regulation of myeloid cell differentiation',is_a,'regulation of hemopoiesis').
go('regulation of hemopoiesis',is_a,'regulation of multicellular organismal development').
go('regulation of leukocyte differentiation',is_a,'regulation of hemopoiesis').
go('regulation of leukocyte differentiation',regulates,'leukocyte differentiation').
go('regulation of hemopoiesis',is_a,'regulation of cell development').
go('leukocyte differentiation',is_a,'cell differentiation').
go('leukocyte differentiation',part_of,'hemopoiesis').
go('regulation of hemopoiesis',is_a,'regulation of immune system process').
go('regulation of myeloid leukocyte differentiation',is_a,'regulation of myeloid cell differentiation').
go('regulation of myeloid leukocyte differentiation',regulates,'myeloid leukocyte differentiation').
go('regulation of hemopoiesis',regulates,'hemopoiesis').
go('myeloid leukocyte differentiation',is_a,'myeloid cell differentiation').
go('regulation of myeloid cell differentiation',regulates,'myeloid cell differentiation').
go('negative regulation of myeloid cell differentiation',is_a,'negative regulation of cell differentiation').
go('myeloid cell differentiation',is_a,'cell differentiation').
go('myeloid cell differentiation',part_of,'hemopoiesis').
go('negative regulation of myeloid leukocyte differentiation',is_a,'negative regulation of leukocyte differentiation').
go('myeloid leukocyte differentiation',is_a,'leukocyte differentiation').
go('negative regulation of leukocyte differentiation',is_a,'negative regulation of hemopoiesis').
go('regulation of monocyte differentiation',regulates,'monocyte differentiation').
go('negative regulation of hemopoiesis',is_a,'regulation of hemopoiesis').
go('monocyte differentiation',is_a,'mononuclear cell differentiation').
go('negative regulation of hemopoiesis',is_a,'negative regulation of cell development').
go('mononuclear cell differentiation',is_a,'leukocyte differentiation').
go('negative regulation of hemopoiesis',is_a,'negative regulation of multicellular organismal process').
go('monocyte differentiation',is_a,'myeloid leukocyte differentiation').
go('negative regulation of hemopoiesis',is_a,'negative regulation of immune system process').
go('negative regulation of myeloid leukocyte differentiation',is_a,'regulation of myeloid leukocyte differentiation').
go('negative regulation of leukocyte differentiation',is_a,'regulation of leukocyte differentiation').
go('negative regulation of stress-activated MAPK cascade',is_a,'negative regulation of MAPK cascade').
go('negative regulation of stress-activated MAPK cascade',is_a,'regulation of stress-activated MAPK cascade').
go('regulation of stress-activated MAPK cascade',is_a,'regulation of MAPK cascade').
go('regulation of stress-activated MAPK cascade',is_a,'regulation of stress-activated protein kinase signaling cascade').
go('regulation of stress-activated protein kinase signaling cascade',is_a,'regulation of intracellular signal transduction').
go('regulation of stress-activated protein kinase signaling cascade',is_a,'regulation of cellular response to stress').
go('negative regulation of stress-activated MAPK cascade',is_a,'negative regulation of stress-activated protein kinase signaling cascade').
go('negative regulation of stress-activated protein kinase signaling cascade',is_a,'negative regulation of intracellular signal transduction').
go('regulation of stress-activated protein kinase signaling cascade',regulates,'stress-activated protein kinase signaling cascade').
go('negative regulation of stress-activated protein kinase signaling cascade',is_a,'regulation of stress-activated protein kinase signaling cascade').
go('stress-activated protein kinase signaling cascade',is_a,'intracellular signal transduction').
go('stress-activated protein kinase signaling cascade',is_a,'cellular response to stress').
go('regulation of stress-activated MAPK cascade',regulates,'stress-activated MAPK cascade').
go('stress-activated MAPK cascade',is_a,'stress-activated protein kinase signaling cascade').
go('stress-activated MAPK cascade',is_a,'MAPK cascade').
go('negative regulation of transcription initiation by RNA polymerase II',is_a,'negative regulation of DNA-templated transcription initiation').
go('negative regulation of transcription initiation by RNA polymerase II',is_a,'negative regulation of transcription by RNA polymerase II').
go('negative regulation of transcription initiation by RNA polymerase II',is_a,'regulation of transcription initiation by RNA polymerase II').
go('negative regulation of DNA-templated transcription initiation',is_a,'negative regulation of DNA-templated transcription').
go('regulation of transcription initiation by RNA polymerase II',is_a,'regulation of transcription by RNA polymerase II').
go('negative regulation of DNA-templated transcription initiation',is_a,'regulation of DNA-templated transcription initiation').
go('regulation of transcription initiation by RNA polymerase II',is_a,'regulation of DNA-templated transcription initiation').
go('regulation of DNA-templated transcription initiation',is_a,'regulation of DNA-templated transcription').
go('regulation of transcription initiation by RNA polymerase II',regulates,'transcription initiation at RNA polymerase II promoter').
go('regulation of DNA-templated transcription initiation',regulates,'DNA-templated transcription initiation').
go('DNA-templated transcription initiation',is_a,'RNA biosynthetic process').
go('transcription initiation at RNA polymerase II promoter',is_a,'DNA-templated transcription initiation').
go('DNA-templated transcription initiation',part_of,'DNA-templated transcription').
go('transcription initiation at RNA polymerase II promoter',part_of,'transcription by RNA polymerase II').
go('positive regulation of intrinsic apoptotic signaling pathway by p53 class mediator',is_a,'positive regulation of signal transduction by p53 class mediator').
go('positive regulation of intrinsic apoptotic signaling pathway by p53 class mediator',is_a,'regulation of intrinsic apoptotic signaling pathway by p53 class mediator').
go('positive regulation of signal transduction by p53 class mediator',is_a,'positive regulation of intracellular signal transduction').
go('regulation of intrinsic apoptotic signaling pathway by p53 class mediator',is_a,'regulation of intrinsic apoptotic signaling pathway').
go('regulation of intrinsic apoptotic signaling pathway',is_a,'regulation of intracellular signal transduction').
go('positive regulation of signal transduction by p53 class mediator',is_a,'regulation of signal transduction by p53 class mediator').
go('regulation of intrinsic apoptotic signaling pathway',is_a,'regulation of apoptotic signaling pathway').
go('regulation of apoptotic signaling pathway',is_a,'regulation of apoptotic process').
go('regulation of apoptotic signaling pathway',is_a,'regulation of signal transduction').
go('positive regulation of intrinsic apoptotic signaling pathway by p53 class mediator',is_a,'positive regulation of intrinsic apoptotic signaling pathway').
go('regulation of apoptotic signaling pathway',regulates,'apoptotic signaling pathway').
go('positive regulation of intrinsic apoptotic signaling pathway',is_a,'regulation of intrinsic apoptotic signaling pathway').
go('positive regulation of intrinsic apoptotic signaling pathway',is_a,'positive regulation of intracellular signal transduction').
go('regulation of intrinsic apoptotic signaling pathway',regulates,'intrinsic apoptotic signaling pathway').
go('positive regulation of intrinsic apoptotic signaling pathway',is_a,'positive regulation of apoptotic signaling pathway').
go('positive regulation of apoptotic signaling pathway',is_a,'positive regulation of signal transduction').
go('positive regulation of apoptotic signaling pathway',is_a,'regulation of apoptotic signaling pathway').
go('regulation of intrinsic apoptotic signaling pathway by p53 class mediator',is_a,'regulation of signal transduction by p53 class mediator').
go('positive regulation of apoptotic signaling pathway',is_a,'positive regulation of apoptotic process').
go('regulation of intrinsic apoptotic signaling pathway by p53 class mediator',regulates,'intrinsic apoptotic signaling pathway by p53 class mediator').
go('intrinsic apoptotic signaling pathway by p53 class mediator',is_a,'signal transduction by p53 class mediator').
go('intrinsic apoptotic signaling pathway by p53 class mediator',is_a,'intrinsic apoptotic signaling pathway').
go('positive regulation of mesenchymal cell proliferation',is_a,'positive regulation of cell population proliferation').
go('positive regulation of mesenchymal cell proliferation',is_a,'regulation of mesenchymal cell proliferation').
go('regulation of mesenchymal cell proliferation',is_a,'regulation of cell population proliferation').
go('regulation of mesenchymal cell proliferation',regulates,'mesenchymal cell proliferation').
go('mesenchymal cell proliferation',is_a,'cell population proliferation').
go('positive regulation of metanephric cap mesenchymal cell proliferation',is_a,'regulation of metanephric cap mesenchymal cell proliferation').
go('positive regulation of metanephric cap mesenchymal cell proliferation',is_a,'positive regulation of cell proliferation involved in kidney development').
go('regulation of metanephric cap mesenchymal cell proliferation',is_a,'regulation of mesenchymal cell proliferation').
go('positive regulation of cell proliferation involved in kidney development',is_a,'positive regulation of cell population proliferation').
go('regulation of metanephric cap mesenchymal cell proliferation',regulates,'metanephric cap mesenchymal cell proliferation involved in metanephros development').
go('positive regulation of metanephric cap mesenchymal cell proliferation',is_a,'positive regulation of kidney development').
go('metanephric cap mesenchymal cell proliferation involved in metanephros development',is_a,'cell proliferation involved in metanephros development').
go('cell proliferation involved in metanephros development',is_a,'cell proliferation involved in kidney development').
go('positive regulation of kidney development',is_a,'regulation of kidney development').
go('cell proliferation involved in kidney development',is_a,'cell population proliferation').
go('cell proliferation involved in kidney development',part_of,'kidney development').
go('regulation of kidney development',is_a,'regulation of developmental process').
go('cell proliferation involved in metanephros development',part_of,'metanephros development').
go('regulation of kidney development',regulates,'kidney development').
go('metanephros development',is_a,'kidney development').
go('positive regulation of kidney development',is_a,'positive regulation of multicellular organismal process').
go('metanephric cap mesenchymal cell proliferation involved in metanephros development',is_a,'mesenchymal cell proliferation').
go('metanephric cap mesenchymal cell proliferation involved in metanephros development',part_of,'metanephric cap morphogenesis').
go('positive regulation of kidney development',is_a,'positive regulation of developmental process').
go('metanephric cap morphogenesis',is_a,'metanephric mesenchyme morphogenesis').
go('positive regulation of metanephric cap mesenchymal cell proliferation',is_a,'positive regulation of mesenchymal cell proliferation').
go('metanephric mesenchyme morphogenesis',is_a,'kidney mesenchyme morphogenesis').
go('kidney mesenchyme morphogenesis',is_a,'mesenchyme morphogenesis').
go('mesenchyme morphogenesis',is_a,'tissue morphogenesis').
go('mesenchyme morphogenesis',part_of,'mesenchyme development').
go('mesenchyme morphogenesis',part_of,'animal organ morphogenesis').
go('kidney mesenchyme morphogenesis',part_of,'kidney mesenchyme development').
go('kidney mesenchyme development',is_a,'mesenchyme development').
go('kidney mesenchyme development',part_of,'kidney development').
go('metanephric mesenchyme morphogenesis',part_of,'metanephric mesenchyme development').
go('metanephric mesenchyme development',is_a,'kidney mesenchyme development').
go('metanephric mesenchyme development',part_of,'metanephros development').
go('metanephric cap morphogenesis',part_of,'metanephric cap development').
go('metanephric cap development',is_a,'metanephric mesenchyme development').
go('protein-DNA complex disassembly',is_a,'protein-DNA complex organization').
go('protein-DNA complex disassembly',is_a,'protein-containing complex disassembly').
go('protein-DNA complex organization',is_a,'protein-containing complex organization').
go('regulation of somatic stem cell population maintenance',is_a,'regulation of stem cell population maintenance').
go('regulation of stem cell population maintenance',is_a,'regulation of developmental process').
go('regulation of stem cell population maintenance',is_a,'regulation of multicellular organismal process').
go('regulation of stem cell population maintenance',regulates,'stem cell population maintenance').
go('stem cell population maintenance',is_a,'multicellular organismal process').
go('stem cell population maintenance',is_a,'maintenance of cell number').
go('maintenance of cell number',is_a,'developmental process').
go('regulation of somatic stem cell population maintenance',regulates,'somatic stem cell population maintenance').
go('somatic stem cell population maintenance',is_a,'stem cell population maintenance').
go('Myc-Max complex',is_a,'RNA polymerase II transcription regulator complex').
go('RNA polymerase II transcription repressor complex',is_a,'nuclear protein-containing complex').
go('RNA polymerase II transcription repressor complex',is_a,'transcription repressor complex').
go('transcription repressor complex',is_a,'transcription regulator complex').
leaf('SST','hormone activity').
fm('hormone activity').
leaf('SST','cell surface receptor signaling pathway').
leaf('SST','cell-cell signaling').
bp('cell-cell signaling').
leaf('SST','chemical synaptic transmission').
leaf('SST','digestion').
bp('digestion').
leaf('SST','G protein-coupled receptor signaling pathway').
bp('G protein-coupled receptor signaling pathway').
leaf('SST','hormone-mediated apoptotic signaling pathway').
bp('hormone-mediated apoptotic signaling pathway').
leaf('SST','hyperosmotic response').
bp('hyperosmotic response').
leaf('SST','negative regulation of cell population proliferation').
leaf('SST','regulation of cell migration').
bp('regulation of cell migration').
leaf('SST','regulation of postsynaptic membrane neurotransmitter receptor levels').
bp('regulation of postsynaptic membrane neurotransmitter receptor levels').
leaf('SST','response to acidic pH').
bp('response to acidic pH').
leaf('SST','response to amino acid').
leaf('SST','response to nutrient').
bp('response to nutrient').
leaf('SST','response to steroid hormone').
bp('response to steroid hormone').
leaf('SST','response to xenobiotic stimulus').
leaf('SST','somatostatin signaling pathway').
bp('somatostatin signaling pathway').
leaf('SST','cytosol').
leaf('SST','extracellular region').
leaf('SST','GABA-ergic synapse').
cc('GABA-ergic synapse').
leaf('SST','neuronal cell body').
leaf('SST','neuronal dense core vesicle').
cc('neuronal dense core vesicle').
go('hormone activity',is_a,'receptor ligand activity').
go('digestion',is_a,'multicellular organismal process').
go('hormone-mediated apoptotic signaling pathway',is_a,'apoptotic signaling pathway').
go('hormone-mediated apoptotic signaling pathway',is_a,'hormone-mediated signaling pathway').
go('hormone-mediated signaling pathway',is_a,'signal transduction').
go('hormone-mediated signaling pathway',part_of,'cellular response to hormone stimulus').
go('hyperosmotic response',is_a,'response to osmotic stress').
go('response to osmotic stress',is_a,'response to abiotic stimulus').
go('response to osmotic stress',is_a,'response to stress').
go('regulation of postsynaptic membrane neurotransmitter receptor levels',is_a,'regulation of biological quality').
go('response to acidic pH',is_a,'response to pH').
go('response to pH',is_a,'response to abiotic stimulus').
go('response to steroid hormone',is_a,'response to lipid').
go('response to steroid hormone',is_a,'response to hormone').
go('somatostatin signaling pathway',is_a,'somatostatin receptor signaling pathway').
go('somatostatin signaling pathway',is_a,'hormone-mediated signaling pathway').
go('somatostatin receptor signaling pathway',is_a,'G protein-coupled receptor signaling pathway').
go('GABA-ergic synapse',is_a,'synapse').
go('neuronal dense core vesicle',is_a,'dense core granule').
go('dense core granule',is_a,'secretory granule').
leaf('SSTR1','neuropeptide binding').
fm('neuropeptide binding').
leaf('SSTR1','somatostatin receptor activity').
fm('somatostatin receptor activity').
leaf('SSTR1','cellular response to estradiol stimulus').
leaf('SSTR1','cerebellum development').
bp('cerebellum development').
leaf('SSTR1','forebrain development').
bp('forebrain development').
leaf('SSTR1','G protein-coupled receptor signaling pathway, coupled to cyclic nucleotide second messenger').
bp('G protein-coupled receptor signaling pathway, coupled to cyclic nucleotide second messenger').
leaf('SSTR1','negative regulation of cell population proliferation').
leaf('SSTR1','neuropeptide signaling pathway').
bp('neuropeptide signaling pathway').
leaf('SSTR1','response to starvation').
bp('response to starvation').
leaf('SSTR1','spermatogenesis').
bp('spermatogenesis').
leaf('SSTR1','neuron projection').
leaf('SSTR1','plasma membrane').
go('neuropeptide binding',is_a,'peptide binding').
go('somatostatin receptor activity',is_a,'neuropeptide receptor activity').
go('neuropeptide receptor activity',is_a,'G protein-coupled peptide receptor activity').
go('G protein-coupled peptide receptor activity',is_a,'peptide receptor activity').
go('G protein-coupled peptide receptor activity',is_a,'G protein-coupled receptor activity').
go('peptide receptor activity',is_a,'signaling receptor activity').
go('G protein-coupled receptor activity',is_a,'transmembrane signaling receptor activity').
go('G protein-coupled receptor activity',part_of,'G protein-coupled receptor signaling pathway').
go('neuropeptide receptor activity',part_of,'neuropeptide signaling pathway').
go('neuropeptide signaling pathway',is_a,'G protein-coupled receptor signaling pathway').
go('somatostatin receptor activity',part_of,'somatostatin signaling pathway').
go('G protein-coupled receptor signaling pathway, coupled to cyclic nucleotide second messenger',is_a,'G protein-coupled receptor signaling pathway').
go('spermatogenesis',is_a,'male gamete generation').
go('spermatogenesis',is_a,'developmental process involved in reproduction').
go('developmental process involved in reproduction',is_a,'developmental process').
go('male gamete generation',is_a,'gamete generation').
go('developmental process involved in reproduction',is_a,'reproductive process').
go('gamete generation',is_a,'multicellular organismal reproductive process').
go('multicellular organismal reproductive process',is_a,'reproductive process').
go('gamete generation',part_of,'sexual reproduction').
go('sexual reproduction',is_a,'reproductive process').
leaf('SSTR2','neuropeptide binding').
leaf('SSTR2','PDZ domain binding').
leaf('SSTR2','somatostatin receptor activity').
leaf('SSTR2','cellular response to estradiol stimulus').
leaf('SSTR2','cellular response to glucocorticoid stimulus').
bp('cellular response to glucocorticoid stimulus').
leaf('SSTR2','G protein-coupled receptor signaling pathway, coupled to cyclic nucleotide second messenger').
leaf('SSTR2','negative regulation of cell population proliferation').
leaf('SSTR2','neuropeptide signaling pathway').
leaf('SSTR2','cytosol').
leaf('SSTR2','neuron projection').
leaf('SSTR2','plasma membrane').
go('cellular response to glucocorticoid stimulus',is_a,'response to glucocorticoid').
go('cellular response to glucocorticoid stimulus',is_a,'cellular response to corticosteroid stimulus').
go('response to glucocorticoid',is_a,'response to corticosteroid').
go('cellular response to corticosteroid stimulus',is_a,'cellular response to steroid hormone stimulus').
go('response to corticosteroid',is_a,'response to steroid hormone').
go('cellular response to steroid hormone stimulus',is_a,'response to steroid hormone').
go('cellular response to steroid hormone stimulus',is_a,'cellular response to lipid').
go('cellular response to steroid hormone stimulus',is_a,'cellular response to hormone stimulus').
go('cellular response to corticosteroid stimulus',is_a,'response to corticosteroid').
leaf('SSTR3','G protein-coupled receptor activity').
fm('G protein-coupled receptor activity').
leaf('SSTR3','neuropeptide binding').
leaf('SSTR3','signaling receptor binding').
fm('signaling receptor binding').
leaf('SSTR3','somatostatin receptor activity').
leaf('SSTR3','cell-cell signaling').
leaf('SSTR3','G protein-coupled receptor signaling pathway, coupled to cyclic nucleotide second messenger').
leaf('SSTR3','hormone-mediated apoptotic signaling pathway').
leaf('SSTR3','negative regulation of cell population proliferation').
leaf('SSTR3','neuropeptide signaling pathway').
leaf('SSTR3','9+0 non-motile cilium').
cc('9+0 non-motile cilium').
leaf('SSTR3','ciliary membrane').
cc('ciliary membrane').
leaf('SSTR3','cilium').
cc('cilium').
leaf('SSTR3','neuron projection').
leaf('SSTR3','non-motile cilium').
cc('non-motile cilium').
leaf('SSTR3','plasma membrane').
go('9+0 non-motile cilium',is_a,'non-motile cilium').
go('non-motile cilium',is_a,'cilium').
go('cilium',is_a,'membrane-bounded organelle').
go('cilium',is_a,'plasma membrane bounded cell projection').
go('ciliary membrane',is_a,'bounding membrane of organelle').
go('ciliary membrane',is_a,'cell projection membrane').
go('ciliary membrane',part_of,'cilium').
leaf('SSTR4','neuropeptide binding').
leaf('SSTR4','somatostatin receptor activity').
leaf('SSTR4','cellular response to glucocorticoid stimulus').
leaf('SSTR4','G protein-coupled receptor signaling pathway').
leaf('SSTR4','G protein-coupled receptor signaling pathway, coupled to cyclic nucleotide second messenger').
leaf('SSTR4','negative regulation of cell population proliferation').
leaf('SSTR4','neuropeptide signaling pathway').
leaf('SSTR4','neuron projection').
leaf('SSTR4','plasma membrane').
leaf('SSTR5','neuropeptide binding').
leaf('SSTR5','somatostatin receptor activity').
leaf('SSTR5','cellular response to glucocorticoid stimulus').
leaf('SSTR5','G protein-coupled receptor signaling pathway').
leaf('SSTR5','G protein-coupled receptor signaling pathway, coupled to cyclic nucleotide second messenger').
leaf('SSTR5','negative regulation of cell population proliferation').
leaf('SSTR5','neuropeptide signaling pathway').
leaf('SSTR5','positive regulation of cytokinesis').
bp('positive regulation of cytokinesis').
leaf('SSTR5','regulation of insulin secretion').
bp('regulation of insulin secretion').
leaf('SSTR5','neuron projection').
leaf('SSTR5','plasma membrane').
go('positive regulation of cytokinesis',is_a,'positive regulation of cell division').
go('positive regulation of cytokinesis',is_a,'regulation of cytokinesis').
go('positive regulation of cell division',is_a,'positive regulation of cellular process').
go('regulation of cytokinesis',is_a,'regulation of cell cycle process').
go('positive regulation of cell division',is_a,'regulation of cell division').
go('regulation of cytokinesis',is_a,'regulation of cell division').
go('positive regulation of cytokinesis',is_a,'positive regulation of cell cycle process').
go('regulation of cytokinesis',regulates,'cytokinesis').
go('cytokinesis',is_a,'cell cycle process').
go('cytokinesis',part_of,'cell division').
go('regulation of insulin secretion',is_a,'regulation of protein secretion').
go('regulation of insulin secretion',is_a,'regulation of peptide hormone secretion').
go('regulation of protein secretion',is_a,'regulation of protein transport').
go('regulation of peptide hormone secretion',is_a,'regulation of peptide secretion').
go('regulation of protein transport',is_a,'regulation of establishment of protein localization').
go('regulation of peptide secretion',is_a,'regulation of peptide transport').
go('regulation of peptide transport',is_a,'regulation of transport').
go('regulation of protein transport',is_a,'regulation of transport').
go('regulation of peptide transport',regulates,'peptide transport').
go('regulation of protein transport',regulates,'protein transport').
go('peptide transport',is_a,'transport').
go('regulation of peptide secretion',is_a,'regulation of secretion').
go('regulation of protein secretion',is_a,'regulation of secretion by cell').
go('regulation of peptide secretion',regulates,'peptide secretion').
go('regulation of secretion by cell',is_a,'regulation of cellular process').
go('peptide secretion',is_a,'secretion').
go('regulation of secretion by cell',is_a,'regulation of secretion').
go('regulation of secretion by cell',regulates,'secretion by cell').
go('peptide secretion',is_a,'peptide transport').
go('secretion by cell',is_a,'secretion').
go('regulation of peptide hormone secretion',is_a,'regulation of hormone secretion').
go('secretion by cell',is_a,'export from cell').
go('regulation of hormone secretion',is_a,'regulation of signaling').
go('export from cell',is_a,'cellular process').
go('regulation of hormone secretion',is_a,'regulation of hormone levels').
go('export from cell',is_a,'transport').
go('regulation of hormone levels',is_a,'regulation of biological quality').
go('regulation of protein secretion',regulates,'protein secretion').
go('regulation of hormone secretion',is_a,'regulation of cell communication').
go('protein secretion',is_a,'protein transport').
go('protein secretion',is_a,'protein localization to extracellular region').
go('regulation of hormone secretion',is_a,'regulation of secretion by cell').
go('protein localization to extracellular region',is_a,'macromolecule localization').
go('regulation of hormone secretion',regulates,'hormone secretion').
go('protein secretion',is_a,'establishment of protein localization to extracellular region').
go('hormone secretion',is_a,'signal release').
go('establishment of protein localization to extracellular region',is_a,'establishment of protein localization').
go('signal release',is_a,'secretion by cell').
go('protein secretion',is_a,'secretion by cell').
go('signal release',part_of,'cell-cell signaling').
go('hormone secretion',is_a,'hormone transport').
go('hormone transport',is_a,'transport').
go('hormone transport',is_a,'regulation of hormone levels').
go('regulation of peptide hormone secretion',regulates,'peptide hormone secretion').
go('peptide hormone secretion',is_a,'peptide secretion').
go('peptide hormone secretion',is_a,'nitrogen compound transport').
go('nitrogen compound transport',is_a,'transport').
go('peptide hormone secretion',is_a,'hormone secretion').
go('regulation of insulin secretion',regulates,'insulin secretion').
go('insulin secretion',is_a,'protein secretion').
go('insulin secretion',is_a,'peptide hormone secretion').
leaf('RUNX1','ATP binding').
leaf('RUNX1','calcium ion binding').
leaf('RUNX1','DNA binding').
leaf('RUNX1','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('RUNX1','DNA-binding transcription factor activity').
fm('DNA-binding transcription factor activity').
leaf('RUNX1','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('RUNX1','DNA-binding transcription factor binding').
leaf('RUNX1','protein heterodimerization activity').
leaf('RUNX1','protein homodimerization activity').
leaf('RUNX1','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('RUNX1','RNA polymerase II transcription regulatory region sequence-specific DNA binding').
fm('RNA polymerase II transcription regulatory region sequence-specific DNA binding').
leaf('RUNX1','transcription cis-regulatory region binding').
fm('transcription cis-regulatory region binding').
leaf('RUNX1','transcription coactivator binding').
leaf('RUNX1','transcription corepressor binding').
fm('transcription corepressor binding').
leaf('RUNX1','cardiac muscle tissue regeneration').
bp('cardiac muscle tissue regeneration').
leaf('RUNX1','chondrocyte differentiation').
bp('chondrocyte differentiation').
leaf('RUNX1','hematopoietic stem cell proliferation').
bp('hematopoietic stem cell proliferation').
leaf('RUNX1','hemopoiesis').
leaf('RUNX1','myeloid cell differentiation').
bp('myeloid cell differentiation').
leaf('RUNX1','myeloid leukocyte differentiation').
bp('myeloid leukocyte differentiation').
leaf('RUNX1','negative regulation of CD4-positive, alpha-beta T cell differentiation').
bp('negative regulation of CD4-positive, alpha-beta T cell differentiation').
leaf('RUNX1','negative regulation of granulocyte differentiation').
bp('negative regulation of granulocyte differentiation').
leaf('RUNX1','negative regulation of transcription by RNA polymerase II').
leaf('RUNX1','neuron differentiation').
leaf('RUNX1','ossification').
leaf('RUNX1','peripheral nervous system neuron development').
bp('peripheral nervous system neuron development').
leaf('RUNX1','positive regulation of angiogenesis').
bp('positive regulation of angiogenesis').
leaf('RUNX1','positive regulation of CD8-positive, alpha-beta T cell differentiation').
bp('positive regulation of CD8-positive, alpha-beta T cell differentiation').
leaf('RUNX1','positive regulation of collagen biosynthetic process').
bp('positive regulation of collagen biosynthetic process').
leaf('RUNX1','positive regulation of DNA-templated transcription').
leaf('RUNX1','positive regulation of extracellular matrix organization').
bp('positive regulation of extracellular matrix organization').
leaf('RUNX1','positive regulation of granulocyte differentiation').
bp('positive regulation of granulocyte differentiation').
leaf('RUNX1','positive regulation of interleukin-2 production').
bp('positive regulation of interleukin-2 production').
leaf('RUNX1','positive regulation of transcription by RNA polymerase II').
leaf('RUNX1','regulation of cardiac muscle cell proliferation').
bp('regulation of cardiac muscle cell proliferation').
leaf('RUNX1','regulation of cell differentiation').
leaf('RUNX1','regulation of connective tissue replacement').
bp('regulation of connective tissue replacement').
leaf('RUNX1','regulation of plasminogen activation').
bp('regulation of plasminogen activation').
leaf('RUNX1','regulation of transcription by RNA polymerase II').
leaf('RUNX1','chromatin').
leaf('RUNX1','core-binding factor complex').
cc('core-binding factor complex').
leaf('RUNX1','nucleoplasm').
leaf('RUNX1','nucleus').
go('transcription corepressor binding',is_a,'transcription coregulator binding').
go('cardiac muscle tissue regeneration',is_a,'tissue regeneration').
go('tissue regeneration',is_a,'regeneration').
go('tissue regeneration',is_a,'developmental growth').
go('regeneration',is_a,'anatomical structure development').
go('tissue regeneration',is_a,'animal gross anatomical part developmental process').
go('chondrocyte differentiation',is_a,'cell differentiation').
go('chondrocyte differentiation',part_of,'cartilage development').
go('cartilage development',is_a,'animal organ development').
go('cartilage development',part_of,'connective tissue development').
go('cartilage development',part_of,'skeletal system development').
go('connective tissue development',is_a,'animal gross anatomical part developmental process').
go('connective tissue development',is_a,'tissue development').
go('hematopoietic stem cell proliferation',is_a,'stem cell proliferation').
go('stem cell proliferation',is_a,'cell population proliferation').
go('hematopoietic stem cell proliferation',part_of,'hemopoiesis').
go('negative regulation of CD4-positive, alpha-beta T cell differentiation',is_a,'negative regulation of alpha-beta T cell differentiation').
go('negative regulation of CD4-positive, alpha-beta T cell differentiation',is_a,'regulation of CD4-positive, alpha-beta T cell differentiation').
go('regulation of CD4-positive, alpha-beta T cell differentiation',is_a,'regulation of CD4-positive, alpha-beta T cell activation').
go('negative regulation of alpha-beta T cell differentiation',is_a,'negative regulation of alpha-beta T cell activation').
go('negative regulation of alpha-beta T cell activation',is_a,'regulation of alpha-beta T cell activation').
go('regulation of CD4-positive, alpha-beta T cell activation',is_a,'regulation of alpha-beta T cell activation').
go('regulation of alpha-beta T cell activation',is_a,'regulation of T cell activation').
go('regulation of CD4-positive, alpha-beta T cell activation',regulates,'CD4-positive, alpha-beta T cell activation').
go('CD4-positive, alpha-beta T cell activation',is_a,'alpha-beta T cell activation').
go('regulation of T cell activation',is_a,'regulation of lymphocyte activation').
go('regulation of lymphocyte activation',is_a,'regulation of leukocyte activation').
go('alpha-beta T cell activation',is_a,'T cell activation').
go('regulation of leukocyte activation',is_a,'regulation of immune system process').
go('regulation of leukocyte activation',is_a,'regulation of cell activation').
go('regulation of CD4-positive, alpha-beta T cell differentiation',is_a,'regulation of alpha-beta T cell differentiation').
go('regulation of alpha-beta T cell differentiation',is_a,'regulation of alpha-beta T cell activation').
go('regulation of alpha-beta T cell differentiation',is_a,'regulation of T cell differentiation').
go('regulation of leukocyte activation',regulates,'leukocyte activation').
go('regulation of T cell differentiation',is_a,'regulation of lymphocyte differentiation').
go('regulation of lymphocyte activation',regulates,'lymphocyte activation').
go('regulation of lymphocyte differentiation',is_a,'regulation of leukocyte differentiation').
go('regulation of T cell activation',regulates,'T cell activation').
go('regulation of alpha-beta T cell activation',regulates,'alpha-beta T cell activation').
go('negative regulation of alpha-beta T cell activation',is_a,'negative regulation of T cell activation').
go('negative regulation of T cell activation',is_a,'regulation of T cell activation').
go('negative regulation of T cell activation',is_a,'negative regulation of leukocyte cell-cell adhesion').
go('negative regulation of leukocyte cell-cell adhesion',is_a,'regulation of leukocyte cell-cell adhesion').
go('regulation of leukocyte cell-cell adhesion',is_a,'regulation of cell-cell adhesion').
go('regulation of lymphocyte differentiation',is_a,'regulation of lymphocyte activation').
go('regulation of lymphocyte differentiation',regulates,'lymphocyte differentiation').
go('regulation of leukocyte cell-cell adhesion',regulates,'leukocyte cell-cell adhesion').
go('lymphocyte differentiation',is_a,'mononuclear cell differentiation').
go('negative regulation of leukocyte cell-cell adhesion',is_a,'negative regulation of cell-cell adhesion').
go('lymphocyte differentiation',is_a,'lymphocyte activation').
go('regulation of T cell differentiation',is_a,'regulation of T cell activation').
go('negative regulation of T cell activation',is_a,'negative regulation of lymphocyte activation').
go('regulation of T cell differentiation',regulates,'T cell differentiation').
go('negative regulation of lymphocyte activation',is_a,'negative regulation of leukocyte activation').
go('negative regulation of leukocyte activation',is_a,'negative regulation of immune system process').
go('T cell differentiation',is_a,'lymphocyte differentiation').
go('T cell differentiation',is_a,'T cell activation').
go('negative regulation of leukocyte activation',is_a,'regulation of leukocyte activation').
go('regulation of alpha-beta T cell differentiation',regulates,'alpha-beta T cell differentiation').
go('negative regulation of leukocyte activation',is_a,'negative regulation of cell activation').
go('alpha-beta T cell differentiation',is_a,'alpha-beta T cell activation').
go('negative regulation of cell activation',is_a,'negative regulation of multicellular organismal process').
go('alpha-beta T cell differentiation',is_a,'T cell differentiation').
go('negative regulation of cell activation',is_a,'negative regulation of cellular process').
go('regulation of CD4-positive, alpha-beta T cell differentiation',regulates,'CD4-positive, alpha-beta T cell differentiation').
go('negative regulation of cell activation',is_a,'regulation of cell activation').
go('CD4-positive, alpha-beta T cell differentiation',is_a,'CD4-positive, alpha-beta T cell activation').
go('negative regulation of lymphocyte activation',is_a,'regulation of lymphocyte activation').
go('CD4-positive, alpha-beta T cell differentiation',is_a,'alpha-beta T cell differentiation').
go('negative regulation of alpha-beta T cell differentiation',is_a,'regulation of alpha-beta T cell differentiation').
go('negative regulation of CD4-positive, alpha-beta T cell differentiation',is_a,'negative regulation of CD4-positive, alpha-beta T cell activation').
go('negative regulation of alpha-beta T cell differentiation',is_a,'negative regulation of T cell differentiation').
go('negative regulation of CD4-positive, alpha-beta T cell activation',is_a,'regulation of CD4-positive, alpha-beta T cell activation').
go('negative regulation of T cell differentiation',is_a,'negative regulation of lymphocyte differentiation').
go('negative regulation of CD4-positive, alpha-beta T cell activation',is_a,'negative regulation of alpha-beta T cell activation').
go('negative regulation of lymphocyte differentiation',is_a,'regulation of lymphocyte differentiation').
go('negative regulation of T cell differentiation',is_a,'negative regulation of T cell activation').
go('negative regulation of lymphocyte differentiation',is_a,'negative regulation of leukocyte differentiation').
go('negative regulation of T cell differentiation',is_a,'regulation of T cell differentiation').
go('negative regulation of lymphocyte differentiation',is_a,'negative regulation of lymphocyte activation').
go('negative regulation of granulocyte differentiation',is_a,'negative regulation of myeloid leukocyte differentiation').
go('negative regulation of granulocyte differentiation',is_a,'regulation of granulocyte differentiation').
go('regulation of granulocyte differentiation',is_a,'regulation of myeloid leukocyte differentiation').
go('regulation of granulocyte differentiation',regulates,'granulocyte differentiation').
go('granulocyte differentiation',is_a,'myeloid leukocyte differentiation').
go('peripheral nervous system neuron development',is_a,'neuron development').
go('peripheral nervous system neuron development',part_of,'peripheral nervous system neuron differentiation').
go('peripheral nervous system neuron differentiation',is_a,'neuron differentiation').
go('peripheral nervous system neuron differentiation',part_of,'peripheral nervous system development').
go('positive regulation of angiogenesis',is_a,'positive regulation of vasculature development').
go('positive regulation of angiogenesis',is_a,'regulation of angiogenesis').
go('positive regulation of vasculature development',is_a,'positive regulation of multicellular organismal process').
go('regulation of angiogenesis',is_a,'regulation of anatomical structure morphogenesis').
go('positive regulation of vasculature development',is_a,'regulation of vasculature development').
go('regulation of angiogenesis',is_a,'regulation of vasculature development').
go('regulation of vasculature development',is_a,'regulation of multicellular organismal development').
go('regulation of angiogenesis',regulates,'angiogenesis').
go('regulation of vasculature development',regulates,'vasculature development').
go('positive regulation of vasculature development',is_a,'positive regulation of developmental process').
go('positive regulation of CD8-positive, alpha-beta T cell differentiation',is_a,'positive regulation of alpha-beta T cell differentiation').
go('positive regulation of CD8-positive, alpha-beta T cell differentiation',is_a,'regulation of CD8-positive, alpha-beta T cell differentiation').
go('positive regulation of alpha-beta T cell differentiation',is_a,'positive regulation of alpha-beta T cell activation').
go('regulation of CD8-positive, alpha-beta T cell differentiation',is_a,'regulation of CD8-positive, alpha-beta T cell activation').
go('positive regulation of alpha-beta T cell activation',is_a,'regulation of alpha-beta T cell activation').
go('regulation of CD8-positive, alpha-beta T cell activation',is_a,'regulation of alpha-beta T cell activation').
go('positive regulation of alpha-beta T cell activation',is_a,'positive regulation of T cell activation').
go('regulation of CD8-positive, alpha-beta T cell activation',regulates,'CD8-positive, alpha-beta T cell activation').
go('positive regulation of T cell activation',is_a,'regulation of T cell activation').
go('CD8-positive, alpha-beta T cell activation',is_a,'alpha-beta T cell activation').
go('positive regulation of T cell activation',is_a,'positive regulation of leukocyte cell-cell adhesion').
go('regulation of CD8-positive, alpha-beta T cell differentiation',is_a,'regulation of alpha-beta T cell differentiation').
go('positive regulation of leukocyte cell-cell adhesion',is_a,'regulation of leukocyte cell-cell adhesion').
go('regulation of CD8-positive, alpha-beta T cell differentiation',regulates,'CD8-positive, alpha-beta T cell differentiation').
go('positive regulation of leukocyte cell-cell adhesion',is_a,'positive regulation of cell-cell adhesion').
go('positive regulation of cell-cell adhesion',is_a,'positive regulation of cell adhesion').
go('CD8-positive, alpha-beta T cell differentiation',is_a,'CD8-positive, alpha-beta T cell activation').
go('CD8-positive, alpha-beta T cell differentiation',is_a,'alpha-beta T cell differentiation').
go('positive regulation of cell-cell adhesion',is_a,'regulation of cell-cell adhesion').
go('positive regulation of CD8-positive, alpha-beta T cell differentiation',is_a,'positive regulation of CD8-positive, alpha-beta T cell activation').
go('positive regulation of T cell activation',is_a,'positive regulation of lymphocyte activation').
go('positive regulation of CD8-positive, alpha-beta T cell activation',is_a,'regulation of CD8-positive, alpha-beta T cell activation').
go('positive regulation of lymphocyte activation',is_a,'positive regulation of leukocyte activation').
go('positive regulation of leukocyte activation',is_a,'positive regulation of immune system process').
go('positive regulation of CD8-positive, alpha-beta T cell activation',is_a,'positive regulation of alpha-beta T cell activation').
go('positive regulation of leukocyte activation',is_a,'regulation of leukocyte activation').
go('positive regulation of alpha-beta T cell differentiation',is_a,'positive regulation of T cell differentiation').
go('positive regulation of leukocyte activation',is_a,'positive regulation of cell activation').
go('positive regulation of T cell differentiation',is_a,'positive regulation of lymphocyte differentiation').
go('positive regulation of lymphocyte differentiation',is_a,'regulation of lymphocyte differentiation').
go('positive regulation of lymphocyte differentiation',is_a,'positive regulation of leukocyte differentiation').
go('positive regulation of lymphocyte activation',is_a,'regulation of lymphocyte activation').
go('positive regulation of leukocyte differentiation',is_a,'positive regulation of hemopoiesis').
go('positive regulation of hemopoiesis',is_a,'regulation of hemopoiesis').
go('positive regulation of alpha-beta T cell differentiation',is_a,'regulation of alpha-beta T cell differentiation').
go('positive regulation of hemopoiesis',is_a,'positive regulation of cell development').
go('positive regulation of hemopoiesis',is_a,'positive regulation of multicellular organismal process').
go('positive regulation of hemopoiesis',is_a,'positive regulation of immune system process').
go('positive regulation of leukocyte differentiation',is_a,'regulation of leukocyte differentiation').
go('positive regulation of lymphocyte differentiation',is_a,'positive regulation of lymphocyte activation').
go('positive regulation of T cell differentiation',is_a,'regulation of T cell differentiation').
go('positive regulation of T cell differentiation',is_a,'positive regulation of T cell activation').
go('positive regulation of collagen biosynthetic process',is_a,'positive regulation of collagen metabolic process').
go('positive regulation of collagen biosynthetic process',is_a,'regulation of collagen biosynthetic process').
go('positive regulation of collagen metabolic process',is_a,'positive regulation of metabolic process').
go('regulation of collagen biosynthetic process',is_a,'regulation of biosynthetic process').
go('regulation of collagen biosynthetic process',is_a,'regulation of collagen metabolic process').
go('positive regulation of collagen metabolic process',is_a,'regulation of collagen metabolic process').
go('positive regulation of collagen biosynthetic process',is_a,'positive regulation of biosynthetic process').
go('regulation of collagen metabolic process',is_a,'regulation of metabolic process').
go('regulation of collagen metabolic process',regulates,'collagen metabolic process').
go('collagen metabolic process',is_a,'metabolic process').
go('regulation of collagen biosynthetic process',regulates,'collagen biosynthetic process').
go('collagen biosynthetic process',is_a,'biosynthetic process').
go('collagen biosynthetic process',is_a,'collagen metabolic process').
go('positive regulation of extracellular matrix organization',is_a,'positive regulation of cellular component organization').
go('positive regulation of extracellular matrix organization',is_a,'regulation of extracellular matrix organization').
go('regulation of extracellular matrix organization',is_a,'regulation of cellular component organization').
go('regulation of extracellular matrix organization',regulates,'extracellular matrix organization').
go('extracellular matrix organization',is_a,'external encapsulating structure organization').
go('extracellular matrix organization',is_a,'extracellular structure organization').
go('external encapsulating structure organization',is_a,'cellular component organization').
go('extracellular structure organization',is_a,'cellular component organization').
go('positive regulation of granulocyte differentiation',is_a,'positive regulation of myeloid leukocyte differentiation').
go('positive regulation of granulocyte differentiation',is_a,'regulation of granulocyte differentiation').
go('positive regulation of myeloid leukocyte differentiation',is_a,'positive regulation of myeloid cell differentiation').
go('positive regulation of myeloid leukocyte differentiation',is_a,'regulation of myeloid leukocyte differentiation').
go('positive regulation of myeloid cell differentiation',is_a,'regulation of myeloid cell differentiation').
go('positive regulation of myeloid leukocyte differentiation',is_a,'positive regulation of leukocyte differentiation').
go('positive regulation of myeloid cell differentiation',is_a,'positive regulation of cell differentiation').
go('positive regulation of interleukin-2 production',is_a,'regulation of interleukin-2 production').
go('positive regulation of interleukin-2 production',is_a,'positive regulation of cytokine production').
go('regulation of interleukin-2 production',is_a,'regulation of cytokine production').
go('regulation of interleukin-2 production',regulates,'interleukin-2 production').
go('interleukin-2 production',is_a,'cytokine production').
go('regulation of cardiac muscle cell proliferation',is_a,'regulation of cell population proliferation').
go('regulation of cardiac muscle cell proliferation',is_a,'regulation of cardiac muscle tissue growth').
go('regulation of cardiac muscle tissue growth',is_a,'regulation of heart growth').
go('regulation of heart growth',is_a,'regulation of organ growth').
go('regulation of heart growth',is_a,'regulation of multicellular organismal development').
go('regulation of organ growth',is_a,'regulation of developmental growth').
go('regulation of organ growth',is_a,'regulation of multicellular organismal process').
go('regulation of organ growth',regulates,'organ growth').
go('organ growth',is_a,'multicellular organismal process').
go('organ growth',is_a,'developmental growth').
go('regulation of heart growth',regulates,'heart growth').
go('heart growth',is_a,'organ growth').
go('heart growth',part_of,'heart development').
go('regulation of cardiac muscle tissue growth',regulates,'cardiac muscle tissue growth').
go('cardiac muscle tissue growth',is_a,'developmental growth').
go('cardiac muscle tissue growth',part_of,'heart growth').
go('cardiac muscle tissue growth',part_of,'cardiac muscle tissue development').
go('cardiac muscle tissue development',is_a,'striated muscle tissue development').
go('striated muscle tissue development',is_a,'muscle tissue development').
go('muscle tissue development',is_a,'tissue development').
go('muscle tissue development',is_a,'animal gross anatomical part developmental process').
go('cardiac muscle tissue development',part_of,'heart development').
go('regulation of cardiac muscle cell proliferation',regulates,'cardiac muscle cell proliferation').
go('cardiac muscle cell proliferation',is_a,'striated muscle cell proliferation').
go('striated muscle cell proliferation',is_a,'muscle cell proliferation').
go('muscle cell proliferation',is_a,'cell population proliferation').
go('cardiac muscle cell proliferation',part_of,'cardiac muscle tissue growth').
go('regulation of connective tissue replacement',is_a,'regulation of tissue remodeling').
go('regulation of tissue remodeling',is_a,'regulation of multicellular organismal process').
go('regulation of tissue remodeling',regulates,'tissue remodeling').
go('tissue remodeling',is_a,'multicellular organismal process').
go('regulation of connective tissue replacement',regulates,'connective tissue replacement').
go('connective tissue replacement',is_a,'tissue remodeling').
go('regulation of plasminogen activation',is_a,'regulation of protein processing').
go('regulation of protein processing',is_a,'regulation of protein maturation').
go('regulation of protein processing',is_a,'regulation of proteolysis').
go('regulation of protein maturation',is_a,'regulation of protein metabolic process').
go('regulation of proteolysis',is_a,'regulation of protein metabolic process').
go('regulation of protein maturation',is_a,'regulation of gene expression').
go('regulation of proteolysis',regulates,'proteolysis').
go('regulation of protein maturation',regulates,'protein maturation').
go('regulation of protein processing',regulates,'protein processing').
go('protein processing',is_a,'proteolysis').
go('protein processing',is_a,'protein maturation').
go('regulation of plasminogen activation',regulates,'plasminogen activation').
go('plasminogen activation',is_a,'zymogen activation').
go('zymogen activation',is_a,'protein processing').
go('core-binding factor complex',is_a,'RNA polymerase II transcription regulator complex').
leaf('SRY','DNA binding').
leaf('SRY','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('SRY','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('SRY','DNA-binding transcription factor binding').
leaf('SRY','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('SRY','cell differentiation').
bp('cell differentiation').
leaf('SRY','male sex determination').
bp('male sex determination').
leaf('SRY','positive regulation of DNA-templated transcription').
leaf('SRY','positive regulation of gene expression').
leaf('SRY','positive regulation of male gonad development').
bp('positive regulation of male gonad development').
leaf('SRY','positive regulation of transcription by RNA polymerase II').
leaf('SRY','chromatin').
leaf('SRY','cytoplasm').
leaf('SRY','nuclear speck').
leaf('SRY','nucleoplasm').
leaf('SRY','nucleus').
go('male sex determination',is_a,'sex determination').
go('sex determination',is_a,'developmental process involved in reproduction').
go('male sex determination',part_of,'multicellular organism development').
go('positive regulation of male gonad development',is_a,'positive regulation of gonad development').
go('positive regulation of male gonad development',is_a,'regulation of male gonad development').
go('positive regulation of gonad development',is_a,'regulation of gonad development').
go('regulation of male gonad development',is_a,'regulation of gonad development').
go('regulation of gonad development',is_a,'regulation of reproductive process').
go('regulation of male gonad development',regulates,'male gonad development').
go('regulation of gonad development',is_a,'regulation of developmental process').
go('male gonad development',is_a,'gonad development').
go('regulation of gonad development',regulates,'gonad development').
go('gonad development',is_a,'reproductive structure development').
go('positive regulation of gonad development',is_a,'positive regulation of reproductive process').
go('reproductive structure development',is_a,'developmental process involved in reproduction').
go('positive regulation of reproductive process',is_a,'positive regulation of biological process').
go('reproductive structure development',is_a,'anatomical structure development').
go('positive regulation of reproductive process',is_a,'regulation of reproductive process').
go('reproductive structure development',part_of,'reproductive system development').
go('positive regulation of gonad development',is_a,'positive regulation of multicellular organismal process').
go('reproductive system development',is_a,'system development').
go('positive regulation of gonad development',is_a,'positive regulation of developmental process').
go('gonad development',is_a,'animal organ development').
go('gonad development',part_of,'development of primary sexual characteristics').
go('development of primary sexual characteristics',is_a,'developmental process involved in reproduction').
go('development of primary sexual characteristics',part_of,'multicellular organism development').
go('development of primary sexual characteristics',part_of,'sex differentiation').
go('sex differentiation',is_a,'developmental process involved in reproduction').
go('male gonad development',part_of,'development of primary male sexual characteristics').
go('development of primary male sexual characteristics',is_a,'development of primary sexual characteristics').
go('development of primary male sexual characteristics',part_of,'male sex differentiation').
go('male sex differentiation',is_a,'sex differentiation').
go('male sex differentiation',part_of,'multicellular organism development').
leaf('ZNF384','sequence-specific double-stranded DNA binding').
fm('sequence-specific double-stranded DNA binding').
leaf('ZNF384','transcription cis-regulatory region binding').
leaf('ZNF384','regulation of transcription by RNA polymerase II').
leaf('ZNF384','nucleus').
leaf('NCBP1','molecular adaptor activity').
leaf('NCBP1','mRNA binding').
fm('mRNA binding').
leaf('NCBP1','RNA 7-methylguanosine cap binding').
fm('RNA 7-methylguanosine cap binding').
leaf('NCBP1','RNA binding').
leaf('NCBP1','RNA cap binding').
fm('RNA cap binding').
leaf('NCBP1','7-methylguanosine mRNA capping').
bp('7-methylguanosine mRNA capping').
leaf('NCBP1','alternative mRNA splicing, via spliceosome').
bp('alternative mRNA splicing, via spliceosome').
leaf('NCBP1','cap-dependent translational initiation').
bp('cap-dependent translational initiation').
leaf('NCBP1','defense response to virus').
bp('defense response to virus').
leaf('NCBP1','histone mRNA metabolic process').
bp('histone mRNA metabolic process').
leaf('NCBP1','miRNA-mediated post-transcriptional gene silencing').
bp('miRNA-mediated post-transcriptional gene silencing').
leaf('NCBP1','mRNA 3-end processing').
bp('mRNA 3-end processing').
leaf('NCBP1','mRNA export from nucleus').
bp('mRNA export from nucleus').
leaf('NCBP1','mRNA metabolic process').
bp('mRNA metabolic process').
leaf('NCBP1','mRNA splicing, via spliceosome').
leaf('NCBP1','mRNA transcription by RNA polymerase II').
bp('mRNA transcription by RNA polymerase II').
leaf('NCBP1','nuclear-transcribed mRNA catabolic process, nonsense-mediated decay').
bp('nuclear-transcribed mRNA catabolic process, nonsense-mediated decay').
leaf('NCBP1','positive regulation of cell growth').
leaf('NCBP1','positive regulation of mRNA 3-end processing').
bp('positive regulation of mRNA 3-end processing').
leaf('NCBP1','positive regulation of mRNA splicing, via spliceosome').
leaf('NCBP1','positive regulation of transcription elongation by RNA polymerase II').
bp('positive regulation of transcription elongation by RNA polymerase II').
leaf('NCBP1','primary miRNA processing').
bp('primary miRNA processing').
leaf('NCBP1','regulation of mRNA processing').
bp('regulation of mRNA processing').
leaf('NCBP1','regulation of translational initiation').
bp('regulation of translational initiation').
leaf('NCBP1','regulatory ncRNA-mediated post-transcriptional gene silencing').
bp('regulatory ncRNA-mediated post-transcriptional gene silencing').
leaf('NCBP1','RNA catabolic process').
bp('RNA catabolic process').
leaf('NCBP1','RNA splicing').
leaf('NCBP1','snRNA export from nucleus').
bp('snRNA export from nucleus').
leaf('NCBP1','spliceosomal complex assembly').
bp('spliceosomal complex assembly').
leaf('NCBP1','cytoplasm').
leaf('NCBP1','cytosol').
leaf('NCBP1','nuclear cap binding complex').
cc('nuclear cap binding complex').
leaf('NCBP1','nucleoplasm').
leaf('NCBP1','nucleus').
leaf('NCBP1','ribonucleoprotein complex').
leaf('NCBP1','RNA cap binding complex').
cc('RNA cap binding complex').
go('mRNA binding',is_a,'RNA binding').
go('RNA 7-methylguanosine cap binding',is_a,'RNA cap binding').
go('RNA cap binding',is_a,'RNA binding').
go('7-methylguanosine mRNA capping',is_a,'mRNA processing').
go('7-methylguanosine mRNA capping',is_a,'7-methylguanosine RNA capping').
go('7-methylguanosine RNA capping',is_a,'RNA capping').
go('RNA capping',is_a,'RNA 5-end processing').
go('RNA 5-end processing',is_a,'RNA processing').
go('alternative mRNA splicing, via spliceosome',is_a,'mRNA splicing, via spliceosome').
go('cap-dependent translational initiation',is_a,'cytoplasmic translational initiation').
go('cytoplasmic translational initiation',is_a,'translational initiation').
go('cytoplasmic translational initiation',part_of,'cytoplasmic translation').
go('defense response to virus',is_a,'defense response').
go('defense response to virus',is_a,'response to virus').
go('histone mRNA metabolic process',is_a,'mRNA metabolic process').
go('miRNA-mediated post-transcriptional gene silencing',is_a,'regulatory ncRNA-mediated post-transcriptional gene silencing').
go('regulatory ncRNA-mediated post-transcriptional gene silencing',is_a,'regulatory ncRNA-mediated gene silencing').
go('regulatory ncRNA-mediated post-transcriptional gene silencing',is_a,'post-transcriptional gene silencing').
go('regulatory ncRNA-mediated gene silencing',is_a,'negative regulation of gene expression').
go('post-transcriptional gene silencing',is_a,'negative regulation of gene expression').
go('post-transcriptional gene silencing',is_a,'post-transcriptional regulation of gene expression').
go('mRNA 3-end processing',is_a,'RNA 3-end processing').
go('mRNA 3-end processing',is_a,'mRNA processing').
go('RNA 3-end processing',is_a,'RNA processing').
go('mRNA export from nucleus',is_a,'mRNA transport').
go('mRNA export from nucleus',is_a,'RNA export from nucleus').
go('mRNA transport',is_a,'RNA transport').
go('RNA export from nucleus',is_a,'nuclear export').
go('RNA transport',is_a,'nucleic acid transport').
go('nuclear export',is_a,'nucleocytoplasmic transport').
go('nucleic acid transport',is_a,'nucleobase-containing compound transport').
go('nucleocytoplasmic transport',is_a,'nuclear transport').
go('nucleobase-containing compound transport',is_a,'nitrogen compound transport').
go('nuclear transport',is_a,'intracellular transport').
go('RNA transport',is_a,'establishment of RNA localization').
go('establishment of RNA localization',is_a,'establishment of localization').
go('establishment of RNA localization',part_of,'RNA localization').
go('RNA export from nucleus',is_a,'RNA transport').
go('RNA localization',is_a,'macromolecule localization').
go('mRNA export from nucleus',part_of,'gene expression').
go('mRNA transcription by RNA polymerase II',is_a,'mRNA transcription').
go('mRNA transcription by RNA polymerase II',is_a,'transcription by RNA polymerase II').
go('mRNA transcription',is_a,'mRNA metabolic process').
go('mRNA transcription',is_a,'DNA-templated transcription').
go('nuclear-transcribed mRNA catabolic process, nonsense-mediated decay',is_a,'nuclear-transcribed mRNA catabolic process').
go('nuclear-transcribed mRNA catabolic process',is_a,'mRNA catabolic process').
go('positive regulation of mRNA 3-end processing',is_a,'positive regulation of mRNA processing').
go('positive regulation of mRNA 3-end processing',is_a,'regulation of mRNA 3-end processing').
go('regulation of mRNA 3-end processing',is_a,'regulation of mRNA processing').
go('regulation of mRNA 3-end processing',regulates,'mRNA 3-end processing').
go('positive regulation of transcription elongation by RNA polymerase II',is_a,'positive regulation of transcription by RNA polymerase II').
go('positive regulation of transcription elongation by RNA polymerase II',is_a,'regulation of transcription elongation by RNA polymerase II').
go('regulation of transcription elongation by RNA polymerase II',is_a,'regulation of DNA-templated transcription elongation').
go('positive regulation of transcription elongation by RNA polymerase II',is_a,'positive regulation of DNA-templated transcription, elongation').
go('regulation of DNA-templated transcription elongation',is_a,'regulation of DNA-templated transcription').
go('positive regulation of DNA-templated transcription, elongation',is_a,'regulation of DNA-templated transcription elongation').
go('positive regulation of DNA-templated transcription, elongation',is_a,'positive regulation of DNA-templated transcription').
go('regulation of DNA-templated transcription elongation',regulates,'DNA-templated transcription elongation').
go('DNA-templated transcription elongation',is_a,'RNA biosynthetic process').
go('DNA-templated transcription elongation',part_of,'DNA-templated transcription').
go('regulation of transcription elongation by RNA polymerase II',regulates,'transcription elongation by RNA polymerase II').
go('transcription elongation by RNA polymerase II',is_a,'DNA-templated transcription elongation').
go('transcription elongation by RNA polymerase II',part_of,'transcription by RNA polymerase II').
go('primary miRNA processing',is_a,'miRNA processing').
go('miRNA processing',is_a,'regulatory ncRNA processing').
go('regulatory ncRNA processing',is_a,'RNA processing').
go('regulatory ncRNA processing',part_of,'regulatory ncRNA-mediated gene silencing').
go('snRNA export from nucleus',is_a,'RNA export from nucleus').
go('snRNA export from nucleus',is_a,'snRNA transport').
go('snRNA transport',is_a,'RNA transport').
go('spliceosomal complex assembly',is_a,'protein-RNA complex assembly').
go('spliceosomal complex assembly',part_of,'mRNA splicing, via spliceosome').
go('nuclear cap binding complex',is_a,'RNA cap binding complex').
go('RNA cap binding complex',is_a,'intracellular protein-containing complex').
leaf('NCBP2','DNA binding').
leaf('NCBP2','mRNA binding').
leaf('NCBP2','RNA 7-methylguanosine cap binding').
leaf('NCBP2','RNA binding').
leaf('NCBP2','RNA cap binding').
leaf('NCBP2','snRNA binding').
fm('snRNA binding').
leaf('NCBP2','alternative mRNA splicing, via spliceosome').
leaf('NCBP2','cap-dependent translational initiation').
leaf('NCBP2','histone mRNA metabolic process').
leaf('NCBP2','miRNA-mediated post-transcriptional gene silencing').
leaf('NCBP2','mRNA 3-end processing').
leaf('NCBP2','mRNA cis splicing, via spliceosome').
bp('mRNA cis splicing, via spliceosome').
leaf('NCBP2','mRNA export from nucleus').
leaf('NCBP2','mRNA metabolic process').
leaf('NCBP2','mRNA splicing, via spliceosome').
leaf('NCBP2','mRNA transcription by RNA polymerase II').
leaf('NCBP2','nuclear-transcribed mRNA catabolic process, nonsense-mediated decay').
leaf('NCBP2','positive regulation of mRNA 3-end processing').
leaf('NCBP2','positive regulation of RNA export from nucleus').
bp('positive regulation of RNA export from nucleus').
leaf('NCBP2','positive regulation of transcription elongation by RNA polymerase II').
leaf('NCBP2','primary miRNA processing').
leaf('NCBP2','regulation of translational initiation').
leaf('NCBP2','regulatory ncRNA-mediated post-transcriptional gene silencing').
leaf('NCBP2','RNA splicing').
leaf('NCBP2','snRNA export from nucleus').
leaf('NCBP2','cytoplasm').
leaf('NCBP2','cytosol').
leaf('NCBP2','nuclear cap binding complex').
leaf('NCBP2','nucleoplasm').
leaf('NCBP2','nucleus').
leaf('NCBP2','RNA cap binding complex').
go('mRNA cis splicing, via spliceosome',is_a,'mRNA splicing, via spliceosome').
go('positive regulation of RNA export from nucleus',is_a,'regulation of RNA export from nucleus').
go('positive regulation of RNA export from nucleus',is_a,'positive regulation of nucleobase-containing compound transport').
go('regulation of RNA export from nucleus',is_a,'regulation of nucleocytoplasmic transport').
go('positive regulation of nucleobase-containing compound transport',is_a,'regulation of nucleobase-containing compound transport').
go('regulation of nucleocytoplasmic transport',is_a,'regulation of intracellular transport').
go('regulation of nucleobase-containing compound transport',is_a,'regulation of transport').
go('regulation of intracellular transport',is_a,'regulation of transport').
go('regulation of intracellular transport',is_a,'regulation of cellular localization').
go('regulation of nucleobase-containing compound transport',regulates,'nucleobase-containing compound transport').
go('positive regulation of nucleobase-containing compound transport',is_a,'positive regulation of transport').
go('regulation of intracellular transport',regulates,'intracellular transport').
go('regulation of nucleocytoplasmic transport',regulates,'nucleocytoplasmic transport').
go('positive regulation of RNA export from nucleus',is_a,'positive regulation of nucleocytoplasmic transport').
go('regulation of RNA export from nucleus',is_a,'regulation of nucleobase-containing compound transport').
go('positive regulation of nucleocytoplasmic transport',is_a,'positive regulation of intracellular transport').
go('regulation of RNA export from nucleus',regulates,'RNA export from nucleus').
go('positive regulation of intracellular transport',is_a,'positive regulation of transport').
go('positive regulation of nucleocytoplasmic transport',is_a,'regulation of nucleocytoplasmic transport').
go('positive regulation of intracellular transport',is_a,'positive regulation of cellular process').
go('positive regulation of intracellular transport',is_a,'regulation of intracellular transport').
leaf('NCBP2L','RNA cap binding').
leaf('NCBP2L','mRNA cis splicing, via spliceosome').
leaf('NCBP2L','nuclear cap binding complex').
leaf('NCBP3','mRNA binding').
leaf('NCBP3','RNA 7-methylguanosine cap binding').
leaf('NCBP3','RNA binding').
leaf('NCBP3','RNA cap binding').
leaf('NCBP3','defense response to virus').
leaf('NCBP3','mRNA export from nucleus').
leaf('NCBP3','mRNA transcription by RNA polymerase II').
leaf('NCBP3','regulatory ncRNA-mediated post-transcriptional gene silencing').
leaf('NCBP3','snRNA export from nucleus').
leaf('NCBP3','cytoplasm').
leaf('NCBP3','nuclear cap binding complex').
leaf('NCBP3','nucleus').
leaf('NCBP3','RNA cap binding complex').
leaf('NCBP3','transcription export complex').
cc('transcription export complex').
go('transcription export complex',is_a,'nuclear protein-containing complex').
leaf('TCAP','BMP binding').
fm('BMP binding').
leaf('TCAP','FATZ binding').
fm('FATZ binding').
leaf('TCAP','molecular adaptor activity').
leaf('TCAP','protein-macromolecule adaptor activity').
leaf('TCAP','structural constituent of muscle').
fm('structural constituent of muscle').
leaf('TCAP','titin binding').
fm('titin binding').
leaf('TCAP','titin Z domain binding').
fm('titin Z domain binding').
leaf('TCAP','transmembrane transporter binding').
fm('transmembrane transporter binding').
leaf('TCAP','adult heart development').
bp('adult heart development').
leaf('TCAP','cardiac muscle cell development').
bp('cardiac muscle cell development').
leaf('TCAP','cardiac muscle contraction').
bp('cardiac muscle contraction').
leaf('TCAP','cardiac muscle hypertrophy').
bp('cardiac muscle hypertrophy').
leaf('TCAP','cardiac muscle hypertrophy in response to stress').
bp('cardiac muscle hypertrophy in response to stress').
leaf('TCAP','cardiac muscle tissue morphogenesis').
bp('cardiac muscle tissue morphogenesis').
leaf('TCAP','cardiac myofibril assembly').
bp('cardiac myofibril assembly').
leaf('TCAP','detection of mechanical stimulus').
bp('detection of mechanical stimulus').
leaf('TCAP','detection of muscle stretch').
bp('detection of muscle stretch').
leaf('TCAP','muscle filament sliding').
bp('muscle filament sliding').
leaf('TCAP','otic vesicle formation').
bp('otic vesicle formation').
leaf('TCAP','protein-containing complex assembly').
leaf('TCAP','response to muscle stretch').
bp('response to muscle stretch').
leaf('TCAP','sarcomere organization').
bp('sarcomere organization').
leaf('TCAP','sarcomerogenesis').
bp('sarcomerogenesis').
leaf('TCAP','skeletal muscle contraction').
bp('skeletal muscle contraction').
leaf('TCAP','skeletal muscle myosin thick filament assembly').
bp('skeletal muscle myosin thick filament assembly').
leaf('TCAP','skeletal muscle thin filament assembly').
bp('skeletal muscle thin filament assembly').
leaf('TCAP','somitogenesis').
bp('somitogenesis').
leaf('TCAP','cytosol').
leaf('TCAP','I band').
cc('I band').
leaf('TCAP','titin-telethonin complex').
cc('titin-telethonin complex').
leaf('TCAP','Z disc').
cc('Z disc').
go('BMP binding',is_a,'cytokine binding').
go('cytokine binding',is_a,'protein binding').
go('FATZ binding',is_a,'cytoskeletal protein binding').
go('structural constituent of muscle',is_a,'structural molecule activity').
go('titin binding',is_a,'cytoskeletal protein binding').
go('titin Z domain binding',is_a,'protein domain specific binding').
go('transmembrane transporter binding',is_a,'protein binding').
go('adult heart development',is_a,'heart development').
go('cardiac muscle cell development',is_a,'striated muscle cell development').
go('cardiac muscle cell development',is_a,'cardiac cell development').
go('striated muscle cell development',is_a,'muscle cell development').
go('cardiac cell development',is_a,'cell development').
go('muscle cell development',is_a,'cell development').
go('muscle cell development',part_of,'muscle cell differentiation').
go('cardiac cell development',part_of,'cardiocyte differentiation').
go('muscle cell differentiation',is_a,'cell differentiation').
go('muscle cell differentiation',part_of,'muscle structure development').
go('muscle structure development',is_a,'animal gross anatomical part developmental process').
go('striated muscle cell development',part_of,'striated muscle cell differentiation').
go('striated muscle cell differentiation',is_a,'muscle cell differentiation').
go('cardiac muscle cell development',part_of,'cardiac muscle cell differentiation').
go('cardiac muscle cell differentiation',is_a,'cardiocyte differentiation').
go('cardiac muscle cell differentiation',is_a,'striated muscle cell differentiation').
go('cardiac muscle cell differentiation',part_of,'cardiac muscle tissue development').
go('cardiac muscle contraction',is_a,'striated muscle contraction').
go('striated muscle contraction',is_a,'muscle contraction').
go('cardiac muscle contraction',part_of,'heart contraction').
go('cardiac muscle hypertrophy',is_a,'striated muscle hypertrophy').
go('striated muscle hypertrophy',is_a,'muscle hypertrophy').
go('muscle hypertrophy',is_a,'muscle system process').
go('cardiac muscle hypertrophy in response to stress',is_a,'muscle hypertrophy in response to stress').
go('muscle hypertrophy in response to stress',is_a,'muscle hypertrophy').
go('muscle hypertrophy in response to stress',is_a,'muscle adaptation').
go('muscle adaptation',is_a,'response to stimulus').
go('muscle adaptation',is_a,'muscle system process').
go('muscle hypertrophy in response to stress',is_a,'response to stress').
go('cardiac muscle hypertrophy in response to stress',is_a,'cardiac muscle hypertrophy').
go('cardiac muscle hypertrophy in response to stress',is_a,'cardiac muscle adaptation').
go('cardiac muscle adaptation',is_a,'striated muscle adaptation').
go('striated muscle adaptation',is_a,'muscle adaptation').
go('cardiac muscle tissue morphogenesis',is_a,'muscle tissue morphogenesis').
go('muscle tissue morphogenesis',is_a,'tissue morphogenesis').
go('muscle tissue morphogenesis',part_of,'muscle organ morphogenesis').
go('muscle organ morphogenesis',is_a,'animal organ morphogenesis').
go('muscle organ morphogenesis',part_of,'muscle organ development').
go('muscle organ development',is_a,'muscle structure development').
go('muscle organ development',is_a,'animal organ development').
go('cardiac muscle tissue morphogenesis',part_of,'heart morphogenesis').
go('cardiac muscle tissue morphogenesis',part_of,'cardiac muscle tissue development').
go('heart morphogenesis',is_a,'animal organ morphogenesis').
go('heart morphogenesis',part_of,'heart development').
go('cardiac myofibril assembly',is_a,'myofibril assembly').
go('myofibril assembly',is_a,'supramolecular fiber organization').
go('myofibril assembly',is_a,'membraneless organelle assembly').
go('myofibril assembly',is_a,'cellular component assembly involved in morphogenesis').
go('myofibril assembly',is_a,'actomyosin structure organization').
go('actomyosin structure organization',is_a,'actin cytoskeleton organization').
go('cellular component assembly involved in morphogenesis',is_a,'cellular component assembly').
go('cellular component assembly involved in morphogenesis',is_a,'anatomical structure formation involved in morphogenesis').
go('cellular component assembly involved in morphogenesis',part_of,'anatomical structure morphogenesis').
go('cellular component assembly involved in morphogenesis',part_of,'cellular anatomical entity morphogenesis').
go('cellular anatomical entity morphogenesis',is_a,'cellular component organization').
go('myofibril assembly',part_of,'striated muscle cell development').
go('cardiac myofibril assembly',part_of,'cardiac muscle cell development').
go('detection of mechanical stimulus',is_a,'detection of abiotic stimulus').
go('detection of abiotic stimulus',is_a,'detection of stimulus').
go('detection of mechanical stimulus',is_a,'detection of external stimulus').
go('detection of stimulus',is_a,'response to stimulus').
go('detection of external stimulus',is_a,'detection of stimulus').
go('detection of abiotic stimulus',is_a,'response to abiotic stimulus').
go('detection of external stimulus',is_a,'response to external stimulus').
go('detection of mechanical stimulus',is_a,'response to mechanical stimulus').
go('detection of muscle stretch',is_a,'detection of mechanical stimulus').
go('detection of muscle stretch',is_a,'response to muscle stretch').
go('response to muscle stretch',is_a,'response to mechanical stimulus').
go('muscle filament sliding',is_a,'actin-myosin filament sliding').
go('actin-myosin filament sliding',is_a,'actin-mediated cell contraction').
go('actin-mediated cell contraction',is_a,'actin filament-based movement').
go('actin filament-based movement',is_a,'actin filament-based process').
go('muscle filament sliding',part_of,'muscle contraction').
go('otic vesicle formation',is_a,'epithelial tube formation').
go('otic vesicle formation',part_of,'otic vesicle morphogenesis').
go('otic vesicle morphogenesis',is_a,'embryonic organ morphogenesis').
go('embryonic organ morphogenesis',is_a,'animal organ morphogenesis').
go('otic vesicle morphogenesis',is_a,'inner ear morphogenesis').
go('embryonic organ morphogenesis',is_a,'embryonic morphogenesis').
go('inner ear morphogenesis',is_a,'embryonic morphogenesis').
go('inner ear morphogenesis',part_of,'ear morphogenesis').
go('embryonic organ morphogenesis',part_of,'embryonic organ development').
go('embryonic organ development',is_a,'animal organ development').
go('ear morphogenesis',is_a,'sensory organ morphogenesis').
go('embryonic organ development',part_of,'embryo development').
go('otic vesicle morphogenesis',is_a,'epithelial tube morphogenesis').
go('ear morphogenesis',is_a,'embryonic organ morphogenesis').
go('ear morphogenesis',part_of,'ear development').
go('ear development',is_a,'sensory organ development').
go('inner ear morphogenesis',part_of,'inner ear development').
go('inner ear development',is_a,'animal gross anatomical part developmental process').
go('inner ear development',part_of,'ear development').
go('otic vesicle morphogenesis',part_of,'otic vesicle development').
go('otic vesicle development',is_a,'epithelium development').
go('otic vesicle development',is_a,'inner ear development').
go('otic vesicle development',is_a,'tube development').
go('otic vesicle development',is_a,'sensory organ development').
go('sarcomere organization',is_a,'actomyosin structure organization').
go('sarcomere organization',part_of,'myofibril assembly').
go('sarcomerogenesis',is_a,'actomyosin structure organization').
go('sarcomerogenesis',part_of,'myofibril assembly').
go('skeletal muscle contraction',is_a,'striated muscle contraction').
go('skeletal muscle contraction',part_of,'musculoskeletal movement').
go('musculoskeletal movement',is_a,'neuromuscular process').
go('musculoskeletal movement',is_a,'multicellular organismal movement').
go('multicellular organismal movement',is_a,'multicellular organismal process').
go('skeletal muscle myosin thick filament assembly',is_a,'striated muscle myosin thick filament assembly').
go('striated muscle myosin thick filament assembly',is_a,'myosin filament assembly').
go('striated muscle myosin thick filament assembly',is_a,'cellular component assembly involved in morphogenesis').
go('striated muscle myosin thick filament assembly',part_of,'myofibril assembly').
go('skeletal muscle myosin thick filament assembly',part_of,'skeletal myofibril assembly').
go('skeletal myofibril assembly',is_a,'myofibril assembly').
go('skeletal muscle thin filament assembly',is_a,'actin filament organization').
go('actin filament organization',is_a,'supramolecular fiber organization').
go('actin filament organization',part_of,'actin cytoskeleton organization').
go('skeletal muscle thin filament assembly',part_of,'skeletal myofibril assembly').
go('somitogenesis',is_a,'segmentation').
go('segmentation',is_a,'regionalization').
go('regionalization',is_a,'pattern specification process').
go('pattern specification process',is_a,'multicellular organismal process').
go('pattern specification process',part_of,'multicellular organism development').
go('somitogenesis',is_a,'anterior/posterior pattern specification').
go('somitogenesis',is_a,'anatomical structure formation involved in morphogenesis').
go('anterior/posterior pattern specification',is_a,'regionalization').
go('somitogenesis',part_of,'somite development').
go('somitogenesis',part_of,'chordate embryonic development').
go('somite development',is_a,'epithelium development').
go('chordate embryonic development',is_a,'embryo development ending in birth or egg hatching').
go('somite development',part_of,'embryo development').
go('embryo development ending in birth or egg hatching',is_a,'embryo development').
go('embryo development ending in birth or egg hatching',is_a,'animal gross anatomical part developmental process').
go('I band',is_a,'cellular anatomical structure').
go('I band',part_of,'sarcomere').
go('sarcomere',is_a,'cellular anatomical structure').
go('sarcomere',part_of,'myofibril').
go('myofibril',is_a,'contractile muscle fiber').
go('contractile muscle fiber',is_a,'supramolecular fiber').
go('contractile muscle fiber',is_a,'intracellular membraneless organelle').
go('supramolecular fiber',is_a,'supramolecular polymer').
go('supramolecular polymer',is_a,'supramolecular complex').
go('contractile muscle fiber',part_of,'cytoplasm').
go('titin-telethonin complex',is_a,'protein-containing complex').
go('titin-telethonin complex',part_of,'Z disc').
go('Z disc',is_a,'cellular anatomical structure').
go('Z disc',part_of,'I band').
leaf('CLIP1','identical protein binding').
leaf('CLIP1','microtubule binding').
leaf('CLIP1','microtubule plus-end binding').
fm('microtubule plus-end binding').
leaf('CLIP1','tubulin binding').
leaf('CLIP1','zinc ion binding').
leaf('CLIP1','cytoplasmic microtubule organization').
bp('cytoplasmic microtubule organization').
leaf('CLIP1','microtubule bundle formation').
bp('microtubule bundle formation').
leaf('CLIP1','mitotic cell cycle').
leaf('CLIP1','positive regulation of microtubule polymerization').
leaf('CLIP1','cell cortex').
leaf('CLIP1','centrosome').
cc('centrosome').
leaf('CLIP1','cytoplasmic vesicle membrane').
cc('cytoplasmic vesicle membrane').
leaf('CLIP1','cytosol').
leaf('CLIP1','intermediate filament').
cc('intermediate filament').
leaf('CLIP1','kinetochore').
cc('kinetochore').
leaf('CLIP1','microtubule').
cc('microtubule').
leaf('CLIP1','microtubule cytoskeleton').
leaf('CLIP1','nucleus').
leaf('CLIP1','plasma membrane').
leaf('CLIP1','ruffle').
cc('ruffle').
go('microtubule plus-end binding',is_a,'microtubule binding').
go('cytoplasmic microtubule organization',is_a,'microtubule cytoskeleton organization').
go('cytoplasmic microtubule organization',is_a,'supramolecular fiber organization').
go('microtubule bundle formation',is_a,'microtubule cytoskeleton organization').
go('centrosome',is_a,'microtubule organizing center').
go('microtubule organizing center',is_a,'cellular anatomical structure').
go('microtubule organizing center',part_of,'microtubule cytoskeleton').
go('intermediate filament',is_a,'polymeric cytoskeletal fiber').
go('polymeric cytoskeletal fiber',is_a,'supramolecular fiber').
go('polymeric cytoskeletal fiber',part_of,'cytoskeleton').
go('intermediate filament',part_of,'intermediate filament cytoskeleton').
go('intermediate filament cytoskeleton',is_a,'cytoskeleton').
go('kinetochore',is_a,'intracellular membraneless organelle').
go('kinetochore',is_a,'supramolecular complex').
go('kinetochore',part_of,'condensed chromosome, centromeric region').
go('condensed chromosome, centromeric region',is_a,'chromosome, centromeric region').
go('chromosome, centromeric region',is_a,'chromosomal region').
go('chromosomal region',is_a,'cellular anatomical structure').
go('chromosomal region',part_of,'chromosome').
go('condensed chromosome, centromeric region',part_of,'condensed chromosome').
go('condensed chromosome',is_a,'chromosome').
go('microtubule',is_a,'polymeric cytoskeletal fiber').
go('microtubule',part_of,'microtubule cytoskeleton').
leaf('CLIP2','microtubule binding').
leaf('CLIP2','microtubule plus-end binding').
leaf('CLIP2','cytoplasmic microtubule organization').
leaf('CLIP2','cell cortex').
leaf('CLIP2','cytoplasm').
leaf('CLIP2','microtubule associated complex').
cc('microtubule associated complex').
leaf('CLIP2','microtubule plus-end').
cc('microtubule plus-end').
leaf('CLIP2','nucleus').
go('microtubule associated complex',is_a,'protein-containing complex').
go('microtubule associated complex',part_of,'microtubule cytoskeleton').
go('microtubule plus-end',is_a,'microtubule end').
go('microtubule end',is_a,'cellular anatomical structure').
go('microtubule end',part_of,'microtubule').
leaf('CLIP3','ganglioside binding').
fm('ganglioside binding').
leaf('CLIP3','microtubule binding').
leaf('CLIP3','microtubule plus-end binding').
leaf('CLIP3','cytoplasmic microtubule organization').
leaf('CLIP3','fat cell differentiation').
bp('fat cell differentiation').
leaf('CLIP3','membrane biogenesis').
bp('membrane biogenesis').
leaf('CLIP3','negative regulation of microtubule polymerization').
bp('negative regulation of microtubule polymerization').
leaf('CLIP3','peptidyl-L-cysteine S-palmitoylation').
bp('peptidyl-L-cysteine S-palmitoylation').
leaf('CLIP3','positive regulation of apoptotic process').
leaf('CLIP3','positive regulation of D-glucose transmembrane transport').
leaf('CLIP3','positive regulation of endocytosis').
bp('positive regulation of endocytosis').
leaf('CLIP3','positive regulation of protein localization to plasma membrane').
leaf('CLIP3','positive regulation of protein phosphorylation').
leaf('CLIP3','protein transport along microtubule').
bp('protein transport along microtubule').
leaf('CLIP3','cell cortex').
leaf('CLIP3','cytosol').
leaf('CLIP3','early endosome membrane').
leaf('CLIP3','Golgi stack').
cc('Golgi stack').
leaf('CLIP3','membrane raft').
leaf('CLIP3','microtubule plus-end').
leaf('CLIP3','nucleus').
leaf('CLIP3','plasma membrane').
leaf('CLIP3','recycling endosome membrane').
cc('recycling endosome membrane').
leaf('CLIP3','trans-Golgi network').
cc('trans-Golgi network').
leaf('CLIP3','trans-Golgi network membrane').
cc('trans-Golgi network membrane').
go('ganglioside binding',is_a,'glycosphingolipid binding').
go('glycosphingolipid binding',is_a,'glycolipid binding').
go('glycolipid binding',is_a,'carbohydrate derivative binding').
go('ganglioside binding',is_a,'ceramide binding').
go('glycolipid binding',is_a,'lipid binding').
go('ceramide binding',is_a,'sphingolipid binding').
go('sphingolipid binding',is_a,'lipid binding').
go('glycosphingolipid binding',is_a,'sphingolipid binding').
go('fat cell differentiation',is_a,'cell differentiation').
go('membrane biogenesis',is_a,'cellular component biogenesis').
go('negative regulation of microtubule polymerization',is_a,'regulation of microtubule polymerization').
go('negative regulation of microtubule polymerization',is_a,'negative regulation of protein polymerization').
go('negative regulation of protein polymerization',is_a,'regulation of protein polymerization').
go('negative regulation of protein polymerization',is_a,'negative regulation of protein-containing complex assembly').
go('negative regulation of microtubule polymerization',is_a,'negative regulation of supramolecular fiber organization').
go('negative regulation of supramolecular fiber organization',is_a,'negative regulation of cellular component organization').
go('negative regulation of supramolecular fiber organization',is_a,'regulation of supramolecular fiber organization').
go('negative regulation of microtubule polymerization',is_a,'negative regulation of microtubule polymerization or depolymerization').
go('negative regulation of microtubule polymerization or depolymerization',is_a,'negative regulation of cytoskeleton organization').
go('negative regulation of cytoskeleton organization',is_a,'negative regulation of organelle organization').
go('negative regulation of cytoskeleton organization',is_a,'regulation of cytoskeleton organization').
go('negative regulation of microtubule polymerization or depolymerization',is_a,'regulation of microtubule polymerization or depolymerization').
go('peptidyl-L-cysteine S-palmitoylation',is_a,'protein palmitoylation').
go('protein palmitoylation',is_a,'protein lipidation').
go('protein palmitoylation',is_a,'protein acylation').
go('protein lipidation',is_a,'protein modification process').
go('protein acylation',is_a,'protein modification process').
go('protein lipidation',part_of,'lipoprotein biosynthetic process').
go('lipoprotein biosynthetic process',is_a,'macromolecule biosynthetic process').
go('lipoprotein biosynthetic process',is_a,'lipoprotein metabolic process').
go('lipoprotein metabolic process',is_a,'protein metabolic process').
go('protein transport along microtubule',is_a,'microtubule-based protein transport').
go('protein transport along microtubule',is_a,'intracellular protein transport').
go('intracellular protein transport',is_a,'protein transport').
go('microtubule-based protein transport',is_a,'microtubule-based transport').
go('microtubule-based transport',is_a,'transport').
go('intracellular protein transport',is_a,'intracellular transport').
go('microtubule-based protein transport',is_a,'protein transport').
go('protein transport along microtubule',is_a,'transport along microtubule').
go('transport along microtubule',is_a,'cytoskeleton-dependent intracellular transport').
go('intracellular protein transport',part_of,'intracellular protein localization').
go('cytoskeleton-dependent intracellular transport',is_a,'intracellular transport').
go('transport along microtubule',is_a,'microtubule-based transport').
go('transport along microtubule',is_a,'microtubule-based movement').
go('microtubule-based movement',is_a,'microtubule-based process').
go('Golgi stack',is_a,'Golgi apparatus subcompartment').
go('Golgi apparatus subcompartment',is_a,'organelle subcompartment').
go('Golgi apparatus subcompartment',part_of,'Golgi apparatus').
go('recycling endosome membrane',is_a,'endosome membrane').
go('recycling endosome membrane',part_of,'recycling endosome').
go('recycling endosome',is_a,'endosome').
go('trans-Golgi network',is_a,'Golgi apparatus subcompartment').
go('trans-Golgi network membrane',is_a,'organelle membrane').
go('trans-Golgi network membrane',part_of,'trans-Golgi network').
leaf('CLIP4','microtubule plus-end binding').
leaf('CLIP4','cytoplasmic microtubule organization').
leaf('CLIP4','cell cortex').
leaf('CLIP4','microtubule plus-end').
leaf('CLIP4','nucleus').
leaf('CMTR1','methyltransferase cap1 activity').
fm('methyltransferase cap1 activity').
leaf('CMTR1','nucleic acid binding').
fm('nucleic acid binding').
leaf('CMTR1','7-methylguanosine mRNA capping').
leaf('CMTR1','mRNA processing').
bp('mRNA processing').
leaf('CMTR1','cytoplasm').
leaf('CMTR1','nucleoplasm').
leaf('CMTR1','nucleus').
go('methyltransferase cap1 activity',is_a,'RNA methyltransferase activity').
go('methyltransferase cap1 activity',is_a,'O-methyltransferase activity').
go('RNA methyltransferase activity',is_a,'catalytic activity, acting on RNA').
go('O-methyltransferase activity',is_a,'methyltransferase activity').
go('catalytic activity, acting on RNA',is_a,'catalytic activity, acting on a nucleic acid').
go('catalytic activity, acting on a nucleic acid',is_a,'catalytic activity').
go('methyltransferase activity',is_a,'transferase activity, transferring one-carbon groups').
go('transferase activity, transferring one-carbon groups',is_a,'transferase activity').
go('RNA methyltransferase activity',is_a,'methyltransferase activity').
leaf('CMTR2','methyltransferase cap1 activity').
leaf('CMTR2','methyltransferase cap2 activity').
fm('methyltransferase cap2 activity').
leaf('CMTR2','7-methylguanosine mRNA capping').
leaf('CMTR2','cytoplasm').
leaf('CMTR2','nucleus').
go('methyltransferase cap2 activity',is_a,'RNA methyltransferase activity').
go('methyltransferase cap2 activity',is_a,'O-methyltransferase activity').
leaf('CTIF','RNA binding').
leaf('CTIF','translation activator activity').
fm('translation activator activity').
leaf('CTIF','nuclear-transcribed mRNA catabolic process, nonsense-mediated decay').
leaf('CTIF','regulation of translational initiation').
leaf('CTIF','cytosol').
leaf('CTIF','perinuclear region of cytoplasm').
go('translation activator activity',is_a,'translation regulator activity').
go('translation regulator activity',is_a,'molecular_function').
go('translation regulator activity',part_of,'regulation of translation').
go('translation activator activity',part_of,'positive regulation of translation').
leaf('GATA1','C2H2 zinc finger domain binding').
fm('C2H2 zinc finger domain binding').
leaf('GATA1','chromatin DNA binding').
leaf('GATA1','DNA binding').
leaf('GATA1','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('GATA1','DNA-binding transcription factor activity').
leaf('GATA1','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('GATA1','p53 binding').
leaf('GATA1','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('GATA1','RNA polymerase II transcription regulatory region sequence-specific DNA binding').
leaf('GATA1','RNA polymerase II-specific DNA-binding transcription factor binding').
leaf('GATA1','sequence-specific DNA binding').
fm('sequence-specific DNA binding').
leaf('GATA1','sequence-specific double-stranded DNA binding').
leaf('GATA1','transcription cis-regulatory region binding').
leaf('GATA1','transcription coactivator binding').
leaf('GATA1','transcription coregulator binding').
leaf('GATA1','zinc ion binding').
leaf('GATA1','animal organ regeneration').
bp('animal organ regeneration').
leaf('GATA1','basophil differentiation').
bp('basophil differentiation').
leaf('GATA1','cell fate commitment').
bp('cell fate commitment').
leaf('GATA1','cellular response to cAMP').
leaf('GATA1','cellular response to follicle-stimulating hormone stimulus').
bp('cellular response to follicle-stimulating hormone stimulus').
leaf('GATA1','cellular response to lipopolysaccharide').
bp('cellular response to lipopolysaccharide').
leaf('GATA1','eosinophil differentiation').
bp('eosinophil differentiation').
leaf('GATA1','eosinophil fate commitment').
bp('eosinophil fate commitment').
leaf('GATA1','erythrocyte development').
bp('erythrocyte development').
leaf('GATA1','erythrocyte differentiation').
bp('erythrocyte differentiation').
leaf('GATA1','male gonad development').
bp('male gonad development').
leaf('GATA1','megakaryocyte differentiation').
bp('megakaryocyte differentiation').
leaf('GATA1','negative regulation of apoptotic process').
leaf('GATA1','negative regulation of extrinsic apoptotic signaling pathway in absence of ligand').
bp('negative regulation of extrinsic apoptotic signaling pathway in absence of ligand').
leaf('GATA1','negative regulation of transcription by RNA polymerase II').
leaf('GATA1','platelet aggregation').
bp('platelet aggregation').
leaf('GATA1','platelet formation').
bp('platelet formation').
leaf('GATA1','positive regulation of cytosolic calcium ion concentration').
bp('positive regulation of cytosolic calcium ion concentration').
leaf('GATA1','positive regulation of DNA-templated transcription').
leaf('GATA1','positive regulation of erythrocyte differentiation').
bp('positive regulation of erythrocyte differentiation').
leaf('GATA1','positive regulation of mast cell degranulation').
bp('positive regulation of mast cell degranulation').
leaf('GATA1','positive regulation of transcription by RNA polymerase II').
leaf('GATA1','regulation of definitive erythrocyte differentiation').
bp('regulation of definitive erythrocyte differentiation').
leaf('GATA1','regulation of glycoprotein biosynthetic process').
bp('regulation of glycoprotein biosynthetic process').
leaf('GATA1','Sertoli cell development').
bp('Sertoli cell development').
leaf('GATA1','chromatin').
leaf('GATA1','nucleoplasm').
leaf('GATA1','nucleus').
leaf('GATA1','protein-DNA complex').
cc('protein-DNA complex').
leaf('GATA1','transcription regulator complex').
leaf('GATA1','transcription repressor complex').
cc('transcription repressor complex').
go('C2H2 zinc finger domain binding',is_a,'protein domain specific binding').
go('animal organ regeneration',is_a,'animal organ development').
go('animal organ regeneration',is_a,'regeneration').
go('basophil differentiation',is_a,'granulocyte differentiation').
go('cell fate commitment',is_a,'cellular developmental process').
go('cell fate commitment',part_of,'cell differentiation').
go('cellular response to follicle-stimulating hormone stimulus',is_a,'response to follicle-stimulating hormone').
go('cellular response to follicle-stimulating hormone stimulus',is_a,'cellular response to gonadotropin stimulus').
go('response to follicle-stimulating hormone',is_a,'response to gonadotropin').
go('cellular response to gonadotropin stimulus',is_a,'response to gonadotropin').
go('cellular response to gonadotropin stimulus',is_a,'cellular response to hormone stimulus').
go('response to gonadotropin',is_a,'response to hormone').
go('cellular response to lipopolysaccharide',is_a,'cellular response to molecule of bacterial origin').
go('cellular response to lipopolysaccharide',is_a,'response to lipopolysaccharide').
go('cellular response to molecule of bacterial origin',is_a,'cellular response to biotic stimulus').
go('cellular response to biotic stimulus',is_a,'cellular response to stimulus').
go('cellular response to biotic stimulus',is_a,'response to biotic stimulus').
go('cellular response to molecule of bacterial origin',is_a,'response to molecule of bacterial origin').
go('cellular response to lipopolysaccharide',is_a,'cellular response to oxygen-containing compound').
go('cellular response to lipopolysaccharide',is_a,'cellular response to lipid').
go('eosinophil differentiation',is_a,'granulocyte differentiation').
go('eosinophil differentiation',is_a,'cell development').
go('eosinophil fate commitment',is_a,'cell fate commitment').
go('eosinophil fate commitment',part_of,'eosinophil differentiation').
go('erythrocyte development',is_a,'myeloid cell development').
go('myeloid cell development',is_a,'hemopoiesis').
go('myeloid cell development',part_of,'myeloid cell differentiation').
go('erythrocyte development',part_of,'erythrocyte differentiation').
go('erythrocyte differentiation',is_a,'myeloid cell differentiation').
go('erythrocyte differentiation',part_of,'erythrocyte homeostasis').
go('erythrocyte homeostasis',is_a,'myeloid cell homeostasis').
go('myeloid cell homeostasis',is_a,'homeostasis of number of cells').
go('myeloid cell homeostasis',is_a,'immune system process').
go('homeostasis of number of cells',is_a,'multicellular organismal-level homeostasis').
go('multicellular organismal-level homeostasis',is_a,'multicellular organismal process').
go('multicellular organismal-level homeostasis',is_a,'homeostatic process').
go('megakaryocyte differentiation',is_a,'myeloid cell differentiation').
go('negative regulation of extrinsic apoptotic signaling pathway in absence of ligand',is_a,'negative regulation of extrinsic apoptotic signaling pathway').
go('negative regulation of extrinsic apoptotic signaling pathway in absence of ligand',is_a,'negative regulation of signal transduction in absence of ligand').
go('negative regulation of extrinsic apoptotic signaling pathway',is_a,'regulation of extrinsic apoptotic signaling pathway').
go('negative regulation of signal transduction in absence of ligand',is_a,'negative regulation of signal transduction').
go('regulation of extrinsic apoptotic signaling pathway',is_a,'regulation of apoptotic signaling pathway').
go('negative regulation of extrinsic apoptotic signaling pathway in absence of ligand',is_a,'regulation of extrinsic apoptotic signaling pathway in absence of ligand').
go('regulation of extrinsic apoptotic signaling pathway in absence of ligand',is_a,'regulation of extrinsic apoptotic signaling pathway').
go('regulation of extrinsic apoptotic signaling pathway',regulates,'extrinsic apoptotic signaling pathway').
go('regulation of extrinsic apoptotic signaling pathway in absence of ligand',regulates,'extrinsic apoptotic signaling pathway in absence of ligand').
go('extrinsic apoptotic signaling pathway',is_a,'apoptotic signaling pathway').
go('extrinsic apoptotic signaling pathway',is_a,'cell surface receptor signaling pathway').
go('extrinsic apoptotic signaling pathway in absence of ligand',is_a,'extrinsic apoptotic signaling pathway').
go('negative regulation of extrinsic apoptotic signaling pathway',is_a,'negative regulation of apoptotic signaling pathway').
go('extrinsic apoptotic signaling pathway in absence of ligand',is_a,'signal transduction in absence of ligand').
go('negative regulation of apoptotic signaling pathway',is_a,'negative regulation of signal transduction').
go('signal transduction in absence of ligand',is_a,'signal transduction').
go('negative regulation of apoptotic signaling pathway',is_a,'regulation of apoptotic signaling pathway').
go('negative regulation of apoptotic signaling pathway',is_a,'negative regulation of apoptotic process').
go('platelet aggregation',is_a,'homotypic cell-cell adhesion').
go('homotypic cell-cell adhesion',is_a,'cell-cell adhesion').
go('platelet aggregation',part_of,'platelet activation').
go('platelet activation',is_a,'cell activation').
go('platelet activation',part_of,'blood coagulation').
go('blood coagulation',is_a,'coagulation').
go('blood coagulation',is_a,'hemostasis').
go('coagulation',is_a,'multicellular organismal process').
go('hemostasis',is_a,'regulation of body fluid levels').
go('regulation of body fluid levels',is_a,'regulation of biological quality').
go('blood coagulation',part_of,'wound healing').
go('platelet formation',is_a,'anatomical structure formation involved in morphogenesis').
go('platelet formation',is_a,'myeloid cell differentiation').
go('platelet formation',part_of,'platelet morphogenesis').
go('platelet morphogenesis',is_a,'cell morphogenesis').
go('positive regulation of cytosolic calcium ion concentration',is_a,'regulation of biological quality').
go('positive regulation of erythrocyte differentiation',is_a,'regulation of erythrocyte differentiation').
go('positive regulation of erythrocyte differentiation',is_a,'positive regulation of myeloid cell differentiation').
go('regulation of erythrocyte differentiation',is_a,'regulation of myeloid cell differentiation').
go('regulation of erythrocyte differentiation',regulates,'erythrocyte differentiation').
go('positive regulation of mast cell degranulation',is_a,'positive regulation of leukocyte degranulation').
go('positive regulation of mast cell degranulation',is_a,'regulation of mast cell degranulation').
go('positive regulation of leukocyte degranulation',is_a,'positive regulation of immune effector process').
go('regulation of mast cell degranulation',is_a,'regulation of myeloid leukocyte mediated immunity').
go('positive regulation of immune effector process',is_a,'regulation of immune effector process').
go('regulation of myeloid leukocyte mediated immunity',is_a,'regulation of leukocyte mediated immunity').
go('positive regulation of immune effector process',is_a,'positive regulation of immune system process').
go('positive regulation of leukocyte degranulation',is_a,'positive regulation of regulated secretory pathway').
go('regulation of myeloid leukocyte mediated immunity',regulates,'myeloid leukocyte mediated immunity').
go('positive regulation of regulated secretory pathway',is_a,'regulation of regulated secretory pathway').
go('myeloid leukocyte mediated immunity',is_a,'leukocyte mediated immunity').
go('regulation of regulated secretory pathway',is_a,'regulation of exocytosis').
go('regulation of exocytosis',is_a,'regulation of vesicle-mediated transport').
go('regulation of mast cell degranulation',is_a,'regulation of leukocyte degranulation').
go('regulation of exocytosis',is_a,'regulation of secretion by cell').
go('regulation of leukocyte degranulation',is_a,'regulation of regulated secretory pathway').
go('regulation of leukocyte degranulation',is_a,'regulation of immune effector process').
go('regulation of leukocyte degranulation',regulates,'leukocyte degranulation').
go('leukocyte degranulation',is_a,'regulated exocytosis').
go('regulated exocytosis',is_a,'exocytosis').
go('regulation of exocytosis',regulates,'exocytosis').
go('exocytosis',is_a,'secretion by cell').
go('regulation of regulated secretory pathway',regulates,'regulated exocytosis').
go('positive regulation of regulated secretory pathway',is_a,'positive regulation of exocytosis').
go('exocytosis',is_a,'vesicle-mediated transport').
go('positive regulation of exocytosis',is_a,'positive regulation of secretion by cell').
go('leukocyte degranulation',is_a,'establishment of localization in cell').
go('positive regulation of secretion by cell',is_a,'positive regulation of secretion').
go('positive regulation of secretion',is_a,'positive regulation of transport').
go('positive regulation of secretion',is_a,'regulation of secretion').
go('leukocyte degranulation',is_a,'immune effector process').
go('positive regulation of secretion by cell',is_a,'regulation of secretion by cell').
go('regulation of mast cell degranulation',regulates,'mast cell degranulation').
go('positive regulation of secretion by cell',is_a,'positive regulation of cellular process').
go('positive regulation of exocytosis',is_a,'regulation of exocytosis').
go('mast cell degranulation',is_a,'lysosome localization').
go('positive regulation of leukocyte degranulation',is_a,'regulation of leukocyte degranulation').
go('mast cell degranulation',is_a,'leukocyte degranulation').
go('mast cell degranulation',is_a,'establishment of organelle localization').
go('establishment of organelle localization',is_a,'organelle localization').
go('establishment of organelle localization',is_a,'establishment of localization').
go('mast cell degranulation',part_of,'mast cell activation involved in immune response').
go('mast cell degranulation',part_of,'mast cell mediated immunity').
go('mast cell activation involved in immune response',is_a,'mast cell activation').
go('mast cell mediated immunity',is_a,'myeloid leukocyte mediated immunity').
go('mast cell activation',is_a,'myeloid leukocyte activation').
go('mast cell activation involved in immune response',is_a,'myeloid cell activation involved in immune response').
go('myeloid cell activation involved in immune response',is_a,'leukocyte activation involved in immune response').
go('leukocyte activation involved in immune response',is_a,'leukocyte activation').
go('leukocyte activation involved in immune response',is_a,'cell activation involved in immune response').
go('cell activation involved in immune response',is_a,'cell activation').
go('cell activation involved in immune response',is_a,'immune effector process').
go('cell activation involved in immune response',part_of,'immune response').
go('leukocyte activation involved in immune response',part_of,'immune response').
go('myeloid cell activation involved in immune response',is_a,'myeloid leukocyte activation').
go('mast cell activation involved in immune response',part_of,'immune response').
go('regulation of definitive erythrocyte differentiation',is_a,'regulation of erythrocyte differentiation').
go('regulation of definitive erythrocyte differentiation',regulates,'definitive erythrocyte differentiation').
go('definitive erythrocyte differentiation',is_a,'erythrocyte differentiation').
go('definitive erythrocyte differentiation',part_of,'definitive hemopoiesis').
go('definitive hemopoiesis',is_a,'hemopoiesis').
go('regulation of glycoprotein biosynthetic process',is_a,'regulation of macromolecule biosynthetic process').
go('regulation of glycoprotein biosynthetic process',is_a,'regulation of glycoprotein metabolic process').
go('regulation of glycoprotein metabolic process',is_a,'regulation of protein metabolic process').
go('regulation of glycoprotein metabolic process',regulates,'glycoprotein metabolic process').
go('regulation of glycoprotein biosynthetic process',regulates,'glycoprotein biosynthetic process').
go('Sertoli cell development',is_a,'epithelial cell development').
go('Sertoli cell development',is_a,'developmental process involved in reproduction').
go('epithelial cell development',is_a,'cell development').
go('epithelial cell development',part_of,'epithelial cell differentiation').
go('epithelial cell differentiation',is_a,'cell differentiation').
go('epithelial cell differentiation',part_of,'epithelium development').
go('Sertoli cell development',part_of,'Sertoli cell differentiation').
go('Sertoli cell differentiation',is_a,'developmental process involved in reproduction').
go('Sertoli cell differentiation',is_a,'epithelial cell differentiation').
go('Sertoli cell differentiation',part_of,'male gonad development').
go('protein-DNA complex',is_a,'protein-containing complex').
leaf('BATF','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('BATF','DNA-binding transcription factor activity').
leaf('BATF','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('BATF','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('BATF','sequence-specific DNA binding').
leaf('BATF','sequence-specific double-stranded DNA binding').
leaf('BATF','defense response to protozoan').
bp('defense response to protozoan').
leaf('BATF','DNA damage response').
leaf('BATF','DNA damage response, signal transduction by p53 class mediator').
leaf('BATF','hematopoietic stem cell differentiation').
bp('hematopoietic stem cell differentiation').
leaf('BATF','integrated stress response signaling').
leaf('BATF','isotype switching').
bp('isotype switching').
leaf('BATF','lymphoid progenitor cell differentiation').
bp('lymphoid progenitor cell differentiation').
leaf('BATF','myeloid dendritic cell differentiation').
bp('myeloid dendritic cell differentiation').
leaf('BATF','positive regulation of cytokine production').
bp('positive regulation of cytokine production').
leaf('BATF','regulation of T-helper 17 cell differentiation').
bp('regulation of T-helper 17 cell differentiation').
leaf('BATF','regulation of transcription by RNA polymerase II').
leaf('BATF','T-helper 17 cell differentiation').
bp('T-helper 17 cell differentiation').
leaf('BATF','T-helper 17 cell lineage commitment').
bp('T-helper 17 cell lineage commitment').
leaf('BATF','T-helper 2 cell differentiation').
bp('T-helper 2 cell differentiation').
leaf('BATF','chromatin').
leaf('BATF','cytoplasm').
leaf('BATF','nucleoplasm').
leaf('BATF','nucleus').
leaf('BATF','RNA polymerase II transcription regulator complex').
go('defense response to protozoan',is_a,'defense response to other organism').
go('defense response to protozoan',is_a,'response to protozoan').
go('response to protozoan',is_a,'response to other organism').
go('hematopoietic stem cell differentiation',is_a,'stem cell differentiation').
go('hematopoietic stem cell differentiation',is_a,'hematopoietic progenitor cell differentiation').
go('hematopoietic progenitor cell differentiation',is_a,'cell differentiation').
go('stem cell differentiation',is_a,'cell differentiation').
go('hematopoietic progenitor cell differentiation',part_of,'hemopoiesis').
go('isotype switching',is_a,'B cell activation involved in immune response').
go('isotype switching',is_a,'somatic recombination of immunoglobulin genes involved in immune response').
go('B cell activation involved in immune response',is_a,'B cell activation').
go('somatic recombination of immunoglobulin genes involved in immune response',is_a,'somatic recombination of immunoglobulin gene segments').
go('B cell activation',is_a,'lymphocyte activation').
go('somatic recombination of immunoglobulin gene segments',is_a,'somatic diversification of immune receptors via germline recombination within a single locus').
go('somatic diversification of immune receptors via germline recombination within a single locus',is_a,'somatic cell DNA recombination').
go('B cell activation involved in immune response',is_a,'lymphocyte activation involved in immune response').
go('somatic cell DNA recombination',is_a,'DNA recombination').
go('lymphocyte activation involved in immune response',is_a,'lymphocyte activation').
go('lymphocyte activation involved in immune response',is_a,'leukocyte activation involved in immune response').
go('somatic diversification of immune receptors via germline recombination within a single locus',is_a,'somatic diversification of immune receptors').
go('somatic diversification of immune receptors',is_a,'immune system process').
go('somatic diversification of immune receptors',part_of,'immune system development').
go('immune system development',is_a,'immune system process').
go('immune system development',is_a,'animal gross anatomical part developmental process').
go('immune system development',is_a,'system development').
go('lymphocyte activation involved in immune response',part_of,'immune response').
go('B cell activation involved in immune response',part_of,'immune response').
go('somatic recombination of immunoglobulin gene segments',is_a,'somatic diversification of immunoglobulins').
go('somatic recombination of immunoglobulin genes involved in immune response',is_a,'somatic diversification of immunoglobulins involved in immune response').
go('somatic diversification of immunoglobulins',is_a,'somatic diversification of immune receptors').
go('somatic diversification of immunoglobulins involved in immune response',is_a,'somatic diversification of immunoglobulins').
go('somatic diversification of immunoglobulins',part_of,'immunoglobulin production').
go('somatic diversification of immunoglobulins involved in immune response',part_of,'immunoglobulin production involved in immunoglobulin-mediated immune response').
go('immunoglobulin production',is_a,'production of molecular mediator of immune response').
go('production of molecular mediator of immune response',is_a,'gene expression').
go('immunoglobulin production involved in immunoglobulin-mediated immune response',is_a,'immunoglobulin production').
go('immunoglobulin production involved in immunoglobulin-mediated immune response',part_of,'immunoglobulin mediated immune response').
go('production of molecular mediator of immune response',is_a,'immune system process').
go('immunoglobulin mediated immune response',is_a,'B cell mediated immunity').
go('B cell mediated immunity',is_a,'adaptive immune response based on somatic recombination of immune receptors built from immunoglobulin superfamily domains').
go('adaptive immune response based on somatic recombination of immune receptors built from immunoglobulin superfamily domains',is_a,'adaptive immune response').
go('adaptive immune response',is_a,'immune response').
go('B cell mediated immunity',is_a,'lymphocyte mediated immunity').
go('lymphoid progenitor cell differentiation',is_a,'hematopoietic progenitor cell differentiation').
go('myeloid dendritic cell differentiation',is_a,'myeloid dendritic cell activation').
go('myeloid dendritic cell differentiation',is_a,'myeloid leukocyte differentiation').
go('myeloid dendritic cell activation',is_a,'myeloid leukocyte activation').
go('myeloid dendritic cell differentiation',is_a,'dendritic cell differentiation').
go('dendritic cell differentiation',is_a,'mononuclear cell differentiation').
go('regulation of T-helper 17 cell differentiation',is_a,'regulation of T-helper cell differentiation').
go('regulation of T-helper 17 cell differentiation',is_a,'regulation of immune effector process').
go('regulation of T-helper cell differentiation',is_a,'regulation of CD4-positive, alpha-beta T cell differentiation').
go('regulation of T-helper 17 cell differentiation',is_a,'regulation of T-helper 17 type immune response').
go('regulation of T-helper 17 type immune response',is_a,'regulation of adaptive immune response based on somatic recombination of immune receptors built from immunoglobulin superfamily domains').
go('regulation of adaptive immune response based on somatic recombination of immune receptors built from immunoglobulin superfamily domains',is_a,'regulation of adaptive immune response').
go('regulation of adaptive immune response',is_a,'regulation of immune response').
go('regulation of adaptive immune response',regulates,'adaptive immune response').
go('regulation of adaptive immune response based on somatic recombination of immune receptors built from immunoglobulin superfamily domains',regulates,'adaptive immune response based on somatic recombination of immune receptors built from immunoglobulin superfamily domains').
go('regulation of T-helper 17 type immune response',regulates,'T-helper 17 type immune response').
go('T-helper 17 type immune response',is_a,'adaptive immune response based on somatic recombination of immune receptors built from immunoglobulin superfamily domains').
go('regulation of T-helper cell differentiation',is_a,'regulation of immune response').
go('regulation of T-helper cell differentiation',regulates,'T-helper cell differentiation').
go('T-helper cell differentiation',is_a,'CD4-positive, alpha-beta T cell differentiation').
go('regulation of T-helper 17 cell differentiation',regulates,'T-helper 17 cell differentiation').
go('T-helper 17 cell differentiation',is_a,'alpha-beta T cell activation involved in immune response').
go('alpha-beta T cell activation involved in immune response',is_a,'alpha-beta T cell activation').
go('T-helper 17 cell differentiation',is_a,'T cell differentiation involved in immune response').
go('alpha-beta T cell activation involved in immune response',is_a,'T cell activation involved in immune response').
go('T cell activation involved in immune response',is_a,'T cell activation').
go('T cell differentiation involved in immune response',is_a,'T cell differentiation').
go('T cell activation involved in immune response',is_a,'lymphocyte activation involved in immune response').
go('T cell differentiation involved in immune response',is_a,'T cell activation involved in immune response').
go('T cell activation involved in immune response',part_of,'immune response').
go('T cell differentiation involved in immune response',part_of,'immune response').
go('alpha-beta T cell activation involved in immune response',part_of,'immune response').
go('T-helper 17 cell differentiation',is_a,'T-helper cell differentiation').
go('T-helper 17 cell differentiation',part_of,'T-helper 17 type immune response').
go('T-helper 17 cell lineage commitment',is_a,'T-helper cell lineage commitment').
go('T-helper cell lineage commitment',is_a,'CD4-positive, alpha-beta T cell lineage commitment').
go('CD4-positive, alpha-beta T cell lineage commitment',is_a,'alpha-beta T cell lineage commitment').
go('CD4-positive, alpha-beta T cell lineage commitment',is_a,'CD4-positive or CD8-positive, alpha-beta T cell lineage commitment').
go('CD4-positive or CD8-positive, alpha-beta T cell lineage commitment',is_a,'T cell lineage commitment').
go('alpha-beta T cell lineage commitment',is_a,'T cell lineage commitment').
go('T cell lineage commitment',is_a,'cell fate commitment').
go('alpha-beta T cell lineage commitment',part_of,'alpha-beta T cell differentiation').
go('T cell lineage commitment',part_of,'T cell differentiation').
go('CD4-positive or CD8-positive, alpha-beta T cell lineage commitment',part_of,'positive T cell selection').
go('positive T cell selection',is_a,'T cell selection').
go('T cell selection',is_a,'immune system process').
go('T cell selection',part_of,'T cell differentiation').
go('CD4-positive, alpha-beta T cell lineage commitment',part_of,'CD4-positive, alpha-beta T cell differentiation').
go('T-helper cell lineage commitment',part_of,'T-helper cell differentiation').
go('T-helper 17 cell lineage commitment',part_of,'T-helper 17 cell differentiation').
go('T-helper 2 cell differentiation',is_a,'alpha-beta T cell activation involved in immune response').
go('T-helper 2 cell differentiation',is_a,'T-helper cell differentiation').
go('T-helper 2 cell differentiation',is_a,'T cell differentiation involved in immune response').
go('T-helper 2 cell differentiation',part_of,'type 2 immune response').
go('type 2 immune response',is_a,'immune response').
leaf('BATF2','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('BATF2','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('BATF2','defense response to protozoan').
leaf('BATF2','integrated stress response signaling').
leaf('BATF2','myeloid dendritic cell differentiation').
leaf('BATF2','regulation of transcription by RNA polymerase II').
leaf('BATF2','chromatin').
leaf('BATF2','nucleus').
leaf('BATF2','RNA polymerase II transcription regulator complex').
leaf('BATF3','DNA-binding transcription factor activity').
leaf('BATF3','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('BATF3','DNA-binding transcription repressor activity, RNA polymerase II-specific').
leaf('BATF3','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('BATF3','sequence-specific double-stranded DNA binding').
leaf('BATF3','dendritic cell differentiation').
bp('dendritic cell differentiation').
leaf('BATF3','integrated stress response signaling').
leaf('BATF3','myeloid dendritic cell differentiation').
leaf('BATF3','negative regulation of transcription by RNA polymerase II').
leaf('BATF3','regulation of transcription by RNA polymerase II').
leaf('BATF3','response to virus').
leaf('BATF3','chromatin').
leaf('BATF3','nucleolus').
leaf('BATF3','nucleoplasm').
leaf('BATF3','nucleus').
leaf('BATF3','RNA polymerase II transcription regulator complex').
leaf('MDFI','identical protein binding').
leaf('MDFI','protein sequestering activity').
fm('protein sequestering activity').
leaf('MDFI','transcription regulator inhibitor activity').
fm('transcription regulator inhibitor activity').
leaf('MDFI','dorsal/ventral axis specification').
bp('dorsal/ventral axis specification').
leaf('MDFI','maintenance of protein location in cell').
bp('maintenance of protein location in cell').
leaf('MDFI','negative regulation of DNA-templated transcription').
leaf('MDFI','negative regulation of transcription by RNA polymerase II').
leaf('MDFI','negative regulation of Wnt signaling pathway').
bp('negative regulation of Wnt signaling pathway').
leaf('MDFI','regulation of JNK cascade').
bp('regulation of JNK cascade').
leaf('MDFI','regulation of Wnt signaling pathway').
bp('regulation of Wnt signaling pathway').
leaf('MDFI','cytoplasm').
leaf('MDFI','nucleus').
go('protein sequestering activity',is_a,'molecular sequestering activity').
go('molecular sequestering activity',is_a,'molecular_function').
go('transcription regulator inhibitor activity',is_a,'molecular function inhibitor activity').
go('transcription regulator inhibitor activity',part_of,'regulation of gene expression').
go('dorsal/ventral axis specification',is_a,'axis specification').
go('axis specification',is_a,'pattern specification process').
go('dorsal/ventral axis specification',part_of,'dorsal/ventral pattern formation').
go('dorsal/ventral pattern formation',is_a,'regionalization').
go('maintenance of protein location in cell',is_a,'maintenance of location in cell').
go('maintenance of protein location in cell',is_a,'maintenance of protein location').
go('maintenance of location in cell',is_a,'cellular process').
go('maintenance of protein location',is_a,'maintenance of location').
go('maintenance of location in cell',is_a,'maintenance of location').
go('maintenance of location',is_a,'localization').
go('maintenance of location in cell',part_of,'cellular localization').
go('maintenance of protein location',part_of,'intracellular protein localization').
go('negative regulation of Wnt signaling pathway',is_a,'regulation of Wnt signaling pathway').
go('negative regulation of Wnt signaling pathway',is_a,'negative regulation of signal transduction').
go('regulation of JNK cascade',is_a,'regulation of MAPK cascade').
go('regulation of JNK cascade',regulates,'JNK cascade').
leaf('MDFIC','cyclin binding').
fm('cyclin binding').
leaf('MDFIC','DNA-binding transcription factor binding').
leaf('MDFIC','Tat protein binding').
fm('Tat protein binding').
leaf('MDFIC','negative regulation of DNA-templated transcription').
leaf('MDFIC','negative regulation of protein import into nucleus').
bp('negative regulation of protein import into nucleus').
leaf('MDFIC','positive regulation of DNA-templated transcription').
leaf('MDFIC','positive regulation of viral transcription').
bp('positive regulation of viral transcription').
leaf('MDFIC','regulation of JNK cascade').
leaf('MDFIC','regulation of Wnt signaling pathway').
leaf('MDFIC','cytoplasm').
leaf('MDFIC','extracellular region').
leaf('MDFIC','nucleolus').
leaf('MDFIC','nucleoplasm').
leaf('MDFIC','nucleus').
go('cyclin binding',is_a,'protein binding').
go('Tat protein binding',is_a,'RNA polymerase II-specific DNA-binding transcription factor binding').
go('negative regulation of protein import into nucleus',is_a,'negative regulation of nucleocytoplasmic transport').
go('negative regulation of protein import into nucleus',is_a,'negative regulation of intracellular protein transport').
go('negative regulation of intracellular protein transport',is_a,'regulation of intracellular protein transport').
go('negative regulation of nucleocytoplasmic transport',is_a,'negative regulation of intracellular transport').
go('negative regulation of intracellular transport',is_a,'negative regulation of transport').
go('regulation of intracellular protein transport',is_a,'regulation of intracellular transport').
go('negative regulation of intracellular transport',is_a,'negative regulation of cellular process').
go('negative regulation of intracellular transport',is_a,'regulation of intracellular transport').
go('negative regulation of nucleocytoplasmic transport',is_a,'regulation of nucleocytoplasmic transport').
go('negative regulation of protein import into nucleus',is_a,'regulation of protein import into nucleus').
go('regulation of intracellular protein transport',is_a,'regulation of protein transport').
go('regulation of protein import into nucleus',is_a,'regulation of intracellular protein transport').
go('regulation of protein import into nucleus',is_a,'regulation of protein localization to nucleus').
go('regulation of protein import into nucleus',is_a,'regulation of nucleocytoplasmic transport').
go('regulation of protein import into nucleus',regulates,'protein import into nucleus').
go('regulation of intracellular protein transport',regulates,'intracellular protein transport').
go('protein import into nucleus',is_a,'intracellular protein transport').
go('protein import into nucleus',is_a,'protein localization to nucleus').
go('protein import into nucleus',is_a,'establishment of protein localization to organelle').
go('establishment of protein localization to organelle',is_a,'establishment of protein localization').
go('negative regulation of intracellular protein transport',is_a,'negative regulation of protein transport').
go('protein import into nucleus',is_a,'import into nucleus').
go('negative regulation of protein transport',is_a,'negative regulation of protein localization').
go('import into nucleus',is_a,'nucleocytoplasmic transport').
go('negative regulation of protein import into nucleus',is_a,'negative regulation of protein localization to nucleus').
go('negative regulation of protein transport',is_a,'negative regulation of establishment of protein localization').
go('negative regulation of protein localization to nucleus',is_a,'regulation of protein localization to nucleus').
go('negative regulation of protein localization to nucleus',is_a,'negative regulation of protein localization').
go('negative regulation of protein transport',is_a,'negative regulation of transport').
go('negative regulation of intracellular protein transport',is_a,'negative regulation of intracellular transport').
go('negative regulation of protein transport',is_a,'regulation of protein transport').
go('positive regulation of viral transcription',is_a,'regulation of viral transcription').
go('positive regulation of viral transcription',is_a,'positive regulation of viral process').
go('positive regulation of viral process',is_a,'positive regulation of biological process').
go('regulation of viral transcription',is_a,'regulation of viral process').
go('regulation of viral process',is_a,'regulation of biological process').
go('positive regulation of viral process',is_a,'regulation of viral process').
go('regulation of viral process',regulates,'viral process').
go('regulation of viral transcription',regulates,'viral transcription').
go('viral transcription',is_a,'viral process').
go('viral transcription',part_of,'viral gene expression').
go('viral gene expression',is_a,'viral process').
leaf('MDFIC2','negative regulation of DNA-templated transcription').
leaf('MDFIC2','regulation of JNK cascade').
leaf('MDFIC2','regulation of Wnt signaling pathway').
leaf('MDFIC2','nucleus').
leaf('REPIN1','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('REPIN1','RNA binding').
leaf('REPIN1','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('REPIN1','sequence-specific DNA binding').
leaf('REPIN1','regulation of fatty acid transport').
bp('regulation of fatty acid transport').
leaf('REPIN1','regulation of transcription by RNA polymerase II').
leaf('REPIN1','cytosol').
leaf('REPIN1','nuclear membrane').
leaf('REPIN1','nucleoplasm').
leaf('REPIN1','nucleus').
go('regulation of fatty acid transport',is_a,'regulation of lipid transport').
go('regulation of fatty acid transport',is_a,'regulation of organic acid transport').
go('regulation of organic acid transport',is_a,'regulation of transport').
go('regulation of organic acid transport',regulates,'organic acid transport').
go('regulation of fatty acid transport',regulates,'fatty acid transport').
leaf('CEBPA','chromatin DNA binding').
leaf('CEBPA','DNA binding').
leaf('CEBPA','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('CEBPA','DNA-binding transcription factor activity').
leaf('CEBPA','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('CEBPA','HMG box domain binding').
fm('HMG box domain binding').
leaf('CEBPA','identical protein binding').
leaf('CEBPA','kinase binding').
leaf('CEBPA','protein heterodimerization activity').
leaf('CEBPA','protein homodimerization activity').
leaf('CEBPA','RNA polymerase I transcription regulatory region sequence-specific DNA binding').
fm('RNA polymerase I transcription regulatory region sequence-specific DNA binding').
leaf('CEBPA','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('CEBPA','RNA polymerase II-specific DNA-binding transcription factor binding').
leaf('CEBPA','STAT family protein binding').
fm('STAT family protein binding').
leaf('CEBPA','transcription cis-regulatory region binding').
leaf('CEBPA','cytokine-mediated signaling pathway').
leaf('CEBPA','DNA-templated transcription').
leaf('CEBPA','energy homeostasis').
bp('energy homeostasis').
leaf('CEBPA','fat cell differentiation').
leaf('CEBPA','generation of precursor metabolites and energy').
bp('generation of precursor metabolites and energy').
leaf('CEBPA','glucose homeostasis').
leaf('CEBPA','granulocyte differentiation').
bp('granulocyte differentiation').
leaf('CEBPA','integrated stress response signaling').
leaf('CEBPA','interleukin-6-mediated signaling pathway').
bp('interleukin-6-mediated signaling pathway').
leaf('CEBPA','lipid homeostasis').
bp('lipid homeostasis').
leaf('CEBPA','liver development').
bp('liver development').
leaf('CEBPA','lung development').
bp('lung development').
leaf('CEBPA','myeloid cell differentiation').
leaf('CEBPA','negative regulation of cell cycle').
leaf('CEBPA','negative regulation of cell population proliferation').
leaf('CEBPA','negative regulation of DNA-templated transcription').
leaf('CEBPA','negative regulation of transcription by RNA polymerase II').
leaf('CEBPA','positive regulation of DNA-templated transcription initiation').
bp('positive regulation of DNA-templated transcription initiation').
leaf('CEBPA','positive regulation of gene expression').
leaf('CEBPA','positive regulation of inflammatory response').
bp('positive regulation of inflammatory response').
leaf('CEBPA','positive regulation of macrophage activation').
bp('positive regulation of macrophage activation').
leaf('CEBPA','positive regulation of proteasomal ubiquitin-dependent protein catabolic process').
bp('positive regulation of proteasomal ubiquitin-dependent protein catabolic process').
leaf('CEBPA','positive regulation of transcription by RNA polymerase II').
leaf('CEBPA','regulation of cell cycle').
bp('regulation of cell cycle').
leaf('CEBPA','regulation of DNA-templated transcription').
leaf('CEBPA','regulation of transcription by RNA polymerase II').
leaf('CEBPA','transcription by RNA polymerase I').
bp('transcription by RNA polymerase I').
leaf('CEBPA','white fat cell proliferation').
bp('white fat cell proliferation').
leaf('CEBPA','C/EBP complex').
cc('C/EBP complex').
leaf('CEBPA','CHOP-C/EBP complex').
cc('CHOP-C/EBP complex').
leaf('CEBPA','chromatin').
leaf('CEBPA','nucleolus').
leaf('CEBPA','nucleoplasm').
leaf('CEBPA','nucleus').
leaf('CEBPA','RNA polymerase II transcription regulator complex').
leaf('CEBPA','transcription regulator complex').
go('HMG box domain binding',is_a,'protein domain specific binding').
go('RNA polymerase I transcription regulatory region sequence-specific DNA binding',is_a,'transcription cis-regulatory region binding').
go('STAT family protein binding',is_a,'RNA polymerase II-specific DNA-binding transcription factor binding').
go('energy homeostasis',is_a,'multicellular organismal-level homeostasis').
go('interleukin-6-mediated signaling pathway',is_a,'cytokine-mediated signaling pathway').
go('interleukin-6-mediated signaling pathway',part_of,'cellular response to interleukin-6').
go('cellular response to interleukin-6',is_a,'cellular response to cytokine stimulus').
go('cellular response to interleukin-6',is_a,'response to interleukin-6').
go('response to interleukin-6',is_a,'response to cytokine').
go('liver development',is_a,'gland development').
go('gland development',is_a,'animal organ development').
go('liver development',part_of,'hepaticobiliary system development').
go('hepaticobiliary system development',is_a,'animal gross anatomical part developmental process').
go('hepaticobiliary system development',is_a,'system development').
go('lung development',is_a,'animal organ development').
go('lung development',part_of,'respiratory system development').
go('lung development',part_of,'respiratory tube development').
go('respiratory system development',is_a,'animal gross anatomical part developmental process').
go('respiratory tube development',is_a,'animal organ development').
go('respiratory system development',is_a,'system development').
go('respiratory tube development',is_a,'tube development').
go('positive regulation of DNA-templated transcription initiation',is_a,'positive regulation of DNA-templated transcription').
go('positive regulation of DNA-templated transcription initiation',is_a,'regulation of DNA-templated transcription initiation').
go('positive regulation of inflammatory response',is_a,'positive regulation of defense response').
go('positive regulation of inflammatory response',is_a,'regulation of inflammatory response').
go('positive regulation of inflammatory response',is_a,'positive regulation of response to external stimulus').
go('regulation of inflammatory response',is_a,'regulation of response to external stimulus').
go('regulation of inflammatory response',is_a,'regulation of defense response').
go('regulation of inflammatory response',regulates,'inflammatory response').
go('positive regulation of macrophage activation',is_a,'positive regulation of leukocyte activation').
go('positive regulation of macrophage activation',is_a,'regulation of macrophage activation').
go('regulation of macrophage activation',is_a,'regulation of leukocyte activation').
go('regulation of macrophage activation',regulates,'macrophage activation').
go('positive regulation of proteasomal ubiquitin-dependent protein catabolic process',is_a,'positive regulation of proteasomal protein catabolic process').
go('positive regulation of proteasomal ubiquitin-dependent protein catabolic process',is_a,'regulation of proteasomal ubiquitin-dependent protein catabolic process').
go('positive regulation of proteasomal protein catabolic process',is_a,'positive regulation of protein catabolic process').
go('positive regulation of proteasomal protein catabolic process',is_a,'regulation of proteasomal protein catabolic process').
go('positive regulation of proteasomal ubiquitin-dependent protein catabolic process',is_a,'positive regulation of ubiquitin-dependent protein catabolic process').
go('white fat cell proliferation',is_a,'fat cell proliferation').
go('fat cell proliferation',is_a,'cell population proliferation').
go('C/EBP complex',is_a,'RNA polymerase II transcription regulator complex').
go('CHOP-C/EBP complex',is_a,'RNA polymerase II transcription regulator complex').
leaf('CEBPB','chromatin DNA binding').
leaf('CEBPB','DNA binding').
leaf('CEBPB','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('CEBPB','DNA-binding transcription factor activity').
leaf('CEBPB','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('CEBPB','DNA-binding transcription repressor activity, RNA polymerase II-specific').
leaf('CEBPB','histone acetyltransferase binding').
fm('histone acetyltransferase binding').
leaf('CEBPB','histone deacetylase binding').
fm('histone deacetylase binding').
leaf('CEBPB','kinase binding').
leaf('CEBPB','obsolete nuclear glucocorticoid receptor binding').
fm('obsolete nuclear glucocorticoid receptor binding').
leaf('CEBPB','protein heterodimerization activity').
leaf('CEBPB','protein homodimerization activity').
leaf('CEBPB','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('CEBPB','RNA polymerase II core promoter sequence-specific DNA binding').
fm('RNA polymerase II core promoter sequence-specific DNA binding').
leaf('CEBPB','RNA polymerase II transcription regulatory region sequence-specific DNA binding').
leaf('CEBPB','sequence-specific double-stranded DNA binding').
leaf('CEBPB','transcription cis-regulatory region binding').
leaf('CEBPB','ubiquitin-like protein ligase binding').
fm('ubiquitin-like protein ligase binding').
leaf('CEBPB','acute-phase response').
bp('acute-phase response').
leaf('CEBPB','brown fat cell differentiation').
bp('brown fat cell differentiation').
leaf('CEBPB','cellular response to interleukin-1').
bp('cellular response to interleukin-1').
leaf('CEBPB','cellular response to lipopolysaccharide').
leaf('CEBPB','defense response to bacterium').
bp('defense response to bacterium').
leaf('CEBPB','DNA-templated transcription').
leaf('CEBPB','granuloma formation').
bp('granuloma formation').
leaf('CEBPB','hepatocyte proliferation').
leaf('CEBPB','immune response').
leaf('CEBPB','inflammatory response').
leaf('CEBPB','integrated stress response signaling').
leaf('CEBPB','intrinsic apoptotic signaling pathway in response to endoplasmic reticulum stress').
bp('intrinsic apoptotic signaling pathway in response to endoplasmic reticulum stress').
leaf('CEBPB','liver regeneration').
bp('liver regeneration').
leaf('CEBPB','memory').
bp('memory').
leaf('CEBPB','myeloid cell development').
bp('myeloid cell development').
leaf('CEBPB','negative regulation of T cell proliferation').
bp('negative regulation of T cell proliferation').
leaf('CEBPB','negative regulation of transcription by RNA polymerase II').
leaf('CEBPB','ovarian follicle development').
bp('ovarian follicle development').
leaf('CEBPB','positive regulation of biomineral tissue development').
bp('positive regulation of biomineral tissue development').
leaf('CEBPB','positive regulation of cold-induced thermogenesis').
bp('positive regulation of cold-induced thermogenesis').
leaf('CEBPB','positive regulation of DNA-templated transcription').
leaf('CEBPB','positive regulation of fat cell differentiation').
bp('positive regulation of fat cell differentiation').
leaf('CEBPB','positive regulation of inflammatory response').
leaf('CEBPB','positive regulation of interleukin-4 production').
bp('positive regulation of interleukin-4 production').
leaf('CEBPB','positive regulation of sodium-dependent phosphate transport').
bp('positive regulation of sodium-dependent phosphate transport').
leaf('CEBPB','positive regulation of transcription by RNA polymerase II').
leaf('CEBPB','regulation of cell differentiation').
leaf('CEBPB','regulation of dendritic cell differentiation').
bp('regulation of dendritic cell differentiation').
leaf('CEBPB','regulation of DNA-templated transcription').
leaf('CEBPB','regulation of odontoblast differentiation').
bp('regulation of odontoblast differentiation').
leaf('CEBPB','regulation of osteoclast differentiation').
bp('regulation of osteoclast differentiation').
leaf('CEBPB','regulation of transcription by RNA polymerase II').
leaf('CEBPB','response to endoplasmic reticulum stress').
bp('response to endoplasmic reticulum stress').
leaf('CEBPB','T-helper 1 cell activation').
bp('T-helper 1 cell activation').
leaf('CEBPB','C/EBP complex').
leaf('CEBPB','CHOP-C/EBP complex').
leaf('CEBPB','chromatin').
leaf('CEBPB','condensed chromosome, centromeric region').
cc('condensed chromosome, centromeric region').
leaf('CEBPB','cytoplasm').
leaf('CEBPB','nuclear matrix').
cc('nuclear matrix').
leaf('CEBPB','nucleoplasm').
leaf('CEBPB','nucleus').
leaf('CEBPB','RNA polymerase II transcription regulator complex').
go('histone acetyltransferase binding',is_a,'enzyme binding').
go('histone deacetylase binding',is_a,'enzyme binding').
go('RNA polymerase II core promoter sequence-specific DNA binding',is_a,'core promoter sequence-specific DNA binding').
go('RNA polymerase II core promoter sequence-specific DNA binding',is_a,'RNA polymerase II transcription regulatory region sequence-specific DNA binding').
go('acute-phase response',is_a,'acute inflammatory response').
go('acute inflammatory response',is_a,'inflammatory response').
go('brown fat cell differentiation',is_a,'fat cell differentiation').
go('defense response to bacterium',is_a,'defense response').
go('defense response to bacterium',is_a,'response to bacterium').
go('granuloma formation',is_a,'immune effector process').
go('granuloma formation',part_of,'chronic inflammatory response').
go('chronic inflammatory response',is_a,'inflammatory response').
go('intrinsic apoptotic signaling pathway in response to endoplasmic reticulum stress',is_a,'intrinsic apoptotic signaling pathway').
go('intrinsic apoptotic signaling pathway in response to endoplasmic reticulum stress',is_a,'response to endoplasmic reticulum stress').
go('liver regeneration',is_a,'liver development').
go('liver regeneration',is_a,'animal organ regeneration').
go('memory',is_a,'learning or memory').
go('negative regulation of T cell proliferation',is_a,'regulation of T cell proliferation').
go('negative regulation of T cell proliferation',is_a,'negative regulation of T cell activation').
go('regulation of T cell proliferation',is_a,'regulation of lymphocyte proliferation').
go('regulation of lymphocyte proliferation',is_a,'regulation of lymphocyte activation').
go('regulation of lymphocyte proliferation',is_a,'regulation of mononuclear cell proliferation').
go('regulation of mononuclear cell proliferation',is_a,'regulation of leukocyte proliferation').
go('regulation of leukocyte proliferation',is_a,'regulation of cell population proliferation').
go('regulation of leukocyte proliferation',regulates,'leukocyte proliferation').
go('leukocyte proliferation',is_a,'cell population proliferation').
go('regulation of mononuclear cell proliferation',regulates,'mononuclear cell proliferation').
go('mononuclear cell proliferation',is_a,'leukocyte proliferation').
go('regulation of lymphocyte proliferation',regulates,'lymphocyte proliferation').
go('lymphocyte proliferation',is_a,'lymphocyte activation').
go('lymphocyte proliferation',is_a,'mononuclear cell proliferation').
go('regulation of T cell proliferation',is_a,'regulation of T cell activation').
go('regulation of T cell proliferation',regulates,'T cell proliferation').
go('T cell proliferation',is_a,'lymphocyte proliferation').
go('T cell proliferation',is_a,'T cell activation').
go('negative regulation of T cell proliferation',is_a,'negative regulation of lymphocyte proliferation').
go('negative regulation of lymphocyte proliferation',is_a,'negative regulation of mononuclear cell proliferation').
go('negative regulation of mononuclear cell proliferation',is_a,'negative regulation of leukocyte proliferation').
go('negative regulation of leukocyte proliferation',is_a,'regulation of leukocyte proliferation').
go('negative regulation of leukocyte proliferation',is_a,'negative regulation of cell population proliferation').
go('negative regulation of lymphocyte proliferation',is_a,'negative regulation of lymphocyte activation').
go('negative regulation of mononuclear cell proliferation',is_a,'regulation of mononuclear cell proliferation').
go('negative regulation of lymphocyte proliferation',is_a,'regulation of lymphocyte proliferation').
go('ovarian follicle development',is_a,'animal gross anatomical part developmental process').
go('ovarian follicle development',part_of,'female gonad development').
go('female gonad development',is_a,'gonad development').
go('female gonad development',part_of,'development of primary female sexual characteristics').
go('development of primary female sexual characteristics',is_a,'development of primary sexual characteristics').
go('development of primary female sexual characteristics',part_of,'female sex differentiation').
go('female sex differentiation',is_a,'sex differentiation').
go('female sex differentiation',part_of,'multicellular organism development').
go('positive regulation of biomineral tissue development',is_a,'positive regulation of developmental process').
go('positive regulation of biomineral tissue development',is_a,'regulation of biomineral tissue development').
go('regulation of biomineral tissue development',is_a,'regulation of multicellular organismal development').
go('regulation of biomineral tissue development',regulates,'biomineral tissue development').
go('biomineral tissue development',is_a,'tissue development').
go('biomineral tissue development',part_of,'animal organ development').
go('positive regulation of cold-induced thermogenesis',is_a,'regulation of cold-induced thermogenesis').
go('positive regulation of cold-induced thermogenesis',is_a,'positive regulation of multicellular organismal process').
go('regulation of cold-induced thermogenesis',is_a,'regulation of multicellular organismal process').
go('regulation of cold-induced thermogenesis',regulates,'cold-induced thermogenesis').
go('cold-induced thermogenesis',is_a,'adaptive thermogenesis').
go('adaptive thermogenesis',is_a,'temperature homeostasis').
go('temperature homeostasis',is_a,'multicellular organismal-level homeostasis').
go('positive regulation of fat cell differentiation',is_a,'regulation of fat cell differentiation').
go('positive regulation of fat cell differentiation',is_a,'positive regulation of cell differentiation').
go('regulation of fat cell differentiation',is_a,'regulation of cell differentiation').
go('regulation of fat cell differentiation',regulates,'fat cell differentiation').
go('positive regulation of interleukin-4 production',is_a,'regulation of interleukin-4 production').
go('positive regulation of interleukin-4 production',is_a,'positive regulation of cytokine production').
go('regulation of interleukin-4 production',is_a,'regulation of cytokine production').
go('regulation of interleukin-4 production',regulates,'interleukin-4 production').
go('interleukin-4 production',is_a,'cytokine production').
go('positive regulation of sodium-dependent phosphate transport',is_a,'regulation of sodium-dependent phosphate transport').
go('positive regulation of sodium-dependent phosphate transport',is_a,'positive regulation of transport').
go('regulation of sodium-dependent phosphate transport',is_a,'regulation of phosphate transport').
go('regulation of phosphate transport',is_a,'regulation of transport').
go('regulation of phosphate transport',regulates,'phosphate ion transport').
go('phosphate ion transport',is_a,'inorganic anion transport').
go('inorganic anion transport',is_a,'transport').
go('regulation of sodium-dependent phosphate transport',regulates,'sodium-dependent phosphate transport').
go('sodium-dependent phosphate transport',is_a,'phosphate ion transport').
go('regulation of dendritic cell differentiation',is_a,'regulation of leukocyte differentiation').
go('regulation of dendritic cell differentiation',regulates,'dendritic cell differentiation').
go('regulation of odontoblast differentiation',is_a,'regulation of epithelial cell differentiation').
go('regulation of epithelial cell differentiation',is_a,'regulation of cell differentiation').
go('regulation of epithelial cell differentiation',is_a,'regulation of multicellular organismal development').
go('regulation of epithelial cell differentiation',regulates,'epithelial cell differentiation').
go('regulation of odontoblast differentiation',regulates,'odontoblast differentiation').
go('odontoblast differentiation',is_a,'neuroepithelial cell differentiation').
go('neuroepithelial cell differentiation',is_a,'columnar/cuboidal epithelial cell differentiation').
go('columnar/cuboidal epithelial cell differentiation',is_a,'epithelial cell differentiation').
go('regulation of osteoclast differentiation',is_a,'regulation of myeloid leukocyte differentiation').
go('regulation of osteoclast differentiation',regulates,'osteoclast differentiation').
go('osteoclast differentiation',is_a,'myeloid leukocyte differentiation').
go('T-helper 1 cell activation',is_a,'CD4-positive, alpha-beta T cell activation').
go('nuclear matrix',is_a,'cellular anatomical structure').
go('nuclear matrix',part_of,'nuclear lumen').
leaf('CEBPD','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('CEBPD','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('CEBPD','identical protein binding').
leaf('CEBPD','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('CEBPD','sequence-specific double-stranded DNA binding').
leaf('CEBPD','integrated stress response signaling').
leaf('CEBPD','regulation of cell differentiation').
leaf('CEBPD','regulation of transcription by RNA polymerase II').
leaf('CEBPD','transcription by RNA polymerase II').
bp('transcription by RNA polymerase II').
leaf('CEBPD','chromatin').
leaf('CEBPD','nucleoplasm').
leaf('CEBPD','nucleus').
leaf('CEBPD','RNA polymerase II transcription regulator complex').
leaf('CEBPE','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('CEBPE','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('CEBPE','identical protein binding').
leaf('CEBPE','protein-containing complex binding').
leaf('CEBPE','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('CEBPE','sequence-specific double-stranded DNA binding').
leaf('CEBPE','cellular response to lipopolysaccharide').
leaf('CEBPE','defense response').
bp('defense response').
leaf('CEBPE','DNA-templated transcription').
leaf('CEBPE','granulocyte differentiation').
leaf('CEBPE','integrated stress response signaling').
leaf('CEBPE','myeloid cell differentiation').
leaf('CEBPE','positive regulation of transcription by RNA polymerase II').
leaf('CEBPE','regulation of transcription by RNA polymerase II').
leaf('CEBPE','chromatin').
leaf('CEBPE','nucleoplasm').
leaf('CEBPE','nucleus').
leaf('CEBPE','RNA polymerase II transcription regulator complex').
leaf('CEBPG','DNA binding').
leaf('CEBPG','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('CEBPG','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('CEBPG','DNA-binding transcription factor binding').
leaf('CEBPG','identical protein binding').
leaf('CEBPG','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('CEBPG','sequence-specific DNA binding').
leaf('CEBPG','sequence-specific double-stranded DNA binding').
leaf('CEBPG','transcription corepressor activity').
leaf('CEBPG','B cell differentiation').
bp('B cell differentiation').
leaf('CEBPG','DNA-templated transcription').
leaf('CEBPG','enucleate erythrocyte differentiation').
bp('enucleate erythrocyte differentiation').
leaf('CEBPG','immune response').
leaf('CEBPG','integrated stress response signaling').
leaf('CEBPG','liver development').
leaf('CEBPG','natural killer cell mediated cytotoxicity').
leaf('CEBPG','negative regulation of transcription by RNA polymerase II').
leaf('CEBPG','positive regulation of DNA repair').
leaf('CEBPG','positive regulation of transcription by RNA polymerase II').
leaf('CEBPG','positive regulation of type II interferon production').
bp('positive regulation of type II interferon production').
leaf('CEBPG','regulation of transcription by RNA polymerase II').
leaf('CEBPG','chromatin').
leaf('CEBPG','nucleoplasm').
leaf('CEBPG','nucleus').
leaf('CEBPG','RNA polymerase II transcription regulator complex').
go('B cell differentiation',is_a,'lymphocyte differentiation').
go('B cell differentiation',is_a,'B cell activation').
go('enucleate erythrocyte differentiation',is_a,'erythrocyte differentiation').
go('positive regulation of type II interferon production',is_a,'positive regulation of cytokine production').
go('positive regulation of type II interferon production',is_a,'regulation of type II interferon production').
go('regulation of type II interferon production',is_a,'regulation of cytokine production').
go('regulation of type II interferon production',regulates,'type II interferon production').
go('type II interferon production',is_a,'cytokine production').
leaf('CEBPZ','RNA binding').
leaf('CEBPZ','transcription coactivator activity').
leaf('CEBPZ','positive regulation of transcription by RNA polymerase II').
leaf('CEBPZ','CCAAT-binding factor complex').
cc('CCAAT-binding factor complex').
leaf('CEBPZ','nucleoplasm').
leaf('CEBPZ','nucleus').
go('CCAAT-binding factor complex',is_a,'RNA polymerase II transcription regulator complex').
leaf('GATA3','cis-regulatory region sequence-specific DNA binding').
fm('cis-regulatory region sequence-specific DNA binding').
leaf('GATA3','DNA binding').
leaf('GATA3','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('GATA3','DNA-binding transcription factor activity').
leaf('GATA3','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('GATA3','DNA-binding transcription repressor activity, RNA polymerase II-specific').
leaf('GATA3','E-box binding').
leaf('GATA3','histone methyltransferase binding').
fm('histone methyltransferase binding').
leaf('GATA3','HMG box domain binding').
leaf('GATA3','identical protein binding').
leaf('GATA3','interleukin-2 receptor binding').
fm('interleukin-2 receptor binding').
leaf('GATA3','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('GATA3','RNA polymerase II-specific DNA-binding transcription factor binding').
leaf('GATA3','sequence-specific double-stranded DNA binding').
leaf('GATA3','transcription cis-regulatory region binding').
leaf('GATA3','transcription coactivator binding').
leaf('GATA3','zinc ion binding').
leaf('GATA3','anatomical structure formation involved in morphogenesis').
bp('anatomical structure formation involved in morphogenesis').
leaf('GATA3','anatomical structure morphogenesis').
bp('anatomical structure morphogenesis').
leaf('GATA3','aortic valve morphogenesis').
bp('aortic valve morphogenesis').
leaf('GATA3','canonical Wnt signaling pathway').
bp('canonical Wnt signaling pathway').
leaf('GATA3','cardiac right ventricle morphogenesis').
bp('cardiac right ventricle morphogenesis').
leaf('GATA3','cartilage development').
bp('cartilage development').
leaf('GATA3','cell fate commitment').
leaf('GATA3','cell fate determination').
bp('cell fate determination').
leaf('GATA3','cellular response to interferon-alpha').
bp('cellular response to interferon-alpha').
leaf('GATA3','cellular response to interleukin-4').
bp('cellular response to interleukin-4').
leaf('GATA3','cellular response to tumor necrosis factor').
bp('cellular response to tumor necrosis factor').
leaf('GATA3','cochlea development').
bp('cochlea development').
leaf('GATA3','defense response').
leaf('GATA3','ear development').
bp('ear development').
leaf('GATA3','embryonic organ development').
bp('embryonic organ development').
leaf('GATA3','gene expression').
bp('gene expression').
leaf('GATA3','immune system development').
bp('immune system development').
leaf('GATA3','inflammatory response').
leaf('GATA3','kidney development').
bp('kidney development').
leaf('GATA3','lymphocyte migration').
bp('lymphocyte migration').
leaf('GATA3','macrophage differentiation').
bp('macrophage differentiation').
leaf('GATA3','male gonad development').
leaf('GATA3','mesenchymal to epithelial transition').
bp('mesenchymal to epithelial transition').
leaf('GATA3','mesonephros development').
bp('mesonephros development').
leaf('GATA3','negative regulation of cell cycle').
leaf('GATA3','negative regulation of cell motility').
bp('negative regulation of cell motility').
leaf('GATA3','negative regulation of cell population proliferation').
leaf('GATA3','negative regulation of DNA-templated transcription').
leaf('GATA3','negative regulation of endothelial cell apoptotic process').
bp('negative regulation of endothelial cell apoptotic process').
leaf('GATA3','negative regulation of epithelial to mesenchymal transition').
bp('negative regulation of epithelial to mesenchymal transition').
leaf('GATA3','negative regulation of inflammatory response').
bp('negative regulation of inflammatory response').
leaf('GATA3','negative regulation of mammary gland epithelial cell proliferation').
bp('negative regulation of mammary gland epithelial cell proliferation').
leaf('GATA3','negative regulation of transcription by RNA polymerase II').
leaf('GATA3','nephric duct formation').
bp('nephric duct formation').
leaf('GATA3','nephric duct morphogenesis').
bp('nephric duct morphogenesis').
leaf('GATA3','norepinephrine biosynthetic process').
bp('norepinephrine biosynthetic process').
leaf('GATA3','pharyngeal system development').
bp('pharyngeal system development').
leaf('GATA3','phosphatidylinositol 3-kinase/protein kinase B signal transduction').
leaf('GATA3','positive regulation of DNA-templated transcription').
leaf('GATA3','positive regulation of endothelial cell migration').
leaf('GATA3','positive regulation of interleukin-13 production').
bp('positive regulation of interleukin-13 production').
leaf('GATA3','positive regulation of interleukin-4 production').
leaf('GATA3','positive regulation of interleukin-5 production').
bp('positive regulation of interleukin-5 production').
leaf('GATA3','positive regulation of miRNA transcription').
leaf('GATA3','positive regulation of phosphatidylinositol 3-kinase/protein kinase B signal transduction').
leaf('GATA3','positive regulation of signal transduction').
bp('positive regulation of signal transduction').
leaf('GATA3','positive regulation of T cell differentiation').
bp('positive regulation of T cell differentiation').
leaf('GATA3','positive regulation of thyroid hormone generation').
bp('positive regulation of thyroid hormone generation').
leaf('GATA3','positive regulation of transcription by RNA polymerase II').
leaf('GATA3','positive regulation of transcription regulatory region DNA binding').
bp('positive regulation of transcription regulatory region DNA binding').
leaf('GATA3','positive regulation of ureteric bud formation').
bp('positive regulation of ureteric bud formation').
leaf('GATA3','regulation of cellular response to X-ray').
bp('regulation of cellular response to X-ray').
leaf('GATA3','regulation of cytokine production').
bp('regulation of cytokine production').
leaf('GATA3','regulation of epithelial cell differentiation').
bp('regulation of epithelial cell differentiation').
leaf('GATA3','regulation of nephron tubule epithelial cell differentiation').
bp('regulation of nephron tubule epithelial cell differentiation').
leaf('GATA3','response to estrogen').
bp('response to estrogen').
leaf('GATA3','response to ethanol').
bp('response to ethanol').
leaf('GATA3','response to gamma radiation').
bp('response to gamma radiation').
leaf('GATA3','response to virus').
leaf('GATA3','response to xenobiotic stimulus').
leaf('GATA3','signal transduction').
leaf('GATA3','sympathetic nervous system development').
bp('sympathetic nervous system development').
leaf('GATA3','T cell differentiation').
bp('T cell differentiation').
leaf('GATA3','T cell receptor signaling pathway').
bp('T cell receptor signaling pathway').
leaf('GATA3','T-helper 2 cell differentiation').
leaf('GATA3','TOR signaling').
leaf('GATA3','type IV hypersensitivity').
bp('type IV hypersensitivity').
leaf('GATA3','ureteric bud formation').
bp('ureteric bud formation').
leaf('GATA3','uterus development').
bp('uterus development').
leaf('GATA3','ventricular septum development').
bp('ventricular septum development').
leaf('GATA3','chromatin').
leaf('GATA3','nucleoplasm').
leaf('GATA3','nucleus').
go('histone methyltransferase binding',is_a,'enzyme binding').
go('interleukin-2 receptor binding',is_a,'growth factor receptor binding').
go('interleukin-2 receptor binding',is_a,'cytokine receptor binding').
go('aortic valve morphogenesis',is_a,'heart valve morphogenesis').
go('heart valve morphogenesis',is_a,'anatomical structure morphogenesis').
go('heart valve morphogenesis',part_of,'heart valve development').
go('heart valve development',is_a,'animal gross anatomical part developmental process').
go('heart valve development',part_of,'heart development').
go('aortic valve morphogenesis',part_of,'aortic valve development').
go('aortic valve development',is_a,'semi-lunar valve development').
go('semi-lunar valve development',is_a,'heart valve development').
go('cardiac right ventricle morphogenesis',is_a,'cardiac ventricle morphogenesis').
go('cardiac ventricle morphogenesis',is_a,'cardiac chamber morphogenesis').
go('cardiac chamber morphogenesis',is_a,'anatomical structure morphogenesis').
go('cardiac chamber morphogenesis',part_of,'heart morphogenesis').
go('cardiac chamber morphogenesis',part_of,'cardiac chamber development').
go('cardiac chamber development',is_a,'animal gross anatomical part developmental process').
go('cardiac chamber development',part_of,'heart development').
go('cardiac ventricle morphogenesis',part_of,'cardiac ventricle development').
go('cardiac ventricle development',is_a,'cardiac chamber development').
go('cell fate determination',is_a,'cellular developmental process').
go('cell fate determination',part_of,'cell fate commitment').
go('cellular response to interferon-alpha',is_a,'cellular response to cytokine stimulus').
go('cellular response to interferon-alpha',is_a,'response to interferon-alpha').
go('response to interferon-alpha',is_a,'response to cytokine').
go('cellular response to interleukin-4',is_a,'cellular response to cytokine stimulus').
go('cellular response to interleukin-4',is_a,'response to interleukin-4').
go('response to interleukin-4',is_a,'response to cytokine').
go('cochlea development',is_a,'animal gross anatomical part developmental process').
go('cochlea development',part_of,'inner ear development').
go('lymphocyte migration',is_a,'mononuclear cell migration').
go('mononuclear cell migration',is_a,'leukocyte migration').
go('macrophage differentiation',is_a,'mononuclear cell differentiation').
go('macrophage differentiation',is_a,'myeloid leukocyte differentiation').
go('mesenchymal to epithelial transition',is_a,'epithelial cell differentiation').
go('negative regulation of endothelial cell apoptotic process',is_a,'negative regulation of apoptotic process').
go('negative regulation of endothelial cell apoptotic process',is_a,'regulation of endothelial cell apoptotic process').
go('regulation of endothelial cell apoptotic process',is_a,'regulation of apoptotic process').
go('regulation of endothelial cell apoptotic process',regulates,'endothelial cell apoptotic process').
go('endothelial cell apoptotic process',is_a,'apoptotic process').
go('negative regulation of epithelial to mesenchymal transition',is_a,'regulation of epithelial to mesenchymal transition').
go('negative regulation of epithelial to mesenchymal transition',is_a,'negative regulation of multicellular organismal process').
go('negative regulation of epithelial to mesenchymal transition',is_a,'negative regulation of cell differentiation').
go('negative regulation of inflammatory response',is_a,'negative regulation of defense response').
go('negative regulation of inflammatory response',is_a,'regulation of inflammatory response').
go('negative regulation of inflammatory response',is_a,'negative regulation of response to external stimulus').
go('negative regulation of mammary gland epithelial cell proliferation',is_a,'regulation of mammary gland epithelial cell proliferation').
go('negative regulation of mammary gland epithelial cell proliferation',is_a,'negative regulation of multicellular organismal process').
go('regulation of mammary gland epithelial cell proliferation',is_a,'regulation of epithelial cell proliferation').
go('negative regulation of mammary gland epithelial cell proliferation',is_a,'negative regulation of epithelial cell proliferation').
go('regulation of mammary gland epithelial cell proliferation',regulates,'mammary gland epithelial cell proliferation').
go('negative regulation of epithelial cell proliferation',is_a,'regulation of epithelial cell proliferation').
go('mammary gland epithelial cell proliferation',is_a,'epithelial cell proliferation').
go('negative regulation of epithelial cell proliferation',is_a,'negative regulation of cell population proliferation').
go('mammary gland epithelial cell proliferation',part_of,'mammary gland epithelium development').
go('mammary gland epithelium development',is_a,'epithelium development').
go('mammary gland epithelium development',part_of,'mammary gland development').
go('mammary gland development',is_a,'gland development').
go('nephric duct formation',is_a,'epithelial tube formation').
go('nephric duct formation',part_of,'nephric duct morphogenesis').
go('nephric duct morphogenesis',is_a,'epithelial tube morphogenesis').
go('nephric duct morphogenesis',part_of,'nephric duct development').
go('nephric duct development',is_a,'kidney epithelium development').
go('nephric duct development',is_a,'tube development').
go('norepinephrine biosynthetic process',is_a,'catecholamine biosynthetic process').
go('norepinephrine biosynthetic process',is_a,'norepinephrine metabolic process').
go('norepinephrine metabolic process',is_a,'catecholamine metabolic process').
go('pharyngeal system development',is_a,'animal gross anatomical part developmental process').
go('pharyngeal system development',is_a,'system development').
go('pharyngeal system development',part_of,'chordate embryonic development').
go('positive regulation of interleukin-13 production',is_a,'regulation of interleukin-13 production').
go('positive regulation of interleukin-13 production',is_a,'positive regulation of cytokine production').
go('regulation of interleukin-13 production',is_a,'regulation of cytokine production').
go('regulation of interleukin-13 production',regulates,'interleukin-13 production').
go('interleukin-13 production',is_a,'cytokine production').
go('positive regulation of interleukin-5 production',is_a,'positive regulation of cytokine production').
go('positive regulation of interleukin-5 production',is_a,'regulation of interleukin-5 production').
go('regulation of interleukin-5 production',is_a,'regulation of cytokine production').
go('regulation of interleukin-5 production',regulates,'interleukin-5 production').
go('interleukin-5 production',is_a,'cytokine production').
go('positive regulation of thyroid hormone generation',is_a,'positive regulation of hormone metabolic process').
go('positive regulation of thyroid hormone generation',is_a,'regulation of thyroid hormone generation').
go('regulation of thyroid hormone generation',is_a,'regulation of hormone metabolic process').
go('positive regulation of hormone metabolic process',is_a,'regulation of hormone metabolic process').
go('regulation of hormone metabolic process',is_a,'regulation of hormone levels').
go('positive regulation of hormone metabolic process',is_a,'positive regulation of metabolic process').
go('regulation of hormone metabolic process',is_a,'regulation of metabolic process').
go('regulation of hormone metabolic process',regulates,'hormone metabolic process').
go('hormone metabolic process',is_a,'regulation of hormone levels').
go('hormone metabolic process',is_a,'metabolic process').
go('regulation of thyroid hormone generation',regulates,'thyroid hormone generation').
go('thyroid hormone generation',is_a,'thyroid hormone metabolic process').
go('thyroid hormone metabolic process',is_a,'phenol-containing compound metabolic process').
go('thyroid hormone metabolic process',is_a,'modified amino acid metabolic process').
go('thyroid hormone metabolic process',is_a,'hormone metabolic process').
go('positive regulation of transcription regulatory region DNA binding',is_a,'positive regulation of DNA binding').
go('positive regulation of transcription regulatory region DNA binding',is_a,'regulation of transcription regulatory region DNA binding').
go('regulation of transcription regulatory region DNA binding',is_a,'regulation of DNA binding').
go('regulation of transcription regulatory region DNA binding',regulates,'transcription cis-regulatory region binding').
go('positive regulation of ureteric bud formation',is_a,'regulation of ureteric bud formation').
go('positive regulation of ureteric bud formation',is_a,'positive regulation of animal organ morphogenesis').
go('regulation of ureteric bud formation',is_a,'regulation of mesonephros development').
go('positive regulation of animal organ morphogenesis',is_a,'positive regulation of multicellular organismal process').
go('regulation of mesonephros development',is_a,'regulation of kidney development').
go('positive regulation of animal organ morphogenesis',is_a,'regulation of animal organ morphogenesis').
go('regulation of mesonephros development',regulates,'mesonephros development').
go('regulation of animal organ morphogenesis',is_a,'regulation of anatomical structure morphogenesis').
go('regulation of ureteric bud formation',is_a,'regulation of epithelial tube formation').
go('regulation of animal organ morphogenesis',regulates,'animal organ morphogenesis').
go('regulation of ureteric bud formation',is_a,'regulation of animal organ morphogenesis').
go('positive regulation of animal organ morphogenesis',is_a,'positive regulation of developmental process').
go('regulation of ureteric bud formation',regulates,'ureteric bud formation').
go('positive regulation of ureteric bud formation',is_a,'positive regulation of epithelial tube formation').
go('ureteric bud formation',is_a,'mesonephric tubule formation').
go('mesonephric tubule formation',is_a,'nephron tubule formation').
go('nephron tubule formation',is_a,'embryonic epithelial tube formation').
go('embryonic epithelial tube formation',is_a,'epithelial tube formation').
go('embryonic epithelial tube formation',part_of,'morphogenesis of embryonic epithelium').
go('morphogenesis of embryonic epithelium',is_a,'morphogenesis of an epithelium').
go('morphogenesis of embryonic epithelium',is_a,'embryonic morphogenesis').
go('nephron tubule formation',part_of,'nephron tubule morphogenesis').
go('mesonephric tubule formation',part_of,'mesonephric tubule morphogenesis').
go('ureteric bud formation',part_of,'ureteric bud morphogenesis').
go('regulation of cellular response to X-ray',is_a,'regulation of cellular process').
go('regulation of cellular response to X-ray',is_a,'regulation of response to stimulus').
go('regulation of cellular response to X-ray',regulates,'cellular response to X-ray').
go('cellular response to X-ray',is_a,'cellular response to ionizing radiation').
go('cellular response to X-ray',is_a,'response to X-ray').
go('response to X-ray',is_a,'response to ionizing radiation').
go('regulation of nephron tubule epithelial cell differentiation',is_a,'regulation of epithelial cell differentiation involved in kidney development').
go('regulation of epithelial cell differentiation involved in kidney development',is_a,'regulation of epithelial cell differentiation').
go('regulation of epithelial cell differentiation involved in kidney development',regulates,'epithelial cell differentiation involved in kidney development').
go('epithelial cell differentiation involved in kidney development',is_a,'cell differentiation involved in kidney development').
go('cell differentiation involved in kidney development',is_a,'cell differentiation').
go('cell differentiation involved in kidney development',part_of,'kidney development').
go('epithelial cell differentiation involved in kidney development',is_a,'epithelial cell differentiation').
go('epithelial cell differentiation involved in kidney development',part_of,'kidney development').
go('regulation of nephron tubule epithelial cell differentiation',regulates,'nephron tubule epithelial cell differentiation').
go('nephron tubule epithelial cell differentiation',is_a,'epithelial cell differentiation involved in kidney development').
go('nephron tubule epithelial cell differentiation',part_of,'nephron tubule development').
go('response to estrogen',is_a,'response to hormone').
go('response to ethanol',is_a,'response to alcohol').
go('response to alcohol',is_a,'response to oxygen-containing compound').
go('response to gamma radiation',is_a,'response to ionizing radiation').
go('sympathetic nervous system development',is_a,'system development').
go('sympathetic nervous system development',is_a,'animal gross anatomical part developmental process').
go('sympathetic nervous system development',part_of,'autonomic nervous system development').
go('autonomic nervous system development',is_a,'animal gross anatomical part developmental process').
go('autonomic nervous system development',is_a,'system development').
go('autonomic nervous system development',part_of,'nervous system development').
go('T cell receptor signaling pathway',is_a,'antigen receptor-mediated signaling pathway').
go('type IV hypersensitivity',is_a,'T cell mediated immunity').
go('type IV hypersensitivity',is_a,'hypersensitivity').
go('T cell mediated immunity',is_a,'adaptive immune response based on somatic recombination of immune receptors built from immunoglobulin superfamily domains').
go('hypersensitivity',is_a,'acute inflammatory response to antigenic stimulus').
go('acute inflammatory response to antigenic stimulus',is_a,'acute inflammatory response').
go('T cell mediated immunity',is_a,'lymphocyte mediated immunity').
go('acute inflammatory response to antigenic stimulus',is_a,'inflammatory response to antigenic stimulus').
go('inflammatory response to antigenic stimulus',is_a,'immune response').
go('inflammatory response to antigenic stimulus',is_a,'inflammatory response').
go('uterus development',is_a,'reproductive structure development').
go('uterus development',is_a,'animal organ development').
go('ventricular septum development',is_a,'cardiac septum development').
go('cardiac septum development',is_a,'animal gross anatomical part developmental process').
go('cardiac septum development',part_of,'cardiac chamber development').
go('ventricular septum development',part_of,'cardiac ventricle development').
leaf('GATA2','C2H2 zinc finger domain binding').
leaf('GATA2','chromatin binding').
leaf('GATA2','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('GATA2','DNA-binding transcription factor activity').
leaf('GATA2','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('GATA2','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('GATA2','RNA polymerase II-specific DNA-binding transcription factor binding').
leaf('GATA2','sequence-specific double-stranded DNA binding').
leaf('GATA2','transcription coactivator binding').
leaf('GATA2','transcription coregulator binding').
leaf('GATA2','zinc ion binding').
leaf('GATA2','cell fate commitment').
leaf('GATA2','cochlea development').
leaf('GATA2','eosinophil fate commitment').
leaf('GATA2','fat cell differentiation').
leaf('GATA2','negative regulation of endothelial cell apoptotic process').
leaf('GATA2','negative regulation of gene expression').
bp('negative regulation of gene expression').
leaf('GATA2','negative regulation of neural precursor cell proliferation').
bp('negative regulation of neural precursor cell proliferation').
leaf('GATA2','negative regulation of Notch signaling pathway').
bp('negative regulation of Notch signaling pathway').
leaf('GATA2','negative regulation of transcription by RNA polymerase II').
leaf('GATA2','neuron migration').
bp('neuron migration').
leaf('GATA2','positive regulation of angiogenesis').
leaf('GATA2','positive regulation of blood vessel endothelial cell migration').
bp('positive regulation of blood vessel endothelial cell migration').
leaf('GATA2','positive regulation of blood vessel endothelial cell proliferation involved in sprouting angiogenesis').
bp('positive regulation of blood vessel endothelial cell proliferation involved in sprouting angiogenesis').
leaf('GATA2','positive regulation of cell migration involved in sprouting angiogenesis').
bp('positive regulation of cell migration involved in sprouting angiogenesis').
leaf('GATA2','positive regulation of cytosolic calcium ion concentration').
leaf('GATA2','positive regulation of gene expression').
leaf('GATA2','positive regulation of mast cell degranulation').
leaf('GATA2','positive regulation of miRNA transcription').
leaf('GATA2','positive regulation of neuron differentiation').
bp('positive regulation of neuron differentiation').
leaf('GATA2','positive regulation of phagocytosis').
bp('positive regulation of phagocytosis').
leaf('GATA2','positive regulation of phagocytosis, engulfment').
bp('positive regulation of phagocytosis, engulfment').
leaf('GATA2','positive regulation of transcription by RNA polymerase II').
leaf('GATA2','response to lipid').
bp('response to lipid').
leaf('GATA2','vascular wound healing').
bp('vascular wound healing').
leaf('GATA2','cytoplasm').
leaf('GATA2','nucleoplasm').
leaf('GATA2','nucleus').
leaf('GATA2','transcription regulator complex').
go('negative regulation of neural precursor cell proliferation',is_a,'negative regulation of cell population proliferation').
go('negative regulation of neural precursor cell proliferation',is_a,'regulation of neural precursor cell proliferation').
go('regulation of neural precursor cell proliferation',is_a,'regulation of cell population proliferation').
go('regulation of neural precursor cell proliferation',regulates,'neural precursor cell proliferation').
go('neural precursor cell proliferation',is_a,'cell population proliferation').
go('negative regulation of Notch signaling pathway',is_a,'regulation of Notch signaling pathway').
go('negative regulation of Notch signaling pathway',is_a,'negative regulation of signal transduction').
go('regulation of Notch signaling pathway',is_a,'regulation of signal transduction').
go('regulation of Notch signaling pathway',regulates,'Notch signaling pathway').
go('neuron migration',is_a,'cell migration').
go('neuron migration',part_of,'generation of neurons').
go('positive regulation of blood vessel endothelial cell migration',is_a,'positive regulation of endothelial cell migration').
go('positive regulation of blood vessel endothelial cell migration',is_a,'regulation of blood vessel endothelial cell migration').
go('regulation of blood vessel endothelial cell migration',is_a,'regulation of endothelial cell migration').
go('regulation of blood vessel endothelial cell migration',regulates,'blood vessel endothelial cell migration').
go('blood vessel endothelial cell migration',is_a,'endothelial cell migration').
go('positive regulation of blood vessel endothelial cell proliferation involved in sprouting angiogenesis',is_a,'regulation of blood vessel endothelial cell proliferation involved in sprouting angiogenesis').
go('positive regulation of blood vessel endothelial cell proliferation involved in sprouting angiogenesis',is_a,'positive regulation of endothelial cell proliferation').
go('regulation of blood vessel endothelial cell proliferation involved in sprouting angiogenesis',is_a,'regulation of endothelial cell proliferation').
go('regulation of blood vessel endothelial cell proliferation involved in sprouting angiogenesis',regulates,'blood vessel endothelial cell proliferation involved in sprouting angiogenesis').
go('blood vessel endothelial cell proliferation involved in sprouting angiogenesis',is_a,'endothelial cell proliferation').
go('blood vessel endothelial cell proliferation involved in sprouting angiogenesis',part_of,'sprouting angiogenesis').
go('sprouting angiogenesis',is_a,'angiogenesis').
go('positive regulation of cell migration involved in sprouting angiogenesis',is_a,'regulation of cell migration involved in sprouting angiogenesis').
go('positive regulation of cell migration involved in sprouting angiogenesis',is_a,'positive regulation of blood vessel endothelial cell migration').
go('regulation of cell migration involved in sprouting angiogenesis',is_a,'regulation of blood vessel endothelial cell migration').
go('regulation of cell migration involved in sprouting angiogenesis',regulates,'cell migration involved in sprouting angiogenesis').
go('cell migration involved in sprouting angiogenesis',is_a,'blood vessel endothelial cell migration').
go('cell migration involved in sprouting angiogenesis',part_of,'sprouting angiogenesis').
go('positive regulation of neuron differentiation',is_a,'positive regulation of cell differentiation').
go('positive regulation of neuron differentiation',is_a,'regulation of neuron differentiation').
go('regulation of neuron differentiation',is_a,'regulation of cell differentiation').
go('regulation of neuron differentiation',regulates,'neuron differentiation').
go('positive regulation of phagocytosis',is_a,'positive regulation of endocytosis').
go('positive regulation of phagocytosis',is_a,'regulation of phagocytosis').
go('regulation of phagocytosis',is_a,'regulation of endocytosis').
go('regulation of phagocytosis',regulates,'phagocytosis').
go('phagocytosis',is_a,'endocytosis').
go('positive regulation of phagocytosis, engulfment',is_a,'regulation of phagocytosis, engulfment').
go('positive regulation of phagocytosis, engulfment',is_a,'positive regulation of phagocytosis').
go('regulation of phagocytosis, engulfment',is_a,'regulation of membrane invagination').
go('positive regulation of phagocytosis, engulfment',is_a,'positive regulation of membrane invagination').
go('regulation of membrane invagination',is_a,'regulation of cellular component organization').
go('regulation of membrane invagination',regulates,'membrane invagination').
go('positive regulation of membrane invagination',is_a,'regulation of membrane invagination').
go('membrane invagination',is_a,'membrane organization').
go('positive regulation of membrane invagination',is_a,'positive regulation of cellular component organization').
go('regulation of phagocytosis, engulfment',is_a,'regulation of phagocytosis').
go('regulation of phagocytosis, engulfment',regulates,'phagocytosis, engulfment').
go('phagocytosis, engulfment',is_a,'plasma membrane invagination').
go('plasma membrane invagination',is_a,'membrane invagination').
go('phagocytosis, engulfment',part_of,'phagocytosis').
go('vascular wound healing',is_a,'angiogenesis involved in wound healing').
go('angiogenesis involved in wound healing',is_a,'angiogenesis').
go('angiogenesis involved in wound healing',part_of,'wound healing').
leaf('FOXA2','DNA binding').
leaf('FOXA2','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('FOXA2','DNA-binding transcription factor activity').
leaf('FOXA2','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('FOXA2','DNA-binding transcription repressor activity, RNA polymerase II-specific').
leaf('FOXA2','nucleic acid binding').
leaf('FOXA2','protein domain specific binding').
fm('protein domain specific binding').
leaf('FOXA2','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('FOXA2','RNA polymerase II-specific DNA-binding transcription factor binding').
leaf('FOXA2','sequence-specific double-stranded DNA binding').
leaf('FOXA2','transcription cis-regulatory region binding').
leaf('FOXA2','transcription corepressor activity').
leaf('FOXA2','adult locomotory behavior').
bp('adult locomotory behavior').
leaf('FOXA2','anatomical structure morphogenesis').
leaf('FOXA2','cell differentiation').
leaf('FOXA2','cell fate specification').
bp('cell fate specification').
leaf('FOXA2','dopaminergic neuron differentiation').
bp('dopaminergic neuron differentiation').
leaf('FOXA2','endocrine pancreas development').
bp('endocrine pancreas development').
leaf('FOXA2','negative regulation of epithelial to mesenchymal transition').
leaf('FOXA2','negative regulation of ferroptosis').
bp('negative regulation of ferroptosis').
leaf('FOXA2','negative regulation of transcription by RNA polymerase II').
leaf('FOXA2','positive regulation of cell-cell adhesion mediated by cadherin').
bp('positive regulation of cell-cell adhesion mediated by cadherin').
leaf('FOXA2','positive regulation of DNA-templated transcription').
leaf('FOXA2','positive regulation of embryonic development').
bp('positive regulation of embryonic development').
leaf('FOXA2','positive regulation of gastrulation').
bp('positive regulation of gastrulation').
leaf('FOXA2','positive regulation of transcription by RNA polymerase II').
leaf('FOXA2','primitive streak formation').
bp('primitive streak formation').
leaf('FOXA2','regulation of blood coagulation').
bp('regulation of blood coagulation').
leaf('FOXA2','regulation of insulin secretion involved in cellular response to glucose stimulus').
bp('regulation of insulin secretion involved in cellular response to glucose stimulus').
leaf('FOXA2','regulation of transcription by RNA polymerase II').
leaf('FOXA2','response to interleukin-6').
bp('response to interleukin-6').
leaf('FOXA2','chromatin').
leaf('FOXA2','cytoplasm').
leaf('FOXA2','nucleoplasm').
leaf('FOXA2','nucleus').
go('adult locomotory behavior',is_a,'adult behavior').
go('adult behavior',is_a,'behavior').
go('adult locomotory behavior',is_a,'locomotory behavior').
go('locomotory behavior',is_a,'behavior').
go('cell fate specification',is_a,'cellular developmental process').
go('cell fate specification',part_of,'cell fate commitment').
go('dopaminergic neuron differentiation',is_a,'neuron differentiation').
go('endocrine pancreas development',is_a,'animal gross anatomical part developmental process').
go('endocrine pancreas development',part_of,'pancreas development').
go('pancreas development',is_a,'animal organ development').
go('endocrine pancreas development',part_of,'endocrine system development').
go('endocrine system development',is_a,'system development').
go('endocrine system development',is_a,'animal gross anatomical part developmental process').
go('negative regulation of ferroptosis',is_a,'negative regulation of programmed cell death').
go('negative regulation of ferroptosis',is_a,'regulation of ferroptosis').
go('regulation of ferroptosis',is_a,'regulation of programmed cell death').
go('regulation of ferroptosis',regulates,'ferroptosis').
go('ferroptosis',is_a,'programmed cell death').
go('positive regulation of cell-cell adhesion mediated by cadherin',is_a,'positive regulation of cell-cell adhesion').
go('positive regulation of cell-cell adhesion mediated by cadherin',is_a,'regulation of cell-cell adhesion mediated by cadherin').
go('regulation of cell-cell adhesion mediated by cadherin',is_a,'regulation of cell-cell adhesion').
go('regulation of cell-cell adhesion mediated by cadherin',regulates,'cell-cell adhesion mediated by cadherin').
go('cell-cell adhesion mediated by cadherin',is_a,'cell-cell adhesion').
go('positive regulation of embryonic development',is_a,'positive regulation of multicellular organismal process').
go('positive regulation of embryonic development',is_a,'regulation of embryonic development').
go('positive regulation of embryonic development',is_a,'positive regulation of developmental process').
go('positive regulation of gastrulation',is_a,'positive regulation of embryonic development').
go('positive regulation of gastrulation',is_a,'regulation of gastrulation').
go('regulation of gastrulation',is_a,'regulation of anatomical structure morphogenesis').
go('regulation of gastrulation',is_a,'regulation of embryonic development').
go('regulation of gastrulation',regulates,'gastrulation').
go('gastrulation',is_a,'embryonic morphogenesis').
go('primitive streak formation',is_a,'anatomical structure formation involved in morphogenesis').
go('primitive streak formation',part_of,'gastrulation with mouth forming second').
go('primitive streak formation',part_of,'anterior/posterior axis specification').
go('gastrulation with mouth forming second',is_a,'gastrulation').
go('anterior/posterior axis specification',is_a,'axis specification').
go('anterior/posterior axis specification',part_of,'anterior/posterior pattern specification').
go('regulation of blood coagulation',is_a,'regulation of response to external stimulus').
go('regulation of blood coagulation',is_a,'regulation of wound healing').
go('regulation of wound healing',is_a,'regulation of response to wounding').
go('regulation of blood coagulation',is_a,'regulation of coagulation').
go('regulation of coagulation',is_a,'regulation of multicellular organismal process').
go('regulation of response to wounding',is_a,'regulation of response to stress').
go('regulation of coagulation',regulates,'coagulation').
go('regulation of response to wounding',regulates,'response to wounding').
go('regulation of blood coagulation',is_a,'regulation of hemostasis').
go('regulation of hemostasis',is_a,'regulation of body fluid levels').
go('regulation of wound healing',regulates,'wound healing').
go('regulation of hemostasis',is_a,'regulation of biological process').
go('regulation of hemostasis',regulates,'hemostasis').
go('regulation of blood coagulation',regulates,'blood coagulation').
go('regulation of insulin secretion involved in cellular response to glucose stimulus',is_a,'regulation of insulin secretion').
go('regulation of insulin secretion involved in cellular response to glucose stimulus',is_a,'regulation of cellular localization').
go('regulation of insulin secretion involved in cellular response to glucose stimulus',regulates,'insulin secretion involved in cellular response to glucose stimulus').
go('insulin secretion involved in cellular response to glucose stimulus',is_a,'establishment of localization in cell').
go('insulin secretion involved in cellular response to glucose stimulus',is_a,'insulin secretion').
go('insulin secretion involved in cellular response to glucose stimulus',part_of,'cellular response to glucose stimulus').
go('cellular response to glucose stimulus',is_a,'cellular response to hexose stimulus').
go('cellular response to glucose stimulus',is_a,'response to glucose').
go('cellular response to hexose stimulus',is_a,'cellular response to monosaccharide stimulus').
go('response to glucose',is_a,'response to hexose').
go('cellular response to monosaccharide stimulus',is_a,'cellular response to carbohydrate stimulus').
go('response to hexose',is_a,'response to monosaccharide').
go('cellular response to carbohydrate stimulus',is_a,'cellular response to oxygen-containing compound').
go('response to monosaccharide',is_a,'response to carbohydrate').
go('response to carbohydrate',is_a,'response to oxygen-containing compound').
go('cellular response to glucose stimulus',is_a,'intracellular glucose homeostasis').
go('cellular response to carbohydrate stimulus',is_a,'response to carbohydrate').
go('cellular response to monosaccharide stimulus',is_a,'response to monosaccharide').
go('intracellular glucose homeostasis',is_a,'glucose homeostasis').
go('cellular response to hexose stimulus',is_a,'response to hexose').
go('intracellular glucose homeostasis',is_a,'intracellular chemical homeostasis').
leaf('E2F1','cis-regulatory region sequence-specific DNA binding').
leaf('E2F1','DNA binding').
leaf('E2F1','DNA-binding transcription activator activity').
fm('DNA-binding transcription activator activity').
leaf('E2F1','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('E2F1','DNA-binding transcription factor activity').
leaf('E2F1','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('E2F1','DNA-binding transcription factor binding').
leaf('E2F1','molecular adaptor activity').
leaf('E2F1','protein dimerization activity').
leaf('E2F1','protein kinase binding').
leaf('E2F1','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('E2F1','sequence-specific DNA binding').
leaf('E2F1','sequence-specific double-stranded DNA binding').
leaf('E2F1','cellular response to fatty acid').
bp('cellular response to fatty acid').
leaf('E2F1','cellular response to hypoxia').
leaf('E2F1','cellular response to nerve growth factor stimulus').
bp('cellular response to nerve growth factor stimulus').
leaf('E2F1','DNA damage checkpoint signaling').
bp('DNA damage checkpoint signaling').
leaf('E2F1','DNA-templated transcription').
leaf('E2F1','intrinsic apoptotic signaling pathway in response to DNA damage').
bp('intrinsic apoptotic signaling pathway in response to DNA damage').
leaf('E2F1','mRNA stabilization').
bp('mRNA stabilization').
leaf('E2F1','negative regulation of DNA binding').
bp('negative regulation of DNA binding').
leaf('E2F1','negative regulation of DNA-templated transcription').
leaf('E2F1','negative regulation of fat cell differentiation').
bp('negative regulation of fat cell differentiation').
leaf('E2F1','negative regulation of fat cell proliferation').
bp('negative regulation of fat cell proliferation').
leaf('E2F1','negative regulation of transcription by RNA polymerase II').
leaf('E2F1','positive regulation of apoptotic process').
leaf('E2F1','positive regulation of DNA-templated transcription').
leaf('E2F1','positive regulation of fibroblast proliferation').
leaf('E2F1','positive regulation of gene expression').
leaf('E2F1','positive regulation of glial cell proliferation').
bp('positive regulation of glial cell proliferation').
leaf('E2F1','positive regulation of transcription by RNA polymerase II').
leaf('E2F1','regulation of DNA-templated transcription').
leaf('E2F1','regulation of G1/S transition of mitotic cell cycle').
bp('regulation of G1/S transition of mitotic cell cycle').
leaf('E2F1','regulation of transcription by RNA polymerase II').
leaf('E2F1','response to lipopolysaccharide').
leaf('E2F1','spermatogenesis').
leaf('E2F1','chromatin').
leaf('E2F1','cytoplasm').
leaf('E2F1','nuclear chromosome').
cc('nuclear chromosome').
leaf('E2F1','nucleoplasm').
leaf('E2F1','nucleus').
leaf('E2F1','protein-containing complex').
leaf('E2F1','Rb-E2F complex').
cc('Rb-E2F complex').
leaf('E2F1','RNA polymerase II transcription regulator complex').
go('cellular response to fatty acid',is_a,'cellular response to lipid').
go('cellular response to fatty acid',is_a,'response to fatty acid').
go('cellular response to fatty acid',is_a,'cellular response to oxygen-containing compound').
go('response to fatty acid',is_a,'response to lipid').
go('response to fatty acid',is_a,'response to oxygen-containing compound').
go('cellular response to nerve growth factor stimulus',is_a,'cellular response to growth factor stimulus').
go('cellular response to nerve growth factor stimulus',is_a,'response to nerve growth factor').
go('response to nerve growth factor',is_a,'response to growth factor').
go('DNA damage checkpoint signaling',is_a,'signal transduction in response to DNA damage').
go('DNA damage checkpoint signaling',is_a,'DNA integrity checkpoint signaling').
go('DNA integrity checkpoint signaling',is_a,'cell cycle checkpoint signaling').
go('cell cycle checkpoint signaling',is_a,'negative regulation of cell cycle phase transition').
go('cell cycle checkpoint signaling',is_a,'intracellular signal transduction').
go('intrinsic apoptotic signaling pathway in response to DNA damage',is_a,'DNA damage response').
go('intrinsic apoptotic signaling pathway in response to DNA damage',is_a,'intrinsic apoptotic signaling pathway').
go('negative regulation of DNA binding',is_a,'negative regulation of binding').
go('negative regulation of DNA binding',is_a,'regulation of DNA binding').
go('negative regulation of binding',is_a,'negative regulation of molecular function').
go('negative regulation of molecular function',is_a,'regulation of molecular function').
go('negative regulation of binding',is_a,'regulation of binding').
go('negative regulation of fat cell differentiation',is_a,'negative regulation of cell differentiation').
go('negative regulation of fat cell differentiation',is_a,'regulation of fat cell differentiation').
go('negative regulation of fat cell proliferation',is_a,'negative regulation of cell population proliferation').
go('negative regulation of fat cell proliferation',is_a,'regulation of fat cell proliferation').
go('regulation of fat cell proliferation',is_a,'regulation of cell population proliferation').
go('regulation of fat cell proliferation',regulates,'fat cell proliferation').
go('positive regulation of glial cell proliferation',is_a,'positive regulation of cell population proliferation').
go('positive regulation of glial cell proliferation',is_a,'positive regulation of gliogenesis').
go('positive regulation of glial cell proliferation',is_a,'regulation of glial cell proliferation').
go('positive regulation of gliogenesis',is_a,'positive regulation of neurogenesis').
go('regulation of glial cell proliferation',is_a,'regulation of cell population proliferation').
go('regulation of glial cell proliferation',regulates,'glial cell proliferation').
go('glial cell proliferation',is_a,'cell population proliferation').
go('glial cell proliferation',part_of,'gliogenesis').
go('positive regulation of gliogenesis',is_a,'regulation of gliogenesis').
go('regulation of gliogenesis',is_a,'regulation of neurogenesis').
go('regulation of gliogenesis',regulates,'gliogenesis').
go('nuclear chromosome',is_a,'chromosome').
go('nuclear chromosome',part_of,'nucleus').
go('nuclear chromosome',part_of,'nuclear lumen').
go('Rb-E2F complex',is_a,'RNA polymerase II transcription regulator complex').
leaf('E2F2','cis-regulatory region sequence-specific DNA binding').
leaf('E2F2','DNA binding').
leaf('E2F2','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('E2F2','DNA-binding transcription factor activity').
leaf('E2F2','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('E2F2','protein dimerization activity').
leaf('E2F2','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('E2F2','sequence-specific DNA binding').
leaf('E2F2','sequence-specific double-stranded DNA binding').
leaf('E2F2','negative regulation of sprouting angiogenesis').
bp('negative regulation of sprouting angiogenesis').
leaf('E2F2','positive regulation of transcription by RNA polymerase II').
leaf('E2F2','regulation of transcription by RNA polymerase II').
leaf('E2F2','transcription initiation at RNA polymerase II promoter').
bp('transcription initiation at RNA polymerase II promoter').
leaf('E2F2','chromatin').
leaf('E2F2','nucleoplasm').
leaf('E2F2','RNA polymerase II transcription regulator complex').
go('negative regulation of sprouting angiogenesis',is_a,'regulation of sprouting angiogenesis').
go('negative regulation of sprouting angiogenesis',is_a,'negative regulation of angiogenesis').
go('regulation of sprouting angiogenesis',is_a,'regulation of angiogenesis').
go('negative regulation of angiogenesis',is_a,'negative regulation of blood vessel morphogenesis').
go('negative regulation of blood vessel morphogenesis',is_a,'regulation of anatomical structure morphogenesis').
go('negative regulation of blood vessel morphogenesis',is_a,'negative regulation of vasculature development').
go('negative regulation of vasculature development',is_a,'regulation of vasculature development').
go('regulation of sprouting angiogenesis',regulates,'sprouting angiogenesis').
go('negative regulation of vasculature development',is_a,'negative regulation of multicellular organismal process').
go('negative regulation of vasculature development',is_a,'negative regulation of developmental process').
go('negative regulation of angiogenesis',is_a,'regulation of angiogenesis').
leaf('E2F3','cis-regulatory region sequence-specific DNA binding').
leaf('E2F3','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('E2F3','DNA-binding transcription factor activity').
leaf('E2F3','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('E2F3','protein dimerization activity').
leaf('E2F3','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('E2F3','sequence-specific DNA binding').
leaf('E2F3','sequence-specific double-stranded DNA binding').
leaf('E2F3','G1/S transition of mitotic cell cycle').
leaf('E2F3','negative regulation of fat cell proliferation').
leaf('E2F3','positive regulation of transcription by RNA polymerase II').
leaf('E2F3','positive regulation of vascular associated smooth muscle cell apoptotic process').
bp('positive regulation of vascular associated smooth muscle cell apoptotic process').
leaf('E2F3','protein import into nucleus').
bp('protein import into nucleus').
leaf('E2F3','regulation of transcription by RNA polymerase II').
leaf('E2F3','transcription initiation at RNA polymerase II promoter').
leaf('E2F3','chromatin').
leaf('E2F3','nucleoplasm').
leaf('E2F3','nucleus').
leaf('E2F3','RNA polymerase II transcription regulator complex').
go('positive regulation of vascular associated smooth muscle cell apoptotic process',is_a,'positive regulation of smooth muscle cell apoptotic process').
go('positive regulation of vascular associated smooth muscle cell apoptotic process',is_a,'regulation of vascular associated smooth muscle cell apoptotic process').
go('positive regulation of smooth muscle cell apoptotic process',is_a,'positive regulation of muscle cell apoptotic process').
go('regulation of vascular associated smooth muscle cell apoptotic process',is_a,'regulation of smooth muscle cell apoptotic process').
go('positive regulation of muscle cell apoptotic process',is_a,'regulation of muscle cell apoptotic process').
go('regulation of smooth muscle cell apoptotic process',is_a,'regulation of muscle cell apoptotic process').
go('regulation of muscle cell apoptotic process',is_a,'regulation of apoptotic process').
go('regulation of smooth muscle cell apoptotic process',regulates,'smooth muscle cell apoptotic process').
go('regulation of muscle cell apoptotic process',regulates,'muscle cell apoptotic process').
go('regulation of vascular associated smooth muscle cell apoptotic process',regulates,'vascular associated smooth muscle cell apoptotic process').
go('positive regulation of muscle cell apoptotic process',is_a,'positive regulation of apoptotic process').
go('vascular associated smooth muscle cell apoptotic process',is_a,'smooth muscle cell apoptotic process').
go('positive regulation of smooth muscle cell apoptotic process',is_a,'regulation of smooth muscle cell apoptotic process').
leaf('E2F4','DNA binding').
leaf('E2F4','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('E2F4','DNA-binding transcription factor activity').
leaf('E2F4','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('E2F4','promoter-specific chromatin binding').
fm('promoter-specific chromatin binding').
leaf('E2F4','protein dimerization activity').
leaf('E2F4','protein domain specific binding').
leaf('E2F4','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('E2F4','sequence-specific double-stranded DNA binding').
leaf('E2F4','centriole assembly').
bp('centriole assembly').
leaf('E2F4','motile cilium assembly').
bp('motile cilium assembly').
leaf('E2F4','multi-ciliated epithelial cell differentiation').
bp('multi-ciliated epithelial cell differentiation').
leaf('E2F4','negative regulation of DNA-templated transcription').
leaf('E2F4','positive regulation of transcription by RNA polymerase II').
leaf('E2F4','regulation of DNA-templated transcription').
leaf('E2F4','regulation of transcription by RNA polymerase II').
leaf('E2F4','chromatin').
leaf('E2F4','cytoplasm').
leaf('E2F4','DRM complex').
cc('DRM complex').
leaf('E2F4','nucleoplasm').
leaf('E2F4','nucleus').
leaf('E2F4','RNA polymerase II transcription regulator complex').
go('promoter-specific chromatin binding',is_a,'chromatin binding').
go('centriole assembly',is_a,'membraneless organelle assembly').
go('centriole assembly',is_a,'microtubule organizing center organization').
go('microtubule organizing center organization',is_a,'cellular component organization').
go('microtubule organizing center organization',is_a,'microtubule-based process').
go('microtubule organizing center organization',part_of,'microtubule cytoskeleton organization').
go('motile cilium assembly',is_a,'cilium assembly').
go('multi-ciliated epithelial cell differentiation',is_a,'columnar/cuboidal epithelial cell differentiation').
go('DRM complex',is_a,'RNA polymerase II transcription repressor complex').
leaf('E2F5','DNA-binding transcription activator activity').
leaf('E2F5','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('E2F5','DNA-binding transcription factor activity').
leaf('E2F5','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('E2F5','protein dimerization activity').
leaf('E2F5','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('E2F5','negative regulation of DNA-templated transcription').
leaf('E2F5','regulation of DNA-templated transcription').
leaf('E2F5','regulation of transcription by RNA polymerase II').
leaf('E2F5','chromatin').
leaf('E2F5','cytoplasm').
leaf('E2F5','DRM complex').
leaf('E2F5','nucleoplasm').
leaf('E2F5','nucleus').
leaf('E2F5','RNA polymerase II transcription regulator complex').
leaf('E2F6','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('E2F6','DNA-binding transcription repressor activity, RNA polymerase II-specific').
leaf('E2F6','protein dimerization activity').
leaf('E2F6','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('E2F6','heterochromatin formation').
bp('heterochromatin formation').
leaf('E2F6','negative regulation of DNA-templated transcription').
leaf('E2F6','negative regulation of transcription by RNA polymerase II').
leaf('E2F6','regulation of transcription by RNA polymerase II').
leaf('E2F6','chromatin').
leaf('E2F6','MLL1 complex').
cc('MLL1 complex').
leaf('E2F6','nucleoplasm').
leaf('E2F6','nucleus').
leaf('E2F6','PRC1 complex').
cc('PRC1 complex').
leaf('E2F6','RNA polymerase II transcription regulator complex').
leaf('E2F6','RNA polymerase II transcription repressor complex').
go('heterochromatin formation',is_a,'negative regulation of gene expression, epigenetic').
go('heterochromatin formation',is_a,'cellular component assembly').
go('heterochromatin formation',is_a,'heterochromatin organization').
go('heterochromatin organization',is_a,'chromatin organization').
go('MLL1 complex',is_a,'MLL1/2 complex').
go('MLL1/2 complex',is_a,'histone methyltransferase complex').
go('histone methyltransferase complex',is_a,'nuclear protein-containing complex').
go('histone methyltransferase complex',is_a,'methyltransferase complex').
go('methyltransferase complex',is_a,'transferase complex').
go('methyltransferase complex',part_of,'intracellular anatomical structure').
go('histone methyltransferase complex',part_of,'nucleoplasm').
go('PRC1 complex',is_a,'nuclear ubiquitin ligase complex').
go('PRC1 complex',is_a,'PcG protein complex').
go('nuclear ubiquitin ligase complex',is_a,'nuclear protein-containing complex').
go('PcG protein complex',is_a,'nuclear protein-containing complex').
go('nuclear ubiquitin ligase complex',is_a,'ubiquitin ligase complex').
go('ubiquitin ligase complex',is_a,'transferase complex').
go('ubiquitin ligase complex',is_a,'intracellular protein-containing complex').
go('nuclear ubiquitin ligase complex',part_of,'nucleus').
leaf('E2F7','cis-regulatory region sequence-specific DNA binding').
leaf('E2F7','DNA-binding transcription factor activity').
leaf('E2F7','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('E2F7','DNA-binding transcription repressor activity').
fm('DNA-binding transcription repressor activity').
leaf('E2F7','DNA-binding transcription repressor activity, RNA polymerase II-specific').
leaf('E2F7','identical protein binding').
leaf('E2F7','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('E2F7','sequence-specific double-stranded DNA binding').
leaf('E2F7','chorionic trophoblast cell differentiation').
bp('chorionic trophoblast cell differentiation').
leaf('E2F7','DNA damage response, signal transduction by p53 class mediator').
leaf('E2F7','hepatocyte differentiation').
bp('hepatocyte differentiation').
leaf('E2F7','negative regulation of cytokinesis').
bp('negative regulation of cytokinesis').
leaf('E2F7','negative regulation of G1/S transition of mitotic cell cycle').
bp('negative regulation of G1/S transition of mitotic cell cycle').
leaf('E2F7','negative regulation of transcription by RNA polymerase II').
leaf('E2F7','placenta development').
bp('placenta development').
leaf('E2F7','positive regulation of DNA endoreduplication').
bp('positive regulation of DNA endoreduplication').
leaf('E2F7','positive regulation of transcription by RNA polymerase II').
leaf('E2F7','regulation of transcription by RNA polymerase II').
leaf('E2F7','sprouting angiogenesis').
bp('sprouting angiogenesis').
leaf('E2F7','trophoblast giant cell differentiation').
bp('trophoblast giant cell differentiation').
leaf('E2F7','chromatin').
leaf('E2F7','nucleoplasm').
leaf('E2F7','RNA polymerase II transcription regulator complex').
go('chorionic trophoblast cell differentiation',is_a,'cell differentiation').
go('chorionic trophoblast cell differentiation',part_of,'chorion development').
go('chorion development',is_a,'extraembryonic membrane development').
go('extraembryonic membrane development',is_a,'animal gross anatomical part developmental process').
go('hepatocyte differentiation',is_a,'epithelial cell differentiation').
go('hepatocyte differentiation',part_of,'liver development').
go('negative regulation of cytokinesis',is_a,'negative regulation of cell division').
go('negative regulation of cytokinesis',is_a,'regulation of cytokinesis').
go('negative regulation of cytokinesis',is_a,'negative regulation of cell cycle process').
go('negative regulation of G1/S transition of mitotic cell cycle',is_a,'negative regulation of mitotic cell cycle phase transition').
go('negative regulation of G1/S transition of mitotic cell cycle',is_a,'regulation of G1/S transition of mitotic cell cycle').
go('negative regulation of G1/S transition of mitotic cell cycle',is_a,'negative regulation of cell cycle G1/S phase transition').
go('negative regulation of cell cycle G1/S phase transition',is_a,'regulation of cell cycle G1/S phase transition').
go('negative regulation of cell cycle G1/S phase transition',is_a,'negative regulation of cell cycle phase transition').
go('placenta development',is_a,'animal organ development').
go('positive regulation of DNA endoreduplication',is_a,'regulation of DNA endoreduplication').
go('positive regulation of DNA endoreduplication',is_a,'positive regulation of DNA-templated DNA replication').
go('regulation of DNA endoreduplication',is_a,'regulation of cell cycle process').
go('positive regulation of DNA-templated DNA replication',is_a,'regulation of DNA-templated DNA replication').
go('regulation of DNA endoreduplication',is_a,'regulation of DNA-templated DNA replication').
go('regulation of DNA-templated DNA replication',is_a,'regulation of DNA replication').
go('regulation of DNA endoreduplication',regulates,'DNA endoreduplication').
go('DNA endoreduplication',is_a,'cell cycle DNA replication').
go('regulation of DNA-templated DNA replication',regulates,'DNA-templated DNA replication').
go('cell cycle DNA replication',is_a,'DNA-templated DNA replication').
go('cell cycle DNA replication',is_a,'cell cycle process').
go('DNA-templated DNA replication',is_a,'DNA replication').
go('cell cycle DNA replication',part_of,'cell cycle').
go('positive regulation of DNA-templated DNA replication',is_a,'positive regulation of DNA replication').
go('positive regulation of DNA endoreduplication',is_a,'positive regulation of cell cycle process').
go('trophoblast giant cell differentiation',is_a,'cell differentiation involved in embryonic placenta development').
go('cell differentiation involved in embryonic placenta development',is_a,'cell differentiation').
go('cell differentiation involved in embryonic placenta development',is_a,'developmental process involved in reproduction').
go('cell differentiation involved in embryonic placenta development',part_of,'embryonic placenta development').
go('embryonic placenta development',is_a,'embryonic organ development').
go('embryonic placenta development',part_of,'in utero embryonic development').
go('embryonic placenta development',part_of,'placenta development').
go('in utero embryonic development',is_a,'chordate embryonic development').
leaf('E2F8','cis-regulatory region sequence-specific DNA binding').
leaf('E2F8','DNA-binding transcription factor activity').
leaf('E2F8','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('E2F8','DNA-binding transcription repressor activity').
leaf('E2F8','DNA-binding transcription repressor activity, RNA polymerase II-specific').
leaf('E2F8','identical protein binding').
leaf('E2F8','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('E2F8','sequence-specific double-stranded DNA binding').
leaf('E2F8','cell cycle comprising mitosis without cytokinesis').
bp('cell cycle comprising mitosis without cytokinesis').
leaf('E2F8','chorionic trophoblast cell differentiation').
leaf('E2F8','hepatocyte differentiation').
leaf('E2F8','negative regulation of cytokinesis').
leaf('E2F8','negative regulation of transcription by RNA polymerase II').
leaf('E2F8','placenta development').
leaf('E2F8','positive regulation of DNA endoreduplication').
leaf('E2F8','positive regulation of transcription by RNA polymerase II').
leaf('E2F8','regulation of transcription by RNA polymerase II').
leaf('E2F8','sprouting angiogenesis').
leaf('E2F8','trophoblast giant cell differentiation').
leaf('E2F8','chromatin').
leaf('E2F8','nucleolus').
leaf('E2F8','nucleoplasm').
leaf('E2F8','RNA polymerase II transcription regulator complex').
go('cell cycle comprising mitosis without cytokinesis',is_a,'mitotic cell cycle').
leaf('EAPP','negative regulation of transcription elongation by RNA polymerase II').
bp('negative regulation of transcription elongation by RNA polymerase II').
leaf('EAPP','positive regulation of cell population proliferation').
leaf('EAPP','positive regulation of transcription elongation by RNA polymerase II').
leaf('EAPP','cytoplasm').
leaf('EAPP','nuclear speck').
leaf('EAPP','nucleoplasm').
leaf('EAPP','nucleus').
go('negative regulation of transcription elongation by RNA polymerase II',is_a,'regulation of transcription elongation by RNA polymerase II').
go('negative regulation of transcription elongation by RNA polymerase II',is_a,'negative regulation of DNA-templated transcription, elongation').
go('negative regulation of DNA-templated transcription, elongation',is_a,'regulation of DNA-templated transcription elongation').
go('negative regulation of DNA-templated transcription, elongation',is_a,'negative regulation of DNA-templated transcription').
leaf('CCDC6','identical protein binding').
leaf('CCDC6','structural constituent of cytoskeleton').
fm('structural constituent of cytoskeleton').
leaf('CCDC6','cytoskeleton').
leaf('CCDC6','cytosol').
go('structural constituent of cytoskeleton',is_a,'structural molecule activity').
go('structural constituent of cytoskeleton',part_of,'cytoskeleton organization').
go('structural constituent of cytoskeleton',occurs_in,'cytoskeleton').
leaf('PBX1','DNA binding').
leaf('PBX1','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('PBX1','DNA-binding transcription factor activity').
leaf('PBX1','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('PBX1','DNA-binding transcription factor binding').
leaf('PBX1','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('PBX1','sequence-specific double-stranded DNA binding').
leaf('PBX1','transcription cis-regulatory region binding').
leaf('PBX1','transcription coregulator binding').
leaf('PBX1','transcription corepressor binding').
leaf('PBX1','animal organ morphogenesis').
leaf('PBX1','brain development').
bp('brain development').
leaf('PBX1','embryonic organ development').
leaf('PBX1','eye development').
bp('eye development').
leaf('PBX1','natural killer cell differentiation').
bp('natural killer cell differentiation').
leaf('PBX1','neuron development').
bp('neuron development').
leaf('PBX1','positive regulation of transcription by RNA polymerase II').
leaf('PBX1','chromatin').
leaf('PBX1','cytoplasm').
leaf('PBX1','nuclear body').
leaf('PBX1','nucleoplasm').
leaf('PBX1','nucleus').
leaf('PBX1','RNA polymerase II transcription regulator complex').
go('natural killer cell differentiation',is_a,'lymphocyte differentiation').
go('natural killer cell differentiation',is_a,'natural killer cell activation').
go('natural killer cell activation',is_a,'lymphocyte activation').
leaf('NMI','heat shock protein binding').
fm('heat shock protein binding').
leaf('NMI','identical protein binding').
leaf('NMI','molecular adaptor activity').
leaf('NMI','cell surface receptor signaling pathway via JAK-STAT').
bp('cell surface receptor signaling pathway via JAK-STAT').
leaf('NMI','macrophage activation involved in immune response').
bp('macrophage activation involved in immune response').
leaf('NMI','negative regulation of cell population proliferation').
leaf('NMI','negative regulation of innate immune response').
bp('negative regulation of innate immune response').
leaf('NMI','negative regulation of non-canonical NF-kappaB signal transduction').
bp('negative regulation of non-canonical NF-kappaB signal transduction').
leaf('NMI','positive regulation of inflammatory response').
leaf('NMI','positive regulation of innate immune response').
bp('positive regulation of innate immune response').
leaf('NMI','positive regulation of non-canonical NF-kappaB signal transduction').
bp('positive regulation of non-canonical NF-kappaB signal transduction').
leaf('NMI','positive regulation of receptor signaling pathway via STAT').
bp('positive regulation of receptor signaling pathway via STAT').
leaf('NMI','response to heat').
bp('response to heat').
leaf('NMI','response to virus').
leaf('NMI','toll-like receptor 4 signaling pathway').
bp('toll-like receptor 4 signaling pathway').
leaf('NMI','cytoplasm').
leaf('NMI','cytosol').
leaf('NMI','extracellular region').
leaf('NMI','membrane').
leaf('NMI','nucleus').
go('heat shock protein binding',is_a,'protein binding').
go('macrophage activation involved in immune response',is_a,'macrophage activation').
go('macrophage activation involved in immune response',is_a,'leukocyte activation involved in immune response').
go('macrophage activation involved in immune response',part_of,'myeloid cell activation involved in immune response').
go('macrophage activation involved in immune response',part_of,'immune response').
go('negative regulation of non-canonical NF-kappaB signal transduction',is_a,'negative regulation of intracellular signal transduction').
go('negative regulation of non-canonical NF-kappaB signal transduction',is_a,'regulation of non-canonical NF-kappaB signal transduction').
go('regulation of non-canonical NF-kappaB signal transduction',is_a,'regulation of intracellular signal transduction').
go('regulation of non-canonical NF-kappaB signal transduction',regulates,'non-canonical NF-kappaB signal transduction').
go('non-canonical NF-kappaB signal transduction',is_a,'intracellular signaling cassette').
go('positive regulation of non-canonical NF-kappaB signal transduction',is_a,'regulation of non-canonical NF-kappaB signal transduction').
go('positive regulation of non-canonical NF-kappaB signal transduction',is_a,'positive regulation of intracellular signal transduction').
go('positive regulation of receptor signaling pathway via STAT',is_a,'regulation of receptor signaling pathway via STAT').
go('positive regulation of receptor signaling pathway via STAT',is_a,'positive regulation of signal transduction').
go('toll-like receptor 4 signaling pathway',is_a,'cell surface toll-like receptor signaling pathway').
go('cell surface toll-like receptor signaling pathway',is_a,'cell surface pattern recognition receptor signaling pathway').
go('cell surface pattern recognition receptor signaling pathway',is_a,'pattern recognition receptor signaling pathway').
go('cell surface pattern recognition receptor signaling pathway',is_a,'innate immune response activating cell surface receptor signaling pathway').
leaf('PIAS1','DNA-binding transcription factor binding').
leaf('PIAS1','enzyme binding').
leaf('PIAS1','protein domain specific binding').
leaf('PIAS1','SUMO ligase activity').
fm('SUMO ligase activity').
leaf('PIAS1','SUMO transferase activity').
fm('SUMO transferase activity').
leaf('PIAS1','transcription cis-regulatory region binding').
leaf('PIAS1','transcription coregulator activity').
fm('transcription coregulator activity').
leaf('PIAS1','transcription corepressor activity').
leaf('PIAS1','transcription regulator inhibitor activity').
leaf('PIAS1','ubiquitin protein ligase binding').
leaf('PIAS1','zinc ion binding').
leaf('PIAS1','cell surface receptor signaling pathway via JAK-STAT').
leaf('PIAS1','DNA damage response').
leaf('PIAS1','fat cell differentiation').
leaf('PIAS1','G1/S transition of mitotic cell cycle').
leaf('PIAS1','negative regulation of apoptotic process').
leaf('PIAS1','negative regulation of receptor signaling pathway via JAK-STAT').
bp('negative regulation of receptor signaling pathway via JAK-STAT').
leaf('PIAS1','negative regulation of transcription by RNA polymerase II').
leaf('PIAS1','positive regulation of proteasomal ubiquitin-dependent protein catabolic process').
leaf('PIAS1','positive regulation of protein localization to cell periphery').
bp('positive regulation of protein localization to cell periphery').
leaf('PIAS1','positive regulation of protein sumoylation').
bp('positive regulation of protein sumoylation').
leaf('PIAS1','positive regulation of smooth muscle cell differentiation').
bp('positive regulation of smooth muscle cell differentiation').
leaf('PIAS1','positive regulation of transcription by RNA polymerase II').
leaf('PIAS1','positive regulation of transcription initiation by RNA polymerase II').
bp('positive regulation of transcription initiation by RNA polymerase II').
leaf('PIAS1','protein sumoylation').
bp('protein sumoylation').
leaf('PIAS1','protein-DNA complex assembly').
bp('protein-DNA complex assembly').
leaf('PIAS1','regulation of cell population proliferation').
leaf('PIAS1','spermatogenesis').
leaf('PIAS1','visual learning').
bp('visual learning').
leaf('PIAS1','chromatin').
leaf('PIAS1','cytoskeleton').
leaf('PIAS1','glutamatergic synapse').
leaf('PIAS1','nuclear periphery').
cc('nuclear periphery').
leaf('PIAS1','nuclear speck').
leaf('PIAS1','nucleoplasm').
leaf('PIAS1','nucleus').
leaf('PIAS1','PML body').
leaf('PIAS1','postsynaptic cytosol').
cc('postsynaptic cytosol').
leaf('PIAS1','presynaptic cytosol').
go('SUMO ligase activity',is_a,'ubiquitin-like protein ligase activity').
go('SUMO ligase activity',is_a,'SUMO transferase activity').
go('ubiquitin-like protein ligase activity',is_a,'ubiquitin-like protein transferase activity').
go('SUMO transferase activity',is_a,'ubiquitin-like protein transferase activity').
go('ubiquitin-like protein transferase activity',is_a,'aminoacyltransferase activity').
go('ubiquitin-like protein transferase activity',is_a,'catalytic activity, acting on a protein').
go('aminoacyltransferase activity',is_a,'acyltransferase activity').
go('negative regulation of receptor signaling pathway via JAK-STAT',is_a,'regulation of receptor signaling pathway via JAK-STAT').
go('negative regulation of receptor signaling pathway via JAK-STAT',is_a,'negative regulation of receptor signaling pathway via STAT').
go('negative regulation of receptor signaling pathway via STAT',is_a,'regulation of receptor signaling pathway via STAT').
go('negative regulation of receptor signaling pathway via STAT',is_a,'negative regulation of signal transduction').
go('positive regulation of protein sumoylation',is_a,'positive regulation of protein modification by small protein conjugation or removal').
go('positive regulation of protein sumoylation',is_a,'regulation of protein sumoylation').
go('positive regulation of protein modification by small protein conjugation or removal',is_a,'positive regulation of post-translational protein modification').
go('regulation of protein sumoylation',is_a,'regulation of protein modification by small protein conjugation or removal').
go('positive regulation of post-translational protein modification',is_a,'regulation of post-translational protein modification').
go('positive regulation of post-translational protein modification',is_a,'positive regulation of protein modification process').
go('positive regulation of protein modification by small protein conjugation or removal',is_a,'regulation of protein modification by small protein conjugation or removal').
go('regulation of protein sumoylation',regulates,'protein sumoylation').
go('protein sumoylation',is_a,'peptidyl-lysine modification').
go('peptidyl-lysine modification',is_a,'protein modification process').
go('protein sumoylation',is_a,'protein modification by small protein conjugation').
go('positive regulation of smooth muscle cell differentiation',is_a,'regulation of smooth muscle cell differentiation').
go('positive regulation of smooth muscle cell differentiation',is_a,'positive regulation of muscle cell differentiation').
go('regulation of smooth muscle cell differentiation',is_a,'regulation of muscle cell differentiation').
go('positive regulation of muscle cell differentiation',is_a,'regulation of muscle cell differentiation').
go('regulation of muscle cell differentiation',is_a,'regulation of cell differentiation').
go('positive regulation of muscle cell differentiation',is_a,'positive regulation of cell differentiation').
go('regulation of muscle cell differentiation',regulates,'muscle cell differentiation').
go('regulation of smooth muscle cell differentiation',regulates,'smooth muscle cell differentiation').
go('smooth muscle cell differentiation',is_a,'muscle cell differentiation').
go('positive regulation of transcription initiation by RNA polymerase II',is_a,'positive regulation of transcription by RNA polymerase II').
go('positive regulation of transcription initiation by RNA polymerase II',is_a,'regulation of transcription initiation by RNA polymerase II').
go('positive regulation of transcription initiation by RNA polymerase II',is_a,'positive regulation of DNA-templated transcription initiation').
go('protein-DNA complex assembly',is_a,'protein-DNA complex organization').
go('protein-DNA complex assembly',is_a,'protein-containing complex assembly').
go('visual learning',is_a,'visual behavior').
go('visual learning',is_a,'associative learning').
go('visual behavior',is_a,'behavior').
go('associative learning',is_a,'learning').
go('visual behavior',is_a,'response to light stimulus').
go('learning',is_a,'learning or memory').
go('nuclear periphery',is_a,'cellular anatomical structure').
go('nuclear periphery',part_of,'nuclear lumen').
go('postsynaptic cytosol',is_a,'cytosol').
go('postsynaptic cytosol',part_of,'postsynapse').
go('postsynaptic cytosol',part_of,'cytosol').
leaf('PIAS2','DNA binding').
leaf('PIAS2','RNA polymerase II-specific DNA-binding transcription factor binding').
leaf('PIAS2','SUMO ligase activity').
leaf('PIAS2','SUMO transferase activity').
leaf('PIAS2','transcription coregulator activity').
leaf('PIAS2','transcription corepressor activity').
leaf('PIAS2','transcription regulator inhibitor activity').
leaf('PIAS2','ubiquitin protein ligase binding').
leaf('PIAS2','zinc ion binding').
leaf('PIAS2','endoplasmic reticulum unfolded protein response').
bp('endoplasmic reticulum unfolded protein response').
leaf('PIAS2','negative regulation of androgen receptor signaling pathway').
bp('negative regulation of androgen receptor signaling pathway').
leaf('PIAS2','negative regulation of receptor signaling pathway via JAK-STAT').
leaf('PIAS2','protein sumoylation').
leaf('PIAS2','regulation of transcription by RNA polymerase II').
leaf('PIAS2','chromatin').
leaf('PIAS2','nuclear speck').
leaf('PIAS2','nucleoplasm').
leaf('PIAS2','nucleus').
leaf('PIAS2','PML body').
go('negative regulation of androgen receptor signaling pathway',is_a,'regulation of androgen receptor signaling pathway').
go('negative regulation of androgen receptor signaling pathway',is_a,'negative regulation of intracellular steroid hormone receptor signaling pathway').
go('negative regulation of intracellular steroid hormone receptor signaling pathway',is_a,'regulation of intracellular steroid hormone receptor signaling pathway').
go('regulation of androgen receptor signaling pathway',is_a,'regulation of intracellular steroid hormone receptor signaling pathway').
go('regulation of intracellular steroid hormone receptor signaling pathway',is_a,'regulation of intracellular signal transduction').
go('regulation of androgen receptor signaling pathway',regulates,'androgen receptor signaling pathway').
go('androgen receptor signaling pathway',is_a,'nuclear receptor-mediated steroid hormone signaling pathway').
go('regulation of intracellular steroid hormone receptor signaling pathway',regulates,'nuclear receptor-mediated steroid hormone signaling pathway').
go('nuclear receptor-mediated steroid hormone signaling pathway',is_a,'steroid hormone receptor signaling pathway').
go('negative regulation of intracellular steroid hormone receptor signaling pathway',is_a,'negative regulation of intracellular signal transduction').
go('steroid hormone receptor signaling pathway',is_a,'hormone-mediated signaling pathway').
go('steroid hormone receptor signaling pathway',part_of,'cellular response to steroid hormone stimulus').
go('nuclear receptor-mediated steroid hormone signaling pathway',is_a,'nuclear receptor-mediated signaling pathway').
go('nuclear receptor-mediated signaling pathway',is_a,'intracellular receptor signaling pathway').
leaf('PIAS3','SUMO ligase activity').
leaf('PIAS3','SUMO transferase activity').
leaf('PIAS3','transcription coregulator activity').
leaf('PIAS3','transcription regulator inhibitor activity').
leaf('PIAS3','zinc ion binding').
leaf('PIAS3','negative regulation of protein sumoylation').
bp('negative regulation of protein sumoylation').
leaf('PIAS3','negative regulation of receptor signaling pathway via JAK-STAT').
leaf('PIAS3','negative regulation of transcription by RNA polymerase II').
leaf('PIAS3','positive regulation of protein sumoylation').
leaf('PIAS3','protein sumoylation').
leaf('PIAS3','chromatin').
leaf('PIAS3','cytoplasm').
leaf('PIAS3','glutamatergic synapse').
leaf('PIAS3','nuclear speck').
leaf('PIAS3','nucleoplasm').
leaf('PIAS3','nucleus').
leaf('PIAS3','postsynaptic cytosol').
leaf('PIAS3','presynaptic cytosol').
go('negative regulation of protein sumoylation',is_a,'negative regulation of protein modification by small protein conjugation or removal').
go('negative regulation of protein sumoylation',is_a,'regulation of protein sumoylation').
leaf('PIAS4','DNA binding').
leaf('PIAS4','SUMO ligase activity').
leaf('PIAS4','SUMO transferase activity').
leaf('PIAS4','transcription coregulator activity').
leaf('PIAS4','transcription corepressor activity').
leaf('PIAS4','transcription regulator inhibitor activity').
leaf('PIAS4','ubiquitin protein ligase activity').
fm('ubiquitin protein ligase activity').
leaf('PIAS4','ubiquitin protein ligase binding').
leaf('PIAS4','zinc ion binding').
leaf('PIAS4','double-strand break repair').
bp('double-strand break repair').
leaf('PIAS4','negative regulation of canonical NF-kappaB signal transduction').
bp('negative regulation of canonical NF-kappaB signal transduction').
leaf('PIAS4','negative regulation of DNA-templated transcription').
leaf('PIAS4','negative regulation of protein localization to chromatin').
bp('negative regulation of protein localization to chromatin').
leaf('PIAS4','negative regulation of receptor signaling pathway via JAK-STAT').
leaf('PIAS4','positive regulation of double-strand break repair via homologous recombination').
leaf('PIAS4','positive regulation of keratinocyte apoptotic process').
bp('positive regulation of keratinocyte apoptotic process').
leaf('PIAS4','positive regulation of protein sumoylation').
leaf('PIAS4','protein sumoylation').
leaf('PIAS4','regulation of mRNA stability').
leaf('PIAS4','regulation of transcription by RNA polymerase II').
leaf('PIAS4','vitamin D metabolic process').
bp('vitamin D metabolic process').
leaf('PIAS4','chromatin').
leaf('PIAS4','cytoplasm').
leaf('PIAS4','nuclear matrix').
leaf('PIAS4','nucleoplasm').
leaf('PIAS4','nucleus').
leaf('PIAS4','PML body').
leaf('PIAS4','transferase complex').
cc('transferase complex').
go('ubiquitin protein ligase activity',is_a,'ubiquitin-like protein ligase activity').
go('ubiquitin protein ligase activity',is_a,'ubiquitin-protein transferase activity').
go('ubiquitin-protein transferase activity',is_a,'ubiquitin-like protein transferase activity').
go('negative regulation of canonical NF-kappaB signal transduction',is_a,'negative regulation of intracellular signal transduction').
go('negative regulation of canonical NF-kappaB signal transduction',is_a,'regulation of canonical NF-kappaB signal transduction').
go('negative regulation of protein localization to chromatin',is_a,'negative regulation of protein localization').
go('negative regulation of protein localization to chromatin',is_a,'regulation of protein localization to chromatin').
go('regulation of protein localization to chromatin',is_a,'regulation of protein localization').
go('regulation of protein localization to chromatin',regulates,'protein localization to chromatin').
go('protein localization to chromatin',is_a,'protein localization to chromosome').
go('protein localization to chromosome',is_a,'protein localization to organelle').
go('positive regulation of keratinocyte apoptotic process',is_a,'regulation of keratinocyte apoptotic process').
go('positive regulation of keratinocyte apoptotic process',is_a,'positive regulation of epithelial cell apoptotic process').
go('regulation of keratinocyte apoptotic process',is_a,'regulation of epithelial cell apoptotic process').
go('positive regulation of epithelial cell apoptotic process',is_a,'regulation of epithelial cell apoptotic process').
go('regulation of epithelial cell apoptotic process',is_a,'regulation of apoptotic process').
go('regulation of keratinocyte apoptotic process',regulates,'keratinocyte apoptotic process').
go('keratinocyte apoptotic process',is_a,'epithelial cell apoptotic process').
go('regulation of epithelial cell apoptotic process',regulates,'epithelial cell apoptotic process').
go('epithelial cell apoptotic process',is_a,'apoptotic process').
go('positive regulation of epithelial cell apoptotic process',is_a,'positive regulation of apoptotic process').
go('vitamin D metabolic process',is_a,'steroid metabolic process').
go('steroid metabolic process',is_a,'lipid metabolic process').
go('lipid metabolic process',is_a,'primary metabolic process').
leaf('MZF1','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('MZF1','DNA-binding transcription factor activity').
leaf('MZF1','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('MZF1','DNA-binding transcription repressor activity, RNA polymerase II-specific').
leaf('MZF1','protein homodimerization activity').
leaf('MZF1','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('MZF1','transcription cis-regulatory region binding').
leaf('MZF1','negative regulation of transcription by RNA polymerase II').
leaf('MZF1','positive regulation of transcription by RNA polymerase II').
leaf('MZF1','regulation of DNA-templated transcription').
leaf('MZF1','nucleoplasm').
leaf('MZF1','nucleus').
leaf('GATA4','chromatin binding').
leaf('GATA4','co-SMAD binding').
fm('co-SMAD binding').
leaf('GATA4','DNA binding').
leaf('GATA4','DNA-binding transcription activator activity').
leaf('GATA4','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('GATA4','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('GATA4','NFAT protein binding').
fm('NFAT protein binding').
leaf('GATA4','protein kinase binding').
leaf('GATA4','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('GATA4','RNA polymerase II transcription regulatory region sequence-specific DNA binding').
leaf('GATA4','RNA polymerase II-specific DNA-binding transcription factor binding').
leaf('GATA4','sequence-specific DNA binding').
leaf('GATA4','sequence-specific double-stranded DNA binding').
leaf('GATA4','transcription cis-regulatory region binding').
leaf('GATA4','transcription coactivator binding').
leaf('GATA4','zinc ion binding').
leaf('GATA4','aortic valve morphogenesis').
leaf('GATA4','atrial septum morphogenesis').
bp('atrial septum morphogenesis').
leaf('GATA4','atrial septum primum morphogenesis').
bp('atrial septum primum morphogenesis').
leaf('GATA4','atrial septum secundum morphogenesis').
bp('atrial septum secundum morphogenesis').
leaf('GATA4','atrioventricular canal development').
bp('atrioventricular canal development').
leaf('GATA4','atrioventricular node development').
bp('atrioventricular node development').
leaf('GATA4','atrioventricular valve formation').
bp('atrioventricular valve formation').
leaf('GATA4','cardiac muscle tissue regeneration').
leaf('GATA4','cardiac right ventricle morphogenesis').
leaf('GATA4','cardiac ventricle morphogenesis').
bp('cardiac ventricle morphogenesis').
leaf('GATA4','cell fate commitment').
leaf('GATA4','cell growth involved in cardiac muscle cell development').
bp('cell growth involved in cardiac muscle cell development').
leaf('GATA4','cell-cell signaling').
leaf('GATA4','cellular response to glucose stimulus').
bp('cellular response to glucose stimulus').
leaf('GATA4','embryonic foregut morphogenesis').
bp('embryonic foregut morphogenesis').
leaf('GATA4','embryonic heart tube anterior/posterior pattern specification').
bp('embryonic heart tube anterior/posterior pattern specification').
leaf('GATA4','endocardial cushion development').
bp('endocardial cushion development').
leaf('GATA4','endoderm development').
bp('endoderm development').
leaf('GATA4','heart looping').
bp('heart looping').
leaf('GATA4','intestinal epithelial cell differentiation').
bp('intestinal epithelial cell differentiation').
leaf('GATA4','male gonad development').
leaf('GATA4','negative regulation of apoptotic signaling pathway').
bp('negative regulation of apoptotic signaling pathway').
leaf('GATA4','negative regulation of autophagy').
leaf('GATA4','negative regulation of cardiac muscle cell apoptotic process').
bp('negative regulation of cardiac muscle cell apoptotic process').
leaf('GATA4','negative regulation of connective tissue replacement').
bp('negative regulation of connective tissue replacement').
leaf('GATA4','negative regulation of gene expression').
leaf('GATA4','negative regulation of oxidative stress-induced intrinsic apoptotic signaling pathway').
bp('negative regulation of oxidative stress-induced intrinsic apoptotic signaling pathway').
leaf('GATA4','negative regulation of transcription by RNA polymerase II').
leaf('GATA4','positive regulation of angiogenesis').
leaf('GATA4','positive regulation of BMP signaling pathway').
bp('positive regulation of BMP signaling pathway').
leaf('GATA4','positive regulation of cell cycle').
bp('positive regulation of cell cycle').
leaf('GATA4','positive regulation of DNA-templated transcription').
leaf('GATA4','positive regulation of miRNA transcription').
leaf('GATA4','positive regulation of transcription by RNA polymerase II').
leaf('GATA4','positive regulation of vascular endothelial growth factor production').
bp('positive regulation of vascular endothelial growth factor production').
leaf('GATA4','regulation of cardiac muscle cell contraction').
bp('regulation of cardiac muscle cell contraction').
leaf('GATA4','regulation of DNA-templated transcription').
leaf('GATA4','response to mechanical stimulus').
bp('response to mechanical stimulus').
leaf('GATA4','response to retinoic acid').
bp('response to retinoic acid').
leaf('GATA4','response to vitamin A').
bp('response to vitamin A').
leaf('GATA4','response to xenobiotic stimulus').
leaf('GATA4','transdifferentiation').
bp('transdifferentiation').
leaf('GATA4','ventricular septum development').
leaf('GATA4','wound healing').
leaf('GATA4','chromatin').
leaf('GATA4','nuclear body').
leaf('GATA4','nucleoplasm').
leaf('GATA4','nucleus').
leaf('GATA4','RNA polymerase II transcription regulator complex').
go('co-SMAD binding',is_a,'SMAD binding').
go('SMAD binding',is_a,'protein binding').
go('NFAT protein binding',is_a,'RNA polymerase II-specific DNA-binding transcription factor binding').
go('atrial septum morphogenesis',is_a,'cardiac septum morphogenesis').
go('cardiac septum morphogenesis',is_a,'anatomical structure morphogenesis').
go('cardiac septum morphogenesis',part_of,'cardiac chamber morphogenesis').
go('cardiac septum morphogenesis',part_of,'cardiac septum development').
go('atrial septum morphogenesis',part_of,'cardiac atrium morphogenesis').
go('atrial septum morphogenesis',part_of,'atrial septum development').
go('cardiac atrium morphogenesis',is_a,'cardiac chamber morphogenesis').
go('atrial septum development',is_a,'cardiac septum development').
go('cardiac atrium morphogenesis',part_of,'cardiac atrium development').
go('atrial septum development',part_of,'cardiac atrium development').
go('cardiac atrium development',is_a,'cardiac chamber development').
go('atrial septum primum morphogenesis',is_a,'atrial septum morphogenesis').
go('atrial septum primum morphogenesis',part_of,'septum primum development').
go('septum primum development',is_a,'atrial septum development').
go('atrial septum secundum morphogenesis',is_a,'atrial septum morphogenesis').
go('atrial septum secundum morphogenesis',part_of,'septum secundum development').
go('septum secundum development',is_a,'atrial septum development').
go('atrioventricular canal development',is_a,'animal gross anatomical part developmental process').
go('atrioventricular canal development',part_of,'heart development').
go('atrioventricular node development',is_a,'cardiac muscle tissue development').
go('atrioventricular node development',part_of,'cardiac conduction system development').
go('cardiac conduction system development',is_a,'cardiac muscle tissue development').
go('atrioventricular valve formation',is_a,'heart valve formation').
go('heart valve formation',is_a,'anatomical structure formation involved in morphogenesis').
go('heart valve formation',part_of,'heart valve morphogenesis').
go('atrioventricular valve formation',part_of,'atrioventricular valve morphogenesis').
go('atrioventricular valve morphogenesis',is_a,'heart valve morphogenesis').
go('atrioventricular valve morphogenesis',part_of,'atrioventricular valve development').
go('atrioventricular valve development',is_a,'heart valve development').
go('cell growth involved in cardiac muscle cell development',is_a,'developmental cell growth').
go('cell growth involved in cardiac muscle cell development',part_of,'cardiac muscle cell development').
go('cell growth involved in cardiac muscle cell development',part_of,'physiological cardiac muscle hypertrophy').
go('physiological cardiac muscle hypertrophy',is_a,'physiological muscle hypertrophy').
go('physiological muscle hypertrophy',is_a,'muscle hypertrophy').
go('physiological cardiac muscle hypertrophy',is_a,'cardiac muscle hypertrophy').
go('physiological cardiac muscle hypertrophy',part_of,'cardiac muscle tissue growth').
go('embryonic foregut morphogenesis',is_a,'embryonic morphogenesis').
go('embryonic foregut morphogenesis',part_of,'foregut morphogenesis').
go('foregut morphogenesis',is_a,'anatomical structure morphogenesis').
go('foregut morphogenesis',part_of,'digestive tract morphogenesis').
go('digestive tract morphogenesis',is_a,'tube morphogenesis').
go('digestive tract morphogenesis',part_of,'digestive tract development').
go('digestive tract development',is_a,'tube development').
go('digestive tract development',is_a,'animal gross anatomical part developmental process').
go('digestive tract development',part_of,'digestive system development').
go('digestive system development',is_a,'animal gross anatomical part developmental process').
go('digestive system development',is_a,'system development').
go('embryonic heart tube anterior/posterior pattern specification',is_a,'anterior/posterior pattern specification').
go('embryonic heart tube anterior/posterior pattern specification',part_of,'heart development').
go('endocardial cushion development',is_a,'mesenchyme development').
go('endocardial cushion development',part_of,'heart development').
go('endoderm development',is_a,'animal gross anatomical part developmental process').
go('endoderm development',is_a,'tissue development').
go('heart looping',is_a,'embryonic heart tube morphogenesis').
go('embryonic heart tube morphogenesis',is_a,'epithelial tube morphogenesis').
go('embryonic heart tube morphogenesis',is_a,'embryonic morphogenesis').
go('embryonic heart tube morphogenesis',part_of,'heart morphogenesis').
go('embryonic heart tube morphogenesis',part_of,'embryonic heart tube development').
go('embryonic heart tube morphogenesis',part_of,'embryonic organ morphogenesis').
go('embryonic heart tube development',is_a,'epithelium development').
go('embryonic heart tube development',is_a,'tube development').
go('embryonic heart tube development',part_of,'embryonic organ development').
go('embryonic heart tube development',part_of,'heart development').
go('heart looping',part_of,'determination of heart left/right asymmetry').
go('determination of heart left/right asymmetry',is_a,'determination of left/right symmetry').
go('determination of left/right symmetry',is_a,'determination of bilateral symmetry').
go('determination of bilateral symmetry',is_a,'specification of symmetry').
go('specification of symmetry',is_a,'pattern specification process').
go('determination of left/right symmetry',part_of,'left/right pattern formation').
go('left/right pattern formation',is_a,'regionalization').
go('determination of heart left/right asymmetry',part_of,'heart development').
go('intestinal epithelial cell differentiation',is_a,'columnar/cuboidal epithelial cell differentiation').
go('intestinal epithelial cell differentiation',part_of,'digestive tract development').
go('negative regulation of cardiac muscle cell apoptotic process',is_a,'negative regulation of striated muscle cell apoptotic process').
go('negative regulation of cardiac muscle cell apoptotic process',is_a,'regulation of cardiac muscle cell apoptotic process').
go('negative regulation of striated muscle cell apoptotic process',is_a,'regulation of striated muscle cell apoptotic process').
go('regulation of cardiac muscle cell apoptotic process',is_a,'regulation of striated muscle cell apoptotic process').
go('regulation of striated muscle cell apoptotic process',is_a,'regulation of muscle cell apoptotic process').
go('regulation of cardiac muscle cell apoptotic process',regulates,'cardiac muscle cell apoptotic process').
go('cardiac muscle cell apoptotic process',is_a,'striated muscle cell apoptotic process').
go('striated muscle cell apoptotic process',is_a,'muscle cell apoptotic process').
go('regulation of striated muscle cell apoptotic process',regulates,'striated muscle cell apoptotic process').
go('negative regulation of striated muscle cell apoptotic process',is_a,'negative regulation of muscle cell apoptotic process').
go('negative regulation of muscle cell apoptotic process',is_a,'regulation of muscle cell apoptotic process').
go('negative regulation of muscle cell apoptotic process',is_a,'negative regulation of apoptotic process').
go('negative regulation of connective tissue replacement',is_a,'regulation of connective tissue replacement').
go('negative regulation of connective tissue replacement',is_a,'negative regulation of tissue remodeling').
go('negative regulation of tissue remodeling',is_a,'negative regulation of multicellular organismal process').
go('negative regulation of tissue remodeling',is_a,'regulation of tissue remodeling').
go('negative regulation of oxidative stress-induced intrinsic apoptotic signaling pathway',is_a,'negative regulation of intrinsic apoptotic signaling pathway').
go('negative regulation of oxidative stress-induced intrinsic apoptotic signaling pathway',is_a,'regulation of oxidative stress-induced intrinsic apoptotic signaling pathway').
go('negative regulation of intrinsic apoptotic signaling pathway',is_a,'regulation of intrinsic apoptotic signaling pathway').
go('regulation of oxidative stress-induced intrinsic apoptotic signaling pathway',is_a,'regulation of intrinsic apoptotic signaling pathway').
go('regulation of oxidative stress-induced intrinsic apoptotic signaling pathway',regulates,'intrinsic apoptotic signaling pathway in response to oxidative stress').
go('negative regulation of intrinsic apoptotic signaling pathway',is_a,'negative regulation of intracellular signal transduction').
go('negative regulation of intrinsic apoptotic signaling pathway',is_a,'negative regulation of apoptotic signaling pathway').
go('positive regulation of BMP signaling pathway',is_a,'positive regulation of transmembrane receptor protein serine/threonine kinase signaling pathway').
go('positive regulation of BMP signaling pathway',is_a,'regulation of BMP signaling pathway').
go('regulation of BMP signaling pathway',is_a,'regulation of cellular response to growth factor stimulus').
go('regulation of BMP signaling pathway',is_a,'regulation of transmembrane receptor protein serine/threonine kinase signaling pathway').
go('regulation of BMP signaling pathway',regulates,'BMP signaling pathway').
go('BMP signaling pathway',is_a,'transforming growth factor beta receptor superfamily signaling pathway').
go('BMP signaling pathway',part_of,'cellular response to BMP stimulus').
go('cellular response to BMP stimulus',is_a,'response to BMP').
go('response to BMP',is_a,'response to growth factor').
go('cellular response to BMP stimulus',is_a,'cellular response to growth factor stimulus').
go('positive regulation of vascular endothelial growth factor production',is_a,'regulation of vascular endothelial growth factor production').
go('positive regulation of vascular endothelial growth factor production',is_a,'positive regulation of cytokine production').
go('regulation of vascular endothelial growth factor production',is_a,'regulation of cytokine production').
go('regulation of vascular endothelial growth factor production',regulates,'vascular endothelial growth factor production').
go('vascular endothelial growth factor production',is_a,'cytokine production').
go('regulation of cardiac muscle cell contraction',is_a,'regulation of cardiac muscle contraction').
go('regulation of cardiac muscle cell contraction',is_a,'regulation of actin filament-based movement').
go('regulation of actin filament-based movement',is_a,'regulation of actin filament-based process').
go('regulation of cardiac muscle contraction',is_a,'regulation of striated muscle contraction').
go('regulation of actin filament-based process',is_a,'regulation of cellular process').
go('regulation of striated muscle contraction',is_a,'regulation of muscle contraction').
go('regulation of actin filament-based process',regulates,'actin filament-based process').
go('regulation of muscle contraction',is_a,'regulation of muscle system process').
go('regulation of actin filament-based movement',regulates,'actin filament-based movement').
go('regulation of muscle system process',is_a,'regulation of system process').
go('regulation of cardiac muscle contraction',is_a,'regulation of heart contraction').
go('regulation of muscle system process',regulates,'muscle system process').
go('regulation of muscle contraction',regulates,'muscle contraction').
go('regulation of striated muscle contraction',regulates,'striated muscle contraction').
go('regulation of cardiac muscle contraction',regulates,'cardiac muscle contraction').
go('regulation of cardiac muscle cell contraction',regulates,'cardiac muscle cell contraction').
go('cardiac muscle cell contraction',is_a,'actin-mediated cell contraction').
go('cardiac muscle cell contraction',part_of,'cardiac muscle contraction').
go('response to retinoic acid',is_a,'response to oxygen-containing compound').
go('response to retinoic acid',is_a,'response to lipid').
go('response to vitamin A',is_a,'response to lipid').
go('response to vitamin A',is_a,'response to vitamin').
go('response to vitamin',is_a,'response to nutrient').
go('transdifferentiation',is_a,'cell differentiation').
leaf('GATA5','DNA-binding transcription factor activity').
leaf('GATA5','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('GATA5','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('GATA5','sequence-specific double-stranded DNA binding').
leaf('GATA5','transcription cis-regulatory region binding').
leaf('GATA5','zinc ion binding').
leaf('GATA5','aortic valve morphogenesis').
leaf('GATA5','cardiac muscle tissue development').
bp('cardiac muscle tissue development').
leaf('GATA5','cell fate commitment').
leaf('GATA5','endocardial cushion fusion').
bp('endocardial cushion fusion').
leaf('GATA5','heart induction').
bp('heart induction').
leaf('GATA5','intestinal epithelial cell differentiation').
leaf('GATA5','negative regulation of cardiac muscle hypertrophy').
bp('negative regulation of cardiac muscle hypertrophy').
leaf('GATA5','negative regulation of gene expression').
leaf('GATA5','negative regulation of transcription by RNA polymerase II').
leaf('GATA5','positive regulation of cardiac endothelial to mesenchymal transition').
bp('positive regulation of cardiac endothelial to mesenchymal transition').
leaf('GATA5','positive regulation of gene expression').
leaf('GATA5','positive regulation of Notch signaling pathway').
bp('positive regulation of Notch signaling pathway').
leaf('GATA5','positive regulation of transcription by RNA polymerase II').
leaf('GATA5','chromatin').
leaf('GATA5','nucleoplasm').
leaf('GATA5','nucleus').
go('endocardial cushion fusion',is_a,'cell-cell adhesion').
go('endocardial cushion fusion',is_a,'cell adhesion involved in heart morphogenesis').
go('cell adhesion involved in heart morphogenesis',is_a,'cell adhesion').
go('cell adhesion involved in heart morphogenesis',part_of,'heart morphogenesis').
go('endocardial cushion fusion',part_of,'endocardial cushion morphogenesis').
go('endocardial cushion morphogenesis',is_a,'mesenchyme morphogenesis').
go('endocardial cushion morphogenesis',part_of,'heart morphogenesis').
go('endocardial cushion morphogenesis',part_of,'endocardial cushion development').
go('heart induction',is_a,'regulation of heart morphogenesis').
go('regulation of heart morphogenesis',is_a,'regulation of animal organ morphogenesis').
go('heart induction',is_a,'organ induction').
go('organ induction',is_a,'positive regulation of animal organ morphogenesis').
go('regulation of heart morphogenesis',regulates,'heart morphogenesis').
go('organ induction',is_a,'regulation of animal organ formation').
go('regulation of animal organ formation',is_a,'regulation of animal organ morphogenesis').
go('regulation of animal organ formation',regulates,'animal organ formation').
go('animal organ formation',is_a,'anatomical structure formation involved in morphogenesis').
go('animal organ formation',part_of,'animal organ morphogenesis').
go('organ induction',is_a,'developmental induction').
go('developmental induction',is_a,'developmental process').
go('negative regulation of cardiac muscle hypertrophy',is_a,'negative regulation of muscle hypertrophy').
go('negative regulation of cardiac muscle hypertrophy',is_a,'regulation of cardiac muscle hypertrophy').
go('negative regulation of muscle hypertrophy',is_a,'negative regulation of multicellular organismal process').
go('regulation of cardiac muscle hypertrophy',is_a,'regulation of muscle adaptation').
go('negative regulation of muscle hypertrophy',is_a,'regulation of muscle hypertrophy').
go('regulation of muscle adaptation',is_a,'regulation of response to stimulus').
go('regulation of muscle hypertrophy',is_a,'regulation of muscle system process').
go('regulation of muscle adaptation',is_a,'regulation of muscle system process').
go('regulation of muscle adaptation',regulates,'muscle adaptation').
go('regulation of muscle hypertrophy',regulates,'muscle hypertrophy').
go('regulation of cardiac muscle hypertrophy',is_a,'regulation of muscle hypertrophy').
go('regulation of cardiac muscle hypertrophy',regulates,'cardiac muscle hypertrophy').
go('positive regulation of cardiac endothelial to mesenchymal transition',is_a,'positive regulation of multicellular organismal process').
go('positive regulation of cardiac endothelial to mesenchymal transition',is_a,'positive regulation of cell differentiation').
go('positive regulation of cardiac endothelial to mesenchymal transition',is_a,'regulation of cardiac endothelial to mesenchymal transition').
go('regulation of cardiac endothelial to mesenchymal transition',is_a,'regulation of cell differentiation').
go('regulation of cardiac endothelial to mesenchymal transition',regulates,'cardiac endothelial to mesenchymal transition').
go('cardiac endothelial to mesenchymal transition',is_a,'mesenchymal cell differentiation').
go('positive regulation of Notch signaling pathway',is_a,'positive regulation of signal transduction').
go('positive regulation of Notch signaling pathway',is_a,'regulation of Notch signaling pathway').
leaf('GATA6','chromatin binding').
leaf('GATA6','DNA-binding transcription factor activity').
leaf('GATA6','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('GATA6','DNA-binding transcription factor binding').
leaf('GATA6','NFAT protein binding').
leaf('GATA6','protein kinase binding').
leaf('GATA6','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('GATA6','sequence-specific double-stranded DNA binding').
leaf('GATA6','transcription cis-regulatory region binding').
leaf('GATA6','transcription coactivator binding').
leaf('GATA6','zinc ion binding').
leaf('GATA6','atrioventricular canal development').
leaf('GATA6','atrioventricular node development').
leaf('GATA6','cardiac vascular smooth muscle cell differentiation').
bp('cardiac vascular smooth muscle cell differentiation').
leaf('GATA6','cell fate commitment').
leaf('GATA6','cellular response to hypoxia').
leaf('GATA6','epithelial cell differentiation').
bp('epithelial cell differentiation').
leaf('GATA6','G1 to G0 transition involved in cell differentiation').
bp('G1 to G0 transition involved in cell differentiation').
leaf('GATA6','gene expression').
leaf('GATA6','heart contraction').
bp('heart contraction').
leaf('GATA6','intestinal epithelial cell differentiation').
leaf('GATA6','male gonad development').
leaf('GATA6','negative regulation of apoptotic process').
leaf('GATA6','negative regulation of DNA-templated transcription').
leaf('GATA6','negative regulation of sebum secreting cell proliferation').
bp('negative regulation of sebum secreting cell proliferation').
leaf('GATA6','negative regulation of transcription by RNA polymerase II').
leaf('GATA6','negative regulation of transforming growth factor beta1 production').
bp('negative regulation of transforming growth factor beta1 production').
leaf('GATA6','negative regulation of transforming growth factor beta2 production').
bp('negative regulation of transforming growth factor beta2 production').
leaf('GATA6','outflow tract septum morphogenesis').
bp('outflow tract septum morphogenesis').
leaf('GATA6','positive regulation of angiogenesis').
leaf('GATA6','positive regulation of cardiac muscle myoblast proliferation').
bp('positive regulation of cardiac muscle myoblast proliferation').
leaf('GATA6','positive regulation of DNA-templated transcription').
leaf('GATA6','positive regulation of transcription by RNA polymerase II').
leaf('GATA6','regulation of antimicrobial humoral response').
bp('regulation of antimicrobial humoral response').
leaf('GATA6','response to growth factor').
leaf('GATA6','response to retinoic acid').
leaf('GATA6','response to xenobiotic stimulus').
leaf('GATA6','sebaceous gland cell differentiation').
bp('sebaceous gland cell differentiation').
leaf('GATA6','sinoatrial node development').
bp('sinoatrial node development').
leaf('GATA6','skin epidermis development').
bp('skin epidermis development').
leaf('GATA6','smooth muscle cell differentiation').
bp('smooth muscle cell differentiation').
leaf('GATA6','chromatin').
leaf('GATA6','nucleoplasm').
leaf('GATA6','nucleus').
leaf('GATA6','transcription regulator complex').
go('cardiac vascular smooth muscle cell differentiation',is_a,'cardiocyte differentiation').
go('cardiac vascular smooth muscle cell differentiation',is_a,'vascular associated smooth muscle cell differentiation').
go('vascular associated smooth muscle cell differentiation',is_a,'smooth muscle cell differentiation').
go('vascular associated smooth muscle cell differentiation',part_of,'vasculature development').
go('cardiac vascular smooth muscle cell differentiation',part_of,'coronary vasculature development').
go('coronary vasculature development',is_a,'blood vessel development').
go('coronary vasculature development',part_of,'heart development').
go('G1 to G0 transition involved in cell differentiation',is_a,'G1 to G0 transition').
go('G1 to G0 transition',is_a,'cell cycle process').
go('G1 to G0 transition involved in cell differentiation',part_of,'cell differentiation').
go('negative regulation of sebum secreting cell proliferation',is_a,'regulation of sebum secreting cell proliferation').
go('negative regulation of sebum secreting cell proliferation',is_a,'negative regulation of epithelial cell proliferation').
go('regulation of sebum secreting cell proliferation',is_a,'regulation of epithelial cell proliferation').
go('regulation of sebum secreting cell proliferation',regulates,'sebum secreting cell proliferation').
go('sebum secreting cell proliferation',is_a,'epithelial cell proliferation').
go('negative regulation of transforming growth factor beta1 production',is_a,'negative regulation of transforming growth factor beta production').
go('negative regulation of transforming growth factor beta1 production',is_a,'regulation of transforming growth factor beta1 production').
go('negative regulation of transforming growth factor beta production',is_a,'regulation of transforming growth factor beta production').
go('regulation of transforming growth factor beta1 production',is_a,'regulation of transforming growth factor beta production').
go('regulation of transforming growth factor beta production',is_a,'regulation of cytokine production').
go('regulation of transforming growth factor beta1 production',regulates,'transforming growth factor beta1 production').
go('transforming growth factor beta1 production',is_a,'transforming growth factor beta production').
go('transforming growth factor beta production',is_a,'cytokine production').
go('regulation of transforming growth factor beta production',regulates,'transforming growth factor beta production').
go('negative regulation of transforming growth factor beta production',is_a,'negative regulation of cytokine production').
go('negative regulation of transforming growth factor beta2 production',is_a,'negative regulation of transforming growth factor beta production').
go('negative regulation of transforming growth factor beta2 production',is_a,'regulation of transforming growth factor beta2 production').
go('regulation of transforming growth factor beta2 production',is_a,'regulation of transforming growth factor beta production').
go('regulation of transforming growth factor beta2 production',regulates,'transforming growth factor beta2 production').
go('transforming growth factor beta2 production',is_a,'transforming growth factor beta production').
go('outflow tract septum morphogenesis',is_a,'cardiac septum morphogenesis').
go('outflow tract septum morphogenesis',part_of,'outflow tract morphogenesis').
go('outflow tract morphogenesis',is_a,'anatomical structure morphogenesis').
go('outflow tract morphogenesis',part_of,'heart morphogenesis').
go('positive regulation of cardiac muscle myoblast proliferation',is_a,'positive regulation of myoblast proliferation').
go('positive regulation of cardiac muscle myoblast proliferation',is_a,'regulation of cardiac muscle myoblast proliferation').
go('positive regulation of myoblast proliferation',is_a,'regulation of myoblast proliferation').
go('regulation of myoblast proliferation',is_a,'regulation of cell population proliferation').
go('regulation of cardiac muscle myoblast proliferation',is_a,'regulation of myoblast proliferation').
go('regulation of myoblast proliferation',regulates,'myoblast proliferation').
go('regulation of cardiac muscle myoblast proliferation',regulates,'cardiac muscle myoblast proliferation').
go('myoblast proliferation',is_a,'cell population proliferation').
go('cardiac muscle myoblast proliferation',is_a,'myoblast proliferation').
go('positive regulation of myoblast proliferation',is_a,'positive regulation of cell population proliferation').
go('regulation of antimicrobial humoral response',is_a,'regulation of response to external stimulus').
go('regulation of antimicrobial humoral response',is_a,'regulation of humoral immune response').
go('regulation of antimicrobial humoral response',is_a,'regulation of defense response').
go('regulation of humoral immune response',is_a,'regulation of immune response').
go('regulation of antimicrobial humoral response',is_a,'regulation of response to biotic stimulus').
go('regulation of humoral immune response',regulates,'humoral immune response').
go('humoral immune response',is_a,'immune response').
go('regulation of antimicrobial humoral response',regulates,'antimicrobial humoral response').
go('antimicrobial humoral response',is_a,'humoral immune response').
go('antimicrobial humoral response',is_a,'defense response to symbiont').
go('sebaceous gland cell differentiation',is_a,'epidermal cell differentiation').
go('epidermal cell differentiation',is_a,'epithelial cell differentiation').
go('epidermal cell differentiation',part_of,'epidermis development').
go('epidermis development',is_a,'tissue development').
go('epidermis development',is_a,'animal gross anatomical part developmental process').
go('sebaceous gland cell differentiation',part_of,'sebaceous gland development').
go('sebaceous gland development',is_a,'gland development').
go('sebaceous gland development',part_of,'skin development').
go('skin development',is_a,'animal organ development').
go('sinoatrial node development',is_a,'atrial cardiac muscle tissue development').
go('atrial cardiac muscle tissue development',is_a,'cardiac muscle tissue development').
go('sinoatrial node development',part_of,'cardiac conduction system development').
go('skin epidermis development',is_a,'epithelium development').
go('skin epidermis development',is_a,'epidermis development').
go('skin epidermis development',part_of,'skin development').
leaf('GATAD1','sequence-specific DNA binding').
leaf('GATAD1','zinc ion binding').
leaf('GATAD1','chromatin organization').
bp('chromatin organization').
leaf('GATAD1','chromatin remodeling').
leaf('GATAD1','regulation of DNA-templated transcription').
leaf('GATAD1','nucleoplasm').
leaf('GATAD1','nucleus').
leaf('GATAD2A','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('GATAD2A','protein-macromolecule adaptor activity').
leaf('GATAD2A','sequence-specific DNA binding').
leaf('GATAD2A','chromatin remodeling').
leaf('GATAD2A','negative regulation of DNA-templated transcription').
leaf('GATAD2A','negative regulation of transcription by RNA polymerase II').
leaf('GATAD2A','positive regulation of DNA-templated transcription').
leaf('GATAD2A','regulation of cell fate specification').
bp('regulation of cell fate specification').
leaf('GATAD2A','regulation of stem cell differentiation').
bp('regulation of stem cell differentiation').
leaf('GATAD2A','chromosome').
leaf('GATAD2A','nuclear speck').
leaf('GATAD2A','nucleoplasm').
leaf('GATAD2A','nucleus').
leaf('GATAD2A','NuRD complex').
cc('NuRD complex').
go('regulation of cell fate specification',is_a,'regulation of cell fate commitment').
go('regulation of cell fate commitment',is_a,'regulation of developmental process').
go('regulation of cell fate commitment',is_a,'regulation of cellular process').
go('regulation of cell fate commitment',regulates,'cell fate commitment').
go('regulation of cell fate specification',regulates,'cell fate specification').
go('regulation of stem cell differentiation',is_a,'regulation of cell differentiation').
go('regulation of stem cell differentiation',regulates,'stem cell differentiation').
go('NuRD complex',is_a,'transcription regulator complex').
go('NuRD complex',is_a,'histone deacetylase complex').
go('histone deacetylase complex',is_a,'nuclear protein-containing complex').
go('NuRD complex',is_a,'CHD-type complex').
go('histone deacetylase complex',is_a,'catalytic complex').
go('histone deacetylase complex',part_of,'nucleoplasm').
go('CHD-type complex',is_a,'SWI/SNF superfamily-type complex').
go('SWI/SNF superfamily-type complex',is_a,'nuclear protein-containing complex').
go('SWI/SNF superfamily-type complex',is_a,'ATPase complex').
go('ATPase complex',is_a,'catalytic complex').
go('SWI/SNF superfamily-type complex',part_of,'chromatin').
leaf('GATAD2B','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('GATAD2B','sequence-specific DNA binding').
leaf('GATAD2B','zinc ion binding').
leaf('GATAD2B','chromatin remodeling').
leaf('GATAD2B','negative regulation of DNA-templated transcription').
leaf('GATAD2B','negative regulation of transcription by RNA polymerase II').
leaf('GATAD2B','positive regulation of DNA-templated transcription').
leaf('GATAD2B','regulation of cell fate specification').
leaf('GATAD2B','regulation of stem cell differentiation').
leaf('GATAD2B','chromatin').
leaf('GATAD2B','chromosome').
leaf('GATAD2B','chromosome, telomeric region').
cc('chromosome, telomeric region').
leaf('GATAD2B','nuclear speck').
leaf('GATAD2B','nucleoplasm').
leaf('GATAD2B','nucleus').
leaf('GATAD2B','NuRD complex').
leaf('GATAD2B','protein-containing complex').
go('chromosome, telomeric region',is_a,'chromosomal region').
leaf('TRPS1','DNA-binding transcription factor activity').
leaf('TRPS1','DNA-binding transcription repressor activity, RNA polymerase II-specific').
leaf('TRPS1','protein domain specific binding').
leaf('TRPS1','RNA polymerase II transcription regulatory region sequence-specific DNA binding').
leaf('TRPS1','zinc ion binding').
leaf('TRPS1','negative regulation of transcription by RNA polymerase II').
leaf('TRPS1','regulation of chondrocyte differentiation').
bp('regulation of chondrocyte differentiation').
leaf('TRPS1','regulation of transcription by RNA polymerase II').
leaf('TRPS1','skeletal system development').
leaf('TRPS1','chromatin').
leaf('TRPS1','nucleoplasm').
leaf('TRPS1','nucleus').
leaf('TRPS1','protein-containing complex').
go('regulation of chondrocyte differentiation',is_a,'regulation of cell differentiation').
go('regulation of chondrocyte differentiation',is_a,'regulation of cartilage development').
go('regulation of cartilage development',is_a,'regulation of multicellular organismal development').
go('regulation of cartilage development',regulates,'cartilage development').
go('regulation of chondrocyte differentiation',regulates,'chondrocyte differentiation').
leaf('ZGLP1','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('ZGLP1','sequence-specific DNA binding').
leaf('ZGLP1','zinc ion binding').
leaf('ZGLP1','negative regulation of transcription by RNA polymerase II').
leaf('ZGLP1','oocyte development').
bp('oocyte development').
leaf('ZGLP1','positive regulation of transcription by RNA polymerase II').
leaf('ZGLP1','regulation of transcription by RNA polymerase II').
leaf('ZGLP1','spermatogenesis').
leaf('ZGLP1','nucleoplasm').
leaf('ZGLP1','nucleus').
go('oocyte development',is_a,'germ cell development').
go('germ cell development',is_a,'cell development').
go('germ cell development',is_a,'developmental process involved in reproduction').
go('germ cell development',is_a,'cellular process involved in reproduction in multicellular organism').
go('cellular process involved in reproduction in multicellular organism',is_a,'cellular process').
go('cellular process involved in reproduction in multicellular organism',is_a,'multicellular organismal reproductive process').
go('germ cell development',part_of,'gamete generation').
go('oocyte development',part_of,'oocyte differentiation').
go('oocyte differentiation',is_a,'cell differentiation').
go('oocyte differentiation',is_a,'developmental process involved in reproduction').
go('oocyte differentiation',part_of,'oogenesis').
go('oogenesis',is_a,'germ cell development').
go('oogenesis',is_a,'female gamete generation').
go('female gamete generation',is_a,'gamete generation').
leaf('SP1','bHLH transcription factor binding').
fm('bHLH transcription factor binding').
leaf('SP1','DNA binding').
leaf('SP1','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('SP1','DNA-binding transcription factor activity').
leaf('SP1','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('SP1','double-stranded DNA binding').
leaf('SP1','histone acetyltransferase binding').
leaf('SP1','histone deacetylase binding').
leaf('SP1','identical protein binding').
leaf('SP1','molecular adaptor activity').
leaf('SP1','protein homodimerization activity').
leaf('SP1','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('SP1','RNA polymerase II transcription regulatory region sequence-specific DNA binding').
leaf('SP1','RNA polymerase II-specific DNA-binding transcription factor binding').
leaf('SP1','sequence-specific DNA binding').
leaf('SP1','sequence-specific double-stranded DNA binding').
leaf('SP1','transcription cis-regulatory region binding').
leaf('SP1','transcription coregulator binding').
leaf('SP1','cellular response to estrogen stimulus').
bp('cellular response to estrogen stimulus').
leaf('SP1','cellular response to insulin stimulus').
leaf('SP1','cellular response to wortmannin').
bp('cellular response to wortmannin').
leaf('SP1','cellular response to zinc ion starvation').
bp('cellular response to zinc ion starvation').
leaf('SP1','host-mediated activation of viral transcription').
bp('host-mediated activation of viral transcription').
leaf('SP1','positive regulation of amyloid-beta formation').
bp('positive regulation of amyloid-beta formation').
leaf('SP1','positive regulation of angiogenesis').
leaf('SP1','positive regulation of apoptotic signaling pathway').
bp('positive regulation of apoptotic signaling pathway').
leaf('SP1','positive regulation of blood vessel endothelial cell migration').
leaf('SP1','positive regulation of DNA-templated transcription').
leaf('SP1','positive regulation of gene expression').
leaf('SP1','positive regulation of hydrogen sulfide biosynthetic process').
bp('positive regulation of hydrogen sulfide biosynthetic process').
leaf('SP1','positive regulation of transcription by RNA polymerase II').
leaf('SP1','positive regulation of vascular endothelial cell proliferation').
bp('positive regulation of vascular endothelial cell proliferation').
leaf('SP1','regulation of DNA-templated transcription').
leaf('SP1','regulation of transcription by RNA polymerase II').
leaf('SP1','response to hydroperoxide').
bp('response to hydroperoxide').
leaf('SP1','chromatin').
leaf('SP1','cytoplasm').
leaf('SP1','euchromatin').
cc('euchromatin').
leaf('SP1','nucleoplasm').
leaf('SP1','nucleus').
leaf('SP1','protein-DNA complex').
leaf('SP1','transcription repressor complex').
go('cellular response to estrogen stimulus',is_a,'response to estrogen').
go('cellular response to estrogen stimulus',is_a,'cellular response to hormone stimulus').
go('cellular response to wortmannin',is_a,'response to wortmannin').
go('cellular response to wortmannin',is_a,'cellular response to ketone').
go('response to wortmannin',is_a,'response to ketone').
go('cellular response to ketone',is_a,'response to ketone').
go('response to ketone',is_a,'response to oxygen-containing compound').
go('cellular response to ketone',is_a,'cellular response to oxygen-containing compound').
go('cellular response to zinc ion starvation',is_a,'cellular response to starvation').
go('cellular response to zinc ion starvation',is_a,'response to zinc ion starvation').
go('response to zinc ion starvation',is_a,'response to metal ion starvation').
go('response to metal ion starvation',is_a,'response to starvation').
go('host-mediated activation of viral transcription',is_a,'host-mediated perturbation of viral transcription').
go('host-mediated activation of viral transcription',is_a,'host-mediated activation of viral process').
go('host-mediated perturbation of viral transcription',is_a,'host-mediated perturbation of viral process').
go('host-mediated activation of viral process',is_a,'host-mediated perturbation of viral process').
go('host-mediated perturbation of viral process',is_a,'host-mediated perturbation of symbiont process').
go('host-mediated perturbation of symbiont process',is_a,'modulation of process of another organism').
go('modulation of process of another organism',is_a,'biological process involved in interspecies interaction between organisms').
go('positive regulation of amyloid-beta formation',is_a,'regulation of amyloid-beta formation').
go('positive regulation of amyloid-beta formation',is_a,'positive regulation of amyloid precursor protein catabolic process').
go('regulation of amyloid-beta formation',is_a,'regulation of amyloid precursor protein catabolic process').
go('positive regulation of amyloid precursor protein catabolic process',is_a,'regulation of amyloid precursor protein catabolic process').
go('regulation of amyloid precursor protein catabolic process',is_a,'regulation of protein metabolic process').
go('regulation of amyloid-beta formation',regulates,'amyloid-beta formation').
go('amyloid-beta formation',is_a,'amyloid-beta metabolic process').
go('regulation of amyloid precursor protein catabolic process',regulates,'amyloid precursor protein catabolic process').
go('amyloid-beta metabolic process',is_a,'metabolic process').
go('amyloid precursor protein catabolic process',is_a,'amyloid precursor protein metabolic process').
go('amyloid-beta formation',is_a,'amyloid precursor protein catabolic process').
go('amyloid precursor protein metabolic process',is_a,'protein metabolic process').
go('positive regulation of amyloid precursor protein catabolic process',is_a,'positive regulation of protein metabolic process').
go('positive regulation of hydrogen sulfide biosynthetic process',is_a,'regulation of hydrogen sulfide biosynthetic process').
go('positive regulation of hydrogen sulfide biosynthetic process',is_a,'positive regulation of biosynthetic process').
go('regulation of hydrogen sulfide biosynthetic process',is_a,'regulation of biosynthetic process').
go('regulation of hydrogen sulfide biosynthetic process',is_a,'regulation of sulfur metabolic process').
go('regulation of sulfur metabolic process',is_a,'regulation of metabolic process').
go('regulation of sulfur metabolic process',regulates,'sulfur compound metabolic process').
go('regulation of hydrogen sulfide biosynthetic process',regulates,'hydrogen sulfide biosynthetic process').
go('hydrogen sulfide biosynthetic process',is_a,'hydrogen sulfide metabolic process').
go('hydrogen sulfide biosynthetic process',is_a,'sulfur compound biosynthetic process').
go('sulfur compound biosynthetic process',is_a,'sulfur compound metabolic process').
go('hydrogen sulfide metabolic process',is_a,'sulfur compound metabolic process').
go('sulfur compound biosynthetic process',is_a,'biosynthetic process').
go('positive regulation of vascular endothelial cell proliferation',is_a,'positive regulation of endothelial cell proliferation').
go('positive regulation of vascular endothelial cell proliferation',is_a,'regulation of vascular endothelial cell proliferation').
go('regulation of vascular endothelial cell proliferation',is_a,'regulation of endothelial cell proliferation').
go('regulation of vascular endothelial cell proliferation',regulates,'vascular endothelial cell proliferation').
go('vascular endothelial cell proliferation',is_a,'endothelial cell proliferation').
go('response to hydroperoxide',is_a,'response to oxidative stress').
go('response to hydroperoxide',is_a,'response to oxygen-containing compound').
go('euchromatin',is_a,'chromatin').
leaf('SYNRG','intracellular protein transport').
bp('intracellular protein transport').
leaf('SYNRG','AP-1 adaptor complex').
cc('AP-1 adaptor complex').
leaf('SYNRG','clathrin coat of trans-Golgi network vesicle').
cc('clathrin coat of trans-Golgi network vesicle').
leaf('SYNRG','cytoplasm').
leaf('SYNRG','Golgi apparatus').
leaf('SYNRG','perinuclear region of cytoplasm').
go('AP-1 adaptor complex',is_a,'clathrin adaptor complex').
go('clathrin adaptor complex',is_a,'AP-type membrane coat adaptor complex').
go('AP-type membrane coat adaptor complex',is_a,'membrane protein complex').
go('AP-type membrane coat adaptor complex',part_of,'membrane coat').
go('membrane coat',is_a,'membrane protein complex').
go('membrane coat',part_of,'cytoplasm').
go('membrane coat',part_of,'coated membrane').
go('coated membrane',is_a,'membrane').
go('clathrin adaptor complex',part_of,'clathrin coat').
go('clathrin coat',is_a,'membrane coat').
go('AP-1 adaptor complex',part_of,'clathrin coat of trans-Golgi network vesicle').
go('clathrin coat of trans-Golgi network vesicle',is_a,'clathrin vesicle coat').
go('clathrin vesicle coat',is_a,'clathrin coat').
go('clathrin vesicle coat',is_a,'vesicle coat').
go('vesicle coat',is_a,'membrane coat').
go('vesicle coat',part_of,'coated vesicle membrane').
go('clathrin vesicle coat',part_of,'clathrin-coated vesicle membrane').
go('clathrin coat of trans-Golgi network vesicle',part_of,'Golgi apparatus').
go('clathrin coat of trans-Golgi network vesicle',part_of,'trans-Golgi network transport vesicle membrane').
go('trans-Golgi network transport vesicle membrane',is_a,'Golgi-associated vesicle membrane').
go('Golgi-associated vesicle membrane',is_a,'cytoplasmic vesicle membrane').
go('Golgi-associated vesicle membrane',is_a,'bounding membrane of organelle').
go('Golgi-associated vesicle membrane',part_of,'Golgi-associated vesicle').
go('Golgi-associated vesicle',is_a,'cytoplasmic vesicle').
go('trans-Golgi network transport vesicle membrane',is_a,'clathrin-coated vesicle membrane').
go('trans-Golgi network transport vesicle membrane',is_a,'transport vesicle membrane').
go('transport vesicle membrane',is_a,'bounding membrane of organelle').
go('transport vesicle membrane',is_a,'cytoplasmic vesicle membrane').
go('transport vesicle membrane',part_of,'transport vesicle').
go('transport vesicle',is_a,'cytoplasmic vesicle').
go('transport vesicle',part_of,'endomembrane system').
go('trans-Golgi network transport vesicle membrane',part_of,'trans-Golgi network transport vesicle').
go('trans-Golgi network transport vesicle',is_a,'Golgi-associated vesicle').
go('trans-Golgi network transport vesicle',is_a,'clathrin-coated vesicle').
go('trans-Golgi network transport vesicle',is_a,'transport vesicle').
leaf('POU2F1','DNA binding').
leaf('POU2F1','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('POU2F1','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('POU2F1','identical protein binding').
leaf('POU2F1','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('POU2F1','RNA polymerase II core promoter sequence-specific DNA binding').
leaf('POU2F1','sequence-specific DNA binding').
leaf('POU2F1','negative regulation of DNA-templated transcription').
leaf('POU2F1','positive regulation of miRNA transcription').
leaf('POU2F1','positive regulation of transcription by RNA polymerase II').
leaf('POU2F1','regulation of transcription by RNA polymerase II').
leaf('POU2F1','chromatin').
leaf('POU2F1','nucleoplasm').
leaf('POU2F1','nucleus').
leaf('POU2F1','RNA polymerase II transcription regulator complex').
leaf('SLC22A1','(R)-carnitine transmembrane transporter activity').
fm('(R)-carnitine transmembrane transporter activity').
leaf('SLC22A1','acetylcholine transmembrane transporter activity').
fm('acetylcholine transmembrane transporter activity').
leaf('SLC22A1','choline transmembrane transporter activity').
fm('choline transmembrane transporter activity').
leaf('SLC22A1','dopamine:sodium symporter activity').
fm('dopamine:sodium symporter activity').
leaf('SLC22A1','identical protein binding').
leaf('SLC22A1','monoamine transmembrane transporter activity').
fm('monoamine transmembrane transporter activity').
leaf('SLC22A1','neurotransmitter transmembrane transporter activity').
fm('neurotransmitter transmembrane transporter activity').
leaf('SLC22A1','norepinephrine:sodium symporter activity').
fm('norepinephrine:sodium symporter activity').
leaf('SLC22A1','prostaglandin transmembrane transporter activity').
fm('prostaglandin transmembrane transporter activity').
leaf('SLC22A1','putrescine transmembrane transporter activity').
fm('putrescine transmembrane transporter activity').
leaf('SLC22A1','pyrimidine nucleoside transmembrane transporter activity').
fm('pyrimidine nucleoside transmembrane transporter activity').
leaf('SLC22A1','quaternary ammonium group transmembrane transporter activity').
fm('quaternary ammonium group transmembrane transporter activity').
leaf('SLC22A1','spermidine transmembrane transporter activity').
fm('spermidine transmembrane transporter activity').
leaf('SLC22A1','thiamine transmembrane transporter activity').
fm('thiamine transmembrane transporter activity').
leaf('SLC22A1','transmembrane transporter activity').
fm('transmembrane transporter activity').
leaf('SLC22A1','xenobiotic transmembrane transporter activity').
fm('xenobiotic transmembrane transporter activity').
leaf('SLC22A1','acetylcholine transport').
bp('acetylcholine transport').
leaf('SLC22A1','amine transport').
bp('amine transport').
leaf('SLC22A1','choline transport').
bp('choline transport').
leaf('SLC22A1','dopamine uptake').
bp('dopamine uptake').
leaf('SLC22A1','epinephrine uptake').
bp('epinephrine uptake').
leaf('SLC22A1','establishment or maintenance of transmembrane electrochemical gradient').
bp('establishment or maintenance of transmembrane electrochemical gradient').
leaf('SLC22A1','metanephric proximal tubule development').
bp('metanephric proximal tubule development').
leaf('SLC22A1','neurotransmitter transport').
bp('neurotransmitter transport').
leaf('SLC22A1','O-acyl-L-carnitine transmembrane transport').
bp('O-acyl-L-carnitine transmembrane transport').
leaf('SLC22A1','prostaglandin transport').
bp('prostaglandin transport').
leaf('SLC22A1','protein homooligomerization').
bp('protein homooligomerization').
leaf('SLC22A1','purine-containing compound transmembrane transport').
bp('purine-containing compound transmembrane transport').
leaf('SLC22A1','putrescine transport').
bp('putrescine transport').
leaf('SLC22A1','quaternary ammonium group transport').
bp('quaternary ammonium group transport').
leaf('SLC22A1','serotonin uptake').
bp('serotonin uptake').
leaf('SLC22A1','spermidine transport').
bp('spermidine transport').
leaf('SLC22A1','thiamine transmembrane transport').
bp('thiamine transmembrane transport').
leaf('SLC22A1','thiamine transport').
bp('thiamine transport').
leaf('SLC22A1','transmembrane transport').
bp('transmembrane transport').
leaf('SLC22A1','transport across blood-brain barrier').
bp('transport across blood-brain barrier').
leaf('SLC22A1','xenobiotic metabolic process').
bp('xenobiotic metabolic process').
leaf('SLC22A1','apical plasma membrane').
cc('apical plasma membrane').
leaf('SLC22A1','basal plasma membrane').
leaf('SLC22A1','basolateral plasma membrane').
leaf('SLC22A1','lateral plasma membrane').
cc('lateral plasma membrane').
leaf('SLC22A1','membrane').
leaf('SLC22A1','plasma membrane').
leaf('SLC22A1','presynapse').
cc('presynapse').
go('(R)-carnitine transmembrane transporter activity',is_a,'carnitine transmembrane transporter activity').
go('carnitine transmembrane transporter activity',is_a,'modified amino acid transmembrane transporter activity').
go('carnitine transmembrane transporter activity',is_a,'quaternary ammonium group transmembrane transporter activity').
go('quaternary ammonium group transmembrane transporter activity',is_a,'transmembrane transporter activity').
go('modified amino acid transmembrane transporter activity',is_a,'transmembrane transporter activity').
go('modified amino acid transmembrane transporter activity',part_of,'modified amino acid transport').
go('quaternary ammonium group transmembrane transporter activity',part_of,'quaternary ammonium group transport').
go('modified amino acid transport',is_a,'nitrogen compound transport').
go('quaternary ammonium group transport',is_a,'nitrogen compound transport').
go('carnitine transmembrane transporter activity',part_of,'carnitine transmembrane transport').
go('carnitine transmembrane transport',is_a,'transmembrane transport').
go('carnitine transmembrane transport',is_a,'carnitine transport').
go('carnitine transport',is_a,'amino-acid betaine transport').
go('amino-acid betaine transport',is_a,'quaternary ammonium group transport').
go('amino-acid betaine transport',is_a,'modified amino acid transport').
go('(R)-carnitine transmembrane transporter activity',part_of,'(R)-carnitine transmembrane transport').
go('(R)-carnitine transmembrane transport',is_a,'carnitine transmembrane transport').
go('(R)-carnitine transmembrane transport',is_a,'(R)-carnitine transport').
go('(R)-carnitine transport',is_a,'carnitine transport').
go('acetylcholine transmembrane transporter activity',is_a,'acetate ester transmembrane transporter activity').
go('acetylcholine transmembrane transporter activity',is_a,'neurotransmitter transmembrane transporter activity').
go('acetate ester transmembrane transporter activity',is_a,'transmembrane transporter activity').
go('neurotransmitter transmembrane transporter activity',is_a,'transmembrane transporter activity').
go('acetate ester transmembrane transporter activity',part_of,'acetate ester transport').
go('neurotransmitter transmembrane transporter activity',part_of,'neurotransmitter transport').
go('acetate ester transport',is_a,'transport').
go('neurotransmitter transport',is_a,'transport').
go('choline transmembrane transporter activity',is_a,'transmembrane transporter activity').
go('choline transmembrane transporter activity',part_of,'choline transport').
go('choline transport',is_a,'nitrogen compound transport').
go('dopamine:sodium symporter activity',is_a,'sodium:chloride symporter activity').
go('dopamine:sodium symporter activity',is_a,'monoamine transmembrane transporter activity').
go('monoamine transmembrane transporter activity',is_a,'active transmembrane transporter activity').
go('sodium:chloride symporter activity',is_a,'monoatomic anion:sodium symporter activity').
go('monoatomic anion:sodium symporter activity',is_a,'monoatomic anion:monoatomic cation symporter activity').
go('sodium:chloride symporter activity',is_a,'chloride:monoatomic cation symporter activity').
go('monoatomic anion:monoatomic cation symporter activity',is_a,'solute:monoatomic cation symporter activity').
go('chloride:monoatomic cation symporter activity',is_a,'chloride transmembrane transporter activity').
go('solute:monoatomic cation symporter activity',is_a,'monoatomic cation transmembrane transporter activity').
go('chloride transmembrane transporter activity',is_a,'monoatomic anion transmembrane transporter activity').
go('monoatomic anion transmembrane transporter activity',is_a,'monoatomic ion transmembrane transporter activity').
go('solute:monoatomic cation symporter activity',is_a,'symporter activity').
go('monoatomic anion transmembrane transporter activity',part_of,'monoatomic anion transmembrane transport').
go('symporter activity',is_a,'secondary active transmembrane transporter activity').
go('monoatomic anion transmembrane transport',is_a,'monoatomic anion transport').
go('secondary active transmembrane transporter activity',is_a,'active transmembrane transporter activity').
go('monoatomic anion transport',is_a,'monoatomic ion transport').
go('monoatomic anion:monoatomic cation symporter activity',is_a,'monoatomic anion transmembrane transporter activity').
go('monoatomic anion transmembrane transport',is_a,'monoatomic ion transmembrane transport').
go('monoatomic anion:sodium symporter activity',is_a,'solute:sodium symporter activity').
go('chloride transmembrane transporter activity',part_of,'chloride transmembrane transport').
go('solute:sodium symporter activity',is_a,'sodium ion transmembrane transporter activity').
go('sodium ion transmembrane transporter activity',is_a,'metal ion transmembrane transporter activity').
go('chloride transmembrane transport',is_a,'chloride transport').
go('sodium ion transmembrane transporter activity',part_of,'sodium ion transmembrane transport').
go('chloride transport',is_a,'monoatomic anion transport').
go('sodium ion transmembrane transport',is_a,'sodium ion transport').
go('chloride transport',is_a,'inorganic anion transport').
go('sodium ion transport',is_a,'metal ion transport').
go('chloride transmembrane transport',is_a,'monoatomic anion transmembrane transport').
go('sodium ion transmembrane transport',is_a,'monoatomic cation transmembrane transport').
go('chloride:monoatomic cation symporter activity',is_a,'monoatomic anion:monoatomic cation symporter activity').
go('solute:sodium symporter activity',is_a,'solute:monoatomic cation symporter activity').
go('dopamine:sodium symporter activity',part_of,'dopamine uptake').
go('dopamine uptake',is_a,'catecholamine uptake').
go('catecholamine uptake',is_a,'nitrogen compound transport').
go('catecholamine uptake',is_a,'organic hydroxy compound transport').
go('norepinephrine:sodium symporter activity',is_a,'sodium:chloride symporter activity').
go('norepinephrine:sodium symporter activity',is_a,'monoamine transmembrane transporter activity').
go('norepinephrine:sodium symporter activity',part_of,'norepinephrine uptake').
go('norepinephrine uptake',is_a,'catecholamine uptake').
go('prostaglandin transmembrane transporter activity',is_a,'icosanoid transmembrane transporter activity').
go('icosanoid transmembrane transporter activity',is_a,'lipid transmembrane transporter activity').
go('lipid transmembrane transporter activity',is_a,'transmembrane transporter activity').
go('icosanoid transmembrane transporter activity',part_of,'icosanoid transport').
go('icosanoid transport',is_a,'carboxylic acid transport').
go('prostaglandin transmembrane transporter activity',part_of,'prostaglandin transport').
go('prostaglandin transport',is_a,'fatty acid transport').
go('prostaglandin transport',is_a,'icosanoid transport').
go('putrescine transmembrane transporter activity',is_a,'polyamine transmembrane transporter activity').
go('polyamine transmembrane transporter activity',is_a,'transmembrane transporter activity').
go('polyamine transmembrane transporter activity',part_of,'polyamine transmembrane transport').
go('polyamine transmembrane transport',is_a,'polyamine transport').
go('polyamine transmembrane transport',is_a,'transmembrane transport').
go('polyamine transport',is_a,'nitrogen compound transport').
go('putrescine transmembrane transporter activity',part_of,'putrescine transport').
go('putrescine transport',is_a,'polyamine transport').
go('pyrimidine nucleoside transmembrane transporter activity',is_a,'nucleoside transmembrane transporter activity').
go('nucleoside transmembrane transporter activity',is_a,'carbohydrate derivative transmembrane transporter activity').
go('nucleoside transmembrane transporter activity',is_a,'nucleobase-containing compound transmembrane transporter activity').
go('carbohydrate derivative transmembrane transporter activity',is_a,'transmembrane transporter activity').
go('nucleobase-containing compound transmembrane transporter activity',is_a,'transmembrane transporter activity').
go('carbohydrate derivative transmembrane transporter activity',part_of,'carbohydrate derivative transport').
go('carbohydrate derivative transport',is_a,'transport').
go('nucleobase-containing compound transmembrane transporter activity',part_of,'nucleobase-containing compound transport').
go('nucleoside transmembrane transporter activity',part_of,'nucleoside transmembrane transport').
go('nucleoside transmembrane transport',is_a,'nucleoside transport').
go('nucleoside transmembrane transport',is_a,'transmembrane transport').
go('nucleoside transport',is_a,'nucleobase-containing compound transport').
go('nucleoside transport',is_a,'carbohydrate derivative transport').
go('pyrimidine nucleoside transmembrane transporter activity',part_of,'pyrimidine-containing compound transmembrane transport').
go('pyrimidine-containing compound transmembrane transport',is_a,'nitrogen compound transport').
go('pyrimidine-containing compound transmembrane transport',is_a,'transmembrane transport').
go('spermidine transmembrane transporter activity',is_a,'polyamine transmembrane transporter activity').
go('spermidine transmembrane transporter activity',part_of,'spermidine transmembrane transport').
go('spermidine transmembrane transport',is_a,'spermidine transport').
go('spermidine transmembrane transport',is_a,'polyamine transmembrane transport').
go('spermidine transport',is_a,'polyamine transport').
go('thiamine transmembrane transporter activity',is_a,'azole transmembrane transporter activity').
go('thiamine transmembrane transporter activity',is_a,'vitamin transmembrane transporter activity').
go('azole transmembrane transporter activity',is_a,'transmembrane transporter activity').
go('vitamin transmembrane transporter activity',is_a,'transmembrane transporter activity').
go('azole transmembrane transporter activity',part_of,'azole transmembrane transport').
go('vitamin transmembrane transporter activity',part_of,'vitamin transmembrane transport').
go('azole transmembrane transport',is_a,'nitrogen compound transport').
go('vitamin transmembrane transport',is_a,'transmembrane transport').
go('azole transmembrane transport',is_a,'transmembrane transport').
go('vitamin transmembrane transport',is_a,'vitamin transport').
go('thiamine transmembrane transporter activity',is_a,'sulfur compound transmembrane transporter activity').
go('sulfur compound transmembrane transporter activity',is_a,'transmembrane transporter activity').
go('vitamin transport',is_a,'transport').
go('thiamine transmembrane transporter activity',part_of,'thiamine transmembrane transport').
go('thiamine transmembrane transport',is_a,'thiamine transport').
go('thiamine transmembrane transport',is_a,'azole transmembrane transport').
go('thiamine transport',is_a,'nitrogen compound transport').
go('thiamine transmembrane transport',is_a,'pyrimidine-containing compound transmembrane transport').
go('thiamine transport',is_a,'sulfur compound transport').
go('thiamine transmembrane transport',is_a,'vitamin transmembrane transport').
go('sulfur compound transport',is_a,'transport').
go('thiamine transport',is_a,'vitamin transport').
go('xenobiotic transmembrane transporter activity',is_a,'transmembrane transporter activity').
go('xenobiotic transmembrane transporter activity',part_of,'xenobiotic transport').
go('xenobiotic transport',is_a,'transport').
go('acetylcholine transport',is_a,'acetate ester transport').
go('acetylcholine transport',is_a,'nitrogen compound transport').
go('amine transport',is_a,'nitrogen compound transport').
go('epinephrine uptake',is_a,'transport').
go('establishment or maintenance of transmembrane electrochemical gradient',is_a,'monoatomic ion transmembrane transport').
go('metanephric proximal tubule development',is_a,'metanephric nephron tubule development').
go('metanephric proximal tubule development',is_a,'proximal tubule development').
go('metanephric nephron tubule development',is_a,'nephron tubule development').
go('proximal tubule development',is_a,'nephron tubule development').
go('metanephric nephron tubule development',is_a,'metanephric tubule development').
go('metanephric tubule development',is_a,'metanephric epithelium development').
go('metanephric epithelium development',is_a,'kidney epithelium development').
go('metanephric epithelium development',part_of,'metanephros development').
go('metanephric tubule development',is_a,'tube development').
go('metanephric nephron tubule development',is_a,'metanephric nephron epithelium development').
go('metanephric nephron epithelium development',is_a,'metanephric epithelium development').
go('metanephric nephron epithelium development',is_a,'nephron epithelium development').
go('O-acyl-L-carnitine transmembrane transport',is_a,'quaternary ammonium group transport').
go('O-acyl-L-carnitine transmembrane transport',is_a,'transmembrane transport').
go('purine-containing compound transmembrane transport',is_a,'nitrogen compound transport').
go('purine-containing compound transmembrane transport',is_a,'transmembrane transport').
go('serotonin uptake',is_a,'nitrogen compound transport').
go('serotonin uptake',is_a,'organic hydroxy compound transport').
go('serotonin uptake',is_a,'neurotransmitter reuptake').
go('neurotransmitter reuptake',is_a,'establishment of localization in cell').
go('neurotransmitter reuptake',is_a,'neurotransmitter uptake').
go('neurotransmitter uptake',is_a,'import into cell').
go('neurotransmitter uptake',is_a,'neurotransmitter transport').
go('neurotransmitter reuptake',occurs_in,'presynapse').
go('transport across blood-brain barrier',is_a,'vascular transport').
go('vascular transport',is_a,'transport').
go('vascular transport',is_a,'vascular process in circulatory system').
go('xenobiotic metabolic process',is_a,'metabolic process').
go('xenobiotic metabolic process',part_of,'cellular response to xenobiotic stimulus').
go('apical plasma membrane',is_a,'plasma membrane region').
go('apical plasma membrane',part_of,'apical part of cell').
go('apical part of cell',is_a,'cellular anatomical structure').
go('lateral plasma membrane',is_a,'cellular anatomical structure').
go('lateral plasma membrane',part_of,'plasma membrane').
leaf('TFCP2','cis-regulatory region sequence-specific DNA binding').
leaf('TFCP2','DNA binding').
leaf('TFCP2','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('TFCP2','DNA-binding transcription factor activity').
leaf('TFCP2','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('TFCP2','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('TFCP2','sequence-specific double-stranded DNA binding').
leaf('TFCP2','transcription factor binding').
fm('transcription factor binding').
leaf('TFCP2','mRNA transcription by RNA polymerase II').
leaf('TFCP2','positive regulation of transcription by RNA polymerase II').
leaf('TFCP2','regulation of transcription by RNA polymerase II').
leaf('TFCP2','chromatin').
leaf('TFCP2','nucleoplasm').
leaf('TFCP2','nucleus').
leaf('TFCP2','protein-containing complex').
leaf('TFCP2L1','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('TFCP2L1','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('TFCP2L1','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('TFCP2L1','sequence-specific double-stranded DNA binding').
leaf('TFCP2L1','regulation of transcription by RNA polymerase II').
leaf('TFCP2L1','chromatin').
leaf('TFCP2L1','cytoplasm').
leaf('TFCP2L1','membrane').
leaf('TFCP2L1','nucleus').
leaf('MYB','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('MYB','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('MYB','WD40-repeat domain binding').
fm('WD40-repeat domain binding').
leaf('MYB','cellular response to hydrogen peroxide').
bp('cellular response to hydrogen peroxide').
leaf('MYB','cellular response to retinoic acid').
bp('cellular response to retinoic acid').
leaf('MYB','erythrocyte differentiation').
leaf('MYB','mitotic cell cycle').
leaf('MYB','myeloid cell development').
leaf('MYB','negative regulation of DNA-templated transcription').
leaf('MYB','negative regulation of hematopoietic progenitor cell differentiation').
bp('negative regulation of hematopoietic progenitor cell differentiation').
leaf('MYB','negative regulation of megakaryocyte differentiation').
bp('negative regulation of megakaryocyte differentiation').
leaf('MYB','negative regulation of transcription by RNA polymerase II').
leaf('MYB','positive regulation of collagen biosynthetic process').
leaf('MYB','positive regulation of DNA-templated transcription').
leaf('MYB','positive regulation of glial cell proliferation').
leaf('MYB','positive regulation of hepatic stellate cell activation').
leaf('MYB','positive regulation of hepatic stellate cell proliferation').
bp('positive regulation of hepatic stellate cell proliferation').
leaf('MYB','positive regulation of miRNA transcription').
leaf('MYB','positive regulation of neuron apoptotic process').
bp('positive regulation of neuron apoptotic process').
leaf('MYB','positive regulation of smooth muscle cell proliferation').
bp('positive regulation of smooth muscle cell proliferation').
leaf('MYB','positive regulation of testosterone secretion').
bp('positive regulation of testosterone secretion').
leaf('MYB','positive regulation of transcription by RNA polymerase II').
leaf('MYB','positive regulation of transforming growth factor beta production').
bp('positive regulation of transforming growth factor beta production').
leaf('MYB','regulation of DNA-templated transcription').
leaf('MYB','response to hypoxia').
leaf('MYB','response to ischemia').
leaf('MYB','skeletal muscle cell proliferation').
bp('skeletal muscle cell proliferation').
leaf('MYB','T-helper 2 cell differentiation').
leaf('MYB','cytosol').
leaf('MYB','nuclear matrix').
leaf('MYB','nucleoplasm').
leaf('MYB','nucleus').
leaf('MYB','RNA polymerase II transcription regulator complex').
go('WD40-repeat domain binding',is_a,'protein domain specific binding').
go('cellular response to hydrogen peroxide',is_a,'cellular response to reactive oxygen species').
go('cellular response to hydrogen peroxide',is_a,'response to hydrogen peroxide').
go('response to hydrogen peroxide',is_a,'response to reactive oxygen species').
go('cellular response to retinoic acid',is_a,'cellular response to lipid').
go('cellular response to retinoic acid',is_a,'cellular response to oxygen-containing compound').
go('cellular response to retinoic acid',is_a,'response to retinoic acid').
go('negative regulation of hematopoietic progenitor cell differentiation',is_a,'negative regulation of cell differentiation').
go('negative regulation of hematopoietic progenitor cell differentiation',is_a,'regulation of hematopoietic progenitor cell differentiation').
go('regulation of hematopoietic progenitor cell differentiation',is_a,'regulation of cell differentiation').
go('regulation of hematopoietic progenitor cell differentiation',regulates,'hematopoietic progenitor cell differentiation').
go('negative regulation of megakaryocyte differentiation',is_a,'negative regulation of myeloid cell differentiation').
go('negative regulation of megakaryocyte differentiation',is_a,'regulation of megakaryocyte differentiation').
go('regulation of megakaryocyte differentiation',is_a,'regulation of myeloid cell differentiation').
go('regulation of megakaryocyte differentiation',regulates,'megakaryocyte differentiation').
go('positive regulation of hepatic stellate cell proliferation',is_a,'regulation of hepatic stellate cell proliferation').
go('positive regulation of hepatic stellate cell proliferation',is_a,'positive regulation of fibroblast proliferation').
go('regulation of hepatic stellate cell proliferation',is_a,'regulation of fibroblast proliferation').
go('regulation of hepatic stellate cell proliferation',regulates,'hepatic stellate cell proliferation').
go('hepatic stellate cell proliferation',is_a,'fibroblast proliferation').
go('positive regulation of neuron apoptotic process',is_a,'regulation of neuron apoptotic process').
go('regulation of neuron apoptotic process',is_a,'regulation of apoptotic process').
go('positive regulation of neuron apoptotic process',is_a,'positive regulation of apoptotic process').
go('regulation of neuron apoptotic process',regulates,'neuron apoptotic process').
go('neuron apoptotic process',is_a,'apoptotic process').
go('positive regulation of smooth muscle cell proliferation',is_a,'regulation of smooth muscle cell proliferation').
go('positive regulation of smooth muscle cell proliferation',is_a,'positive regulation of cell population proliferation').
go('regulation of smooth muscle cell proliferation',is_a,'regulation of cell population proliferation').
go('regulation of smooth muscle cell proliferation',regulates,'smooth muscle cell proliferation').
go('smooth muscle cell proliferation',is_a,'muscle cell proliferation').
go('positive regulation of testosterone secretion',is_a,'positive regulation of hormone secretion').
go('positive regulation of testosterone secretion',is_a,'regulation of testosterone secretion').
go('positive regulation of hormone secretion',is_a,'positive regulation of secretion by cell').
go('regulation of testosterone secretion',is_a,'regulation of hormone secretion').
go('positive regulation of hormone secretion',is_a,'regulation of hormone secretion').
go('positive regulation of hormone secretion',is_a,'positive regulation of signaling').
go('positive regulation of hormone secretion',is_a,'positive regulation of cell communication').
go('positive regulation of testosterone secretion',is_a,'positive regulation of lipid transport').
go('positive regulation of lipid transport',is_a,'regulation of lipid transport').
go('positive regulation of lipid transport',is_a,'positive regulation of lipid localization').
go('positive regulation of lipid localization',is_a,'regulation of lipid localization').
go('positive regulation of lipid localization',is_a,'positive regulation of biological process').
go('regulation of testosterone secretion',is_a,'regulation of lipid transport').
go('positive regulation of lipid transport',is_a,'positive regulation of transport').
go('regulation of testosterone secretion',regulates,'testosterone secretion').
go('testosterone secretion',is_a,'organic hydroxy compound transport').
go('testosterone secretion',is_a,'hormone secretion').
go('testosterone secretion',is_a,'lipid export from cell').
go('lipid export from cell',is_a,'export from cell').
go('lipid export from cell',is_a,'lipid transport').
go('positive regulation of transforming growth factor beta production',is_a,'positive regulation of cytokine production').
go('positive regulation of transforming growth factor beta production',is_a,'regulation of transforming growth factor beta production').
go('skeletal muscle cell proliferation',is_a,'striated muscle cell proliferation').
leaf('ZNF8','DNA binding').
leaf('ZNF8','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('ZNF8','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('ZNF8','zinc ion binding').
leaf('ZNF8','regulation of transcription by RNA polymerase II').
leaf('ZNF8','nucleus').
leaf('BTAF1','ATP binding').
leaf('BTAF1','ATP hydrolysis activity').
fm('ATP hydrolysis activity').
leaf('BTAF1','ATP-dependent activity, acting on DNA').
fm('ATP-dependent activity, acting on DNA').
leaf('BTAF1','DNA binding').
leaf('BTAF1','TBP-class protein binding').
fm('TBP-class protein binding').
leaf('BTAF1','transcription coregulator activity').
leaf('BTAF1','negative regulation of chromatin binding').
bp('negative regulation of chromatin binding').
leaf('BTAF1','negative regulation of DNA-templated transcription').
leaf('BTAF1','nucleoplasm').
go('ATP hydrolysis activity',is_a,'ribonucleoside triphosphate phosphatase activity').
go('ATP hydrolysis activity',part_of,'ATP-dependent activity').
go('ATP-dependent activity',is_a,'molecular_function').
go('ATP-dependent activity, acting on DNA',is_a,'ATP-dependent activity').
go('ATP-dependent activity, acting on DNA',is_a,'catalytic activity, acting on DNA').
go('catalytic activity, acting on DNA',is_a,'catalytic activity, acting on a nucleic acid').
go('TBP-class protein binding',is_a,'general transcription initiation factor binding').
go('general transcription initiation factor binding',is_a,'transcription factor binding').
go('negative regulation of chromatin binding',is_a,'negative regulation of binding').
leaf('TAF1','histone acetyltransferase activity').
leaf('TAF1','histone H4K16ac reader activity').
fm('histone H4K16ac reader activity').
leaf('TAF1','kinase activity').
fm('kinase activity').
leaf('TAF1','nuclear receptor binding').
fm('nuclear receptor binding').
leaf('TAF1','p53 binding').
leaf('TAF1','protein heterodimerization activity').
leaf('TAF1','protein kinase activity').
leaf('TAF1','protein serine kinase activity').
leaf('TAF1','protein serine/threonine kinase activity').
leaf('TAF1','protein-lysine-acetyltransferase activity').
leaf('TAF1','RNA polymerase I general transcription initiation factor activity').
fm('RNA polymerase I general transcription initiation factor activity').
leaf('TAF1','RNA polymerase II core promoter sequence-specific DNA binding').
leaf('TAF1','RNA polymerase II general transcription initiation factor activity').
fm('RNA polymerase II general transcription initiation factor activity').
leaf('TAF1','RNA polymerase II general transcription initiation factor binding').
fm('RNA polymerase II general transcription initiation factor binding').
leaf('TAF1','RNA polymerase II-specific DNA-binding transcription factor binding').
leaf('TAF1','sequence-specific DNA binding').
leaf('TAF1','TBP-class protein binding').
leaf('TAF1','transcription regulator inhibitor activity').
leaf('TAF1','ubiquitin conjugating enzyme activity').
fm('ubiquitin conjugating enzyme activity').
leaf('TAF1','cellular response to ATP').
bp('cellular response to ATP').
leaf('TAF1','cellular response to UV').
leaf('TAF1','DNA damage response').
leaf('TAF1','midbrain development').
bp('midbrain development').
leaf('TAF1','mRNA transcription by RNA polymerase II').
leaf('TAF1','negative regulation of gene expression').
leaf('TAF1','negative regulation of protein autoubiquitination').
bp('negative regulation of protein autoubiquitination').
leaf('TAF1','negative regulation of signal transduction by p53 class mediator').
bp('negative regulation of signal transduction by p53 class mediator').
leaf('TAF1','negative regulation of transcription by RNA polymerase II').
leaf('TAF1','negative regulation of ubiquitin-dependent protein catabolic process').
bp('negative regulation of ubiquitin-dependent protein catabolic process').
leaf('TAF1','positive regulation of androgen receptor signaling pathway').
bp('positive regulation of androgen receptor signaling pathway').
leaf('TAF1','positive regulation of proteasomal ubiquitin-dependent protein catabolic process').
leaf('TAF1','positive regulation of transcription by RNA polymerase II').
leaf('TAF1','positive regulation of transcription initiation by RNA polymerase II').
leaf('TAF1','protein autophosphorylation').
leaf('TAF1','protein polyubiquitination').
bp('protein polyubiquitination').
leaf('TAF1','protein stabilization').
leaf('TAF1','regulation of cell cycle G1/S phase transition').
bp('regulation of cell cycle G1/S phase transition').
leaf('TAF1','regulation of signal transduction by p53 class mediator').
leaf('TAF1','RNA polymerase II preinitiation complex assembly').
bp('RNA polymerase II preinitiation complex assembly').
leaf('TAF1','transcription by RNA polymerase II').
leaf('TAF1','transcription initiation at RNA polymerase I promoter').
bp('transcription initiation at RNA polymerase I promoter').
leaf('TAF1','transcription initiation at RNA polymerase II promoter').
leaf('TAF1','ubiquitin-dependent protein catabolic process').
bp('ubiquitin-dependent protein catabolic process').
leaf('TAF1','chromatin').
leaf('TAF1','MLL1 complex').
leaf('TAF1','nucleoplasm').
leaf('TAF1','nucleus').
leaf('TAF1','transcription factor TFIID complex').
cc('transcription factor TFIID complex').
leaf('TAF1','transcription regulator complex').
go('histone H4K16ac reader activity',is_a,'histone H4 reader activity').
go('histone H4 reader activity',is_a,'histone reader activity').
go('histone reader activity',is_a,'chromatin-protein adaptor activity').
go('chromatin-protein adaptor activity',is_a,'protein-macromolecule adaptor activity').
go('chromatin-protein adaptor activity',part_of,'chromatin organization').
go('histone reader activity',occurs_in,'nucleosome').
go('nucleosome',is_a,'protein-DNA complex').
go('nucleosome',part_of,'chromatin').
go('nuclear receptor binding',is_a,'RNA polymerase II-specific DNA-binding transcription factor binding').
go('RNA polymerase I general transcription initiation factor activity',is_a,'general transcription initiation factor activity').
go('general transcription initiation factor activity',is_a,'molecular_function').
go('general transcription initiation factor activity',part_of,'DNA-templated transcription').
go('RNA polymerase I general transcription initiation factor activity',part_of,'transcription by RNA polymerase I').
go('RNA polymerase II general transcription initiation factor activity',is_a,'general transcription initiation factor activity').
go('RNA polymerase II general transcription initiation factor activity',part_of,'transcription by RNA polymerase II').
go('RNA polymerase II general transcription initiation factor binding',is_a,'RNA polymerase II complex binding').
go('RNA polymerase II general transcription initiation factor binding',is_a,'general transcription initiation factor binding').
go('RNA polymerase II complex binding',is_a,'RNA polymerase core enzyme binding').
go('RNA polymerase core enzyme binding',is_a,'RNA polymerase binding').
go('RNA polymerase binding',is_a,'enzyme binding').
go('ubiquitin conjugating enzyme activity',is_a,'ubiquitin-like protein conjugating enzyme activity').
go('ubiquitin conjugating enzyme activity',is_a,'ubiquitin-protein transferase activity').
go('ubiquitin-like protein conjugating enzyme activity',is_a,'ubiquitin-like protein transferase activity').
go('cellular response to ATP',is_a,'response to ATP').
go('cellular response to ATP',is_a,'cellular response to nitrogen compound').
go('response to ATP',is_a,'response to purine-containing compound').
go('cellular response to ATP',is_a,'cellular response to oxygen-containing compound').
go('response to ATP',is_a,'response to organophosphorus').
go('response to ATP',is_a,'response to oxygen-containing compound').
go('negative regulation of protein autoubiquitination',is_a,'regulation of protein autoubiquitination').
go('negative regulation of protein autoubiquitination',is_a,'negative regulation of protein ubiquitination').
go('regulation of protein autoubiquitination',is_a,'regulation of protein ubiquitination').
go('regulation of protein autoubiquitination',regulates,'protein autoubiquitination').
go('protein autoubiquitination',is_a,'protein ubiquitination').
go('negative regulation of signal transduction by p53 class mediator',is_a,'negative regulation of intracellular signal transduction').
go('negative regulation of signal transduction by p53 class mediator',is_a,'regulation of signal transduction by p53 class mediator').
go('negative regulation of ubiquitin-dependent protein catabolic process',is_a,'regulation of ubiquitin-dependent protein catabolic process').
go('negative regulation of ubiquitin-dependent protein catabolic process',is_a,'negative regulation of protein catabolic process').
go('positive regulation of androgen receptor signaling pathway',is_a,'positive regulation of intracellular steroid hormone receptor signaling pathway').
go('positive regulation of androgen receptor signaling pathway',is_a,'regulation of androgen receptor signaling pathway').
go('positive regulation of intracellular steroid hormone receptor signaling pathway',is_a,'regulation of intracellular steroid hormone receptor signaling pathway').
go('positive regulation of intracellular steroid hormone receptor signaling pathway',is_a,'positive regulation of intracellular signal transduction').
go('protein polyubiquitination',is_a,'protein ubiquitination').
go('RNA polymerase II preinitiation complex assembly',is_a,'transcription preinitiation complex assembly').
go('transcription preinitiation complex assembly',is_a,'protein-DNA complex assembly').
go('transcription preinitiation complex assembly',part_of,'DNA-templated transcription initiation').
go('RNA polymerase II preinitiation complex assembly',part_of,'transcription initiation at RNA polymerase II promoter').
go('transcription initiation at RNA polymerase I promoter',is_a,'DNA-templated transcription initiation').
go('transcription initiation at RNA polymerase I promoter',part_of,'transcription by RNA polymerase I').
go('transcription factor TFIID complex',is_a,'RNA polymerase II transcription regulator complex').
go('transcription factor TFIID complex',part_of,'RNA polymerase II, holoenzyme').
go('RNA polymerase II, holoenzyme',is_a,'nuclear DNA-directed RNA polymerase complex').
go('nuclear DNA-directed RNA polymerase complex',is_a,'nuclear protein-containing complex').
go('nuclear DNA-directed RNA polymerase complex',is_a,'DNA-directed RNA polymerase complex').
go('DNA-directed RNA polymerase complex',is_a,'RNA polymerase complex').
go('RNA polymerase complex',is_a,'transferase complex, transferring phosphorus-containing groups').
go('RNA polymerase complex',is_a,'intracellular protein-containing complex').
go('nuclear DNA-directed RNA polymerase complex',part_of,'nucleoplasm').
leaf('TAF1A','regulation of DNA-templated transcription').
leaf('TAF1A','transcription by RNA polymerase I').
leaf('TAF1A','transcription by RNA polymerase II').
leaf('TAF1A','nucleoplasm').
leaf('TAF1A','RNA polymerase transcription factor SL1 complex').
cc('RNA polymerase transcription factor SL1 complex').
go('RNA polymerase transcription factor SL1 complex',is_a,'RNA polymerase I transcription regulator complex').
go('RNA polymerase I transcription regulator complex',is_a,'nuclear protein-containing complex').
go('RNA polymerase I transcription regulator complex',is_a,'transcription regulator complex').
go('RNA polymerase I transcription regulator complex',part_of,'nucleolus').
leaf('TAF1B','RNA polymerase I core promoter sequence-specific DNA binding').
fm('RNA polymerase I core promoter sequence-specific DNA binding').
leaf('TAF1B','TBP-class protein binding').
leaf('TAF1B','DNA-templated transcription').
leaf('TAF1B','nucleolar large rRNA transcription by RNA polymerase I').
bp('nucleolar large rRNA transcription by RNA polymerase I').
leaf('TAF1B','regulation of DNA-templated transcription').
leaf('TAF1B','RNA polymerase I preinitiation complex assembly').
bp('RNA polymerase I preinitiation complex assembly').
leaf('TAF1B','nucleolus').
leaf('TAF1B','nucleoplasm').
leaf('TAF1B','nucleus').
leaf('TAF1B','RNA polymerase I core factor complex').
cc('RNA polymerase I core factor complex').
leaf('TAF1B','RNA polymerase transcription factor SL1 complex').
go('RNA polymerase I core promoter sequence-specific DNA binding',is_a,'core promoter sequence-specific DNA binding').
go('RNA polymerase I core promoter sequence-specific DNA binding',is_a,'RNA polymerase I transcription regulatory region sequence-specific DNA binding').
go('RNA polymerase I core promoter sequence-specific DNA binding',part_of,'RNA polymerase I preinitiation complex assembly').
go('RNA polymerase I preinitiation complex assembly',is_a,'transcription preinitiation complex assembly').
go('RNA polymerase I preinitiation complex assembly',part_of,'transcription initiation at RNA polymerase I promoter').
go('RNA polymerase I core factor complex',is_a,'RNA polymerase I transcription regulator complex').
leaf('TAF1C','RNA polymerase I core promoter sequence-specific DNA binding').
leaf('TAF1C','RNA polymerase I general transcription initiation factor activity').
leaf('TAF1C','regulation of DNA-templated transcription').
leaf('TAF1C','transcription by RNA polymerase I').
leaf('TAF1C','transcription by RNA polymerase II').
leaf('TAF1C','transcription initiation at RNA polymerase I promoter').
leaf('TAF1C','fibrillar center').
cc('fibrillar center').
leaf('TAF1C','nucleolus').
leaf('TAF1C','nucleoplasm').
leaf('TAF1C','RNA polymerase I core factor complex').
leaf('TAF1C','RNA polymerase transcription factor SL1 complex').
go('fibrillar center',is_a,'cellular anatomical structure').
go('fibrillar center',part_of,'nucleolus').
leaf('TAF1D','identical protein binding').
leaf('TAF1D','regulation of DNA-templated transcription').
leaf('TAF1D','nucleoplasm').
leaf('TAF1D','RNA polymerase transcription factor SL1 complex').
leaf('TAF1L','DNA binding').
leaf('TAF1L','histone acetyltransferase activity').
leaf('TAF1L','histone reader activity').
fm('histone reader activity').
leaf('TAF1L','protein serine/threonine kinase activity').
leaf('TAF1L','RNA polymerase II general transcription initiation factor activity').
leaf('TAF1L','TBP-class protein binding').
leaf('TAF1L','male meiotic nuclear division').
bp('male meiotic nuclear division').
leaf('TAF1L','positive regulation of DNA-templated transcription').
leaf('TAF1L','regulation of transcription by RNA polymerase II').
leaf('TAF1L','RNA polymerase II preinitiation complex assembly').
leaf('TAF1L','nucleoplasm').
leaf('TAF1L','transcription factor TFIID complex').
go('male meiotic nuclear division',is_a,'meiotic nuclear division').
go('meiotic nuclear division',is_a,'nuclear division').
go('meiotic nuclear division',is_a,'meiotic cell cycle process').
go('meiotic cell cycle process',is_a,'cell cycle process').
go('meiotic cell cycle process',is_a,'reproductive process').
go('meiotic cell cycle process',part_of,'meiotic cell cycle').
go('meiotic cell cycle',is_a,'reproductive process').
go('meiotic cell cycle',is_a,'cell cycle').
go('meiotic cell cycle',part_of,'sexual reproduction').
go('meiotic nuclear division',part_of,'meiotic cell cycle').
go('male meiotic nuclear division',part_of,'male gamete generation').
go('male meiotic nuclear division',part_of,'meiotic cell cycle').
leaf('TAF2','chromatin binding').
leaf('TAF2','RNA polymerase II general transcription initiation factor activity').
leaf('TAF2','transcription cis-regulatory region binding').
leaf('TAF2','G2/M transition of mitotic cell cycle').
bp('G2/M transition of mitotic cell cycle').
leaf('TAF2','mRNA transcription by RNA polymerase II').
leaf('TAF2','positive regulation of DNA-templated transcription').
leaf('TAF2','positive regulation of transcription initiation by RNA polymerase II').
leaf('TAF2','regulation of DNA repair').
bp('regulation of DNA repair').
leaf('TAF2','regulation of transcription by RNA polymerase II').
leaf('TAF2','response to paraquat').
bp('response to paraquat').
leaf('TAF2','RNA polymerase II preinitiation complex assembly').
leaf('TAF2','transcription initiation at RNA polymerase II promoter').
leaf('TAF2','nucleoplasm').
leaf('TAF2','nucleus').
leaf('TAF2','transcription factor TFIID complex').
leaf('TAF2','transcription factor TFTC complex').
cc('transcription factor TFTC complex').
go('response to paraquat',is_a,'response to chemical').
go('transcription factor TFTC complex',is_a,'RNA polymerase II transcription regulator complex').
go('transcription factor TFTC complex',is_a,'SAGA-type complex').
go('SAGA-type complex',is_a,'histone acetyltransferase complex').
go('transcription factor TFTC complex',part_of,'RNA polymerase II, holoenzyme').
leaf('TAF3','histone H3K4me3 reader activity').
fm('histone H3K4me3 reader activity').
leaf('TAF3','p53 binding').
leaf('TAF3','protein heterodimerization activity').
leaf('TAF3','RNA polymerase II general transcription initiation factor activity').
leaf('TAF3','transcription regulator inhibitor activity').
leaf('TAF3','maintenance of protein location in nucleus').
bp('maintenance of protein location in nucleus').
leaf('TAF3','mRNA transcription by RNA polymerase II').
leaf('TAF3','negative regulation of signal transduction by p53 class mediator').
leaf('TAF3','negative regulation of transcription by RNA polymerase II').
leaf('TAF3','positive regulation of transcription by RNA polymerase II').
leaf('TAF3','positive regulation of transcription initiation by RNA polymerase II').
leaf('TAF3','RNA polymerase II preinitiation complex assembly').
leaf('TAF3','nuclear membrane').
leaf('TAF3','nucleoplasm').
leaf('TAF3','nucleus').
leaf('TAF3','transcription factor TFIID complex').
go('histone H3K4me3 reader activity',is_a,'histone H3 reader activity').
go('histone H3 reader activity',is_a,'histone reader activity').
go('maintenance of protein location in nucleus',is_a,'maintenance of protein localization in organelle').
go('maintenance of protein localization in organelle',is_a,'maintenance of protein location in cell').
go('maintenance of protein localization in organelle',part_of,'protein localization to organelle').
go('maintenance of protein localization in organelle',occurs_in,'organelle').
go('maintenance of protein location in nucleus',part_of,'protein localization to nucleus').
go('maintenance of protein location in nucleus',occurs_in,'nucleus').
leaf('TAF4','obsolete aryl hydrocarbon receptor binding').
fm('obsolete aryl hydrocarbon receptor binding').
leaf('TAF4','DNA binding').
leaf('TAF4','protein heterodimerization activity').
leaf('TAF4','DNA-templated transcription initiation').
bp('DNA-templated transcription initiation').
leaf('TAF4','mRNA transcription by RNA polymerase II').
leaf('TAF4','positive regulation of DNA-templated transcription').
leaf('TAF4','positive regulation of transcription initiation by RNA polymerase II').
leaf('TAF4','regulation of DNA repair').
leaf('TAF4','regulation of transcription by RNA polymerase II').
leaf('TAF4','RNA polymerase II preinitiation complex assembly').
leaf('TAF4','transcription by RNA polymerase II').
leaf('TAF4','transcription initiation at RNA polymerase II promoter').
leaf('TAF4','chromatin').
leaf('TAF4','MLL1 complex').
leaf('TAF4','nucleoplasm').
leaf('TAF4','nucleus').
leaf('TAF4','protein-containing complex').
leaf('TAF4','transcription factor TFIID complex').
leaf('TAF4','transcription factor TFTC complex').
leaf('TAF4B','DNA binding').
leaf('TAF4B','NF-kappaB binding').
fm('NF-kappaB binding').
leaf('TAF4B','protein heterodimerization activity').
leaf('TAF4B','RNA polymerase II general transcription initiation factor activity').
leaf('TAF4B','mRNA transcription by RNA polymerase II').
leaf('TAF4B','positive regulation of transcription initiation by RNA polymerase II').
leaf('TAF4B','transcription initiation at RNA polymerase II promoter').
leaf('TAF4B','cytoplasm').
leaf('TAF4B','fibrillar center').
leaf('TAF4B','nucleoplasm').
leaf('TAF4B','nucleus').
leaf('TAF4B','transcription factor TFIID complex').
go('NF-kappaB binding',is_a,'RNA polymerase II-specific DNA-binding transcription factor binding').
leaf('TAF5','identical protein binding').
leaf('TAF5','RNA polymerase II general transcription initiation factor activity').
leaf('TAF5','DNA-templated transcription initiation').
leaf('TAF5','mRNA transcription by RNA polymerase II').
leaf('TAF5','positive regulation of DNA-templated transcription').
leaf('TAF5','positive regulation of transcription initiation by RNA polymerase II').
leaf('TAF5','regulation of DNA repair').
leaf('TAF5','regulation of transcription by RNA polymerase II').
leaf('TAF5','RNA polymerase II preinitiation complex assembly').
leaf('TAF5','transcription initiation at RNA polymerase II promoter').
leaf('TAF5','chromatin').
leaf('TAF5','nucleoplasm').
leaf('TAF5','nucleus').
leaf('TAF5','transcription factor TFIID complex').
leaf('TAF5','transcription factor TFTC complex').
leaf('TAF5L','transcription coactivator activity').
leaf('TAF5L','positive regulation of DNA-templated transcription').
leaf('TAF5L','regulation of DNA repair').
leaf('TAF5L','regulation of DNA-templated transcription').
leaf('TAF5L','regulation of RNA splicing').
bp('regulation of RNA splicing').
leaf('TAF5L','regulation of somatic stem cell population maintenance').
leaf('TAF5L','regulation of transcription by RNA polymerase II').
leaf('TAF5L','transcription by RNA polymerase II').
leaf('TAF5L','nuclear speck').
leaf('TAF5L','nucleus').
leaf('TAF5L','SAGA complex').
cc('SAGA complex').
leaf('TAF5L','transcription factor TFTC complex').
go('SAGA complex',is_a,'peptidase complex').
go('SAGA complex',is_a,'SAGA-type complex').
go('peptidase complex',is_a,'catalytic complex').
leaf('TAF6','obsolete aryl hydrocarbon receptor binding').
leaf('TAF6','DNA binding').
leaf('TAF6','protein heterodimerization activity').
leaf('TAF6','RNA polymerase II general transcription initiation factor activity').
leaf('TAF6','transcription coactivator activity').
leaf('TAF6','DNA-templated transcription initiation').
leaf('TAF6','mRNA transcription by RNA polymerase II').
leaf('TAF6','negative regulation of cell cycle').
leaf('TAF6','negative regulation of cell population proliferation').
leaf('TAF6','positive regulation of apoptotic process').
leaf('TAF6','positive regulation of DNA-templated transcription').
leaf('TAF6','positive regulation of intrinsic apoptotic signaling pathway').
bp('positive regulation of intrinsic apoptotic signaling pathway').
leaf('TAF6','positive regulation of transcription initiation by RNA polymerase II').
leaf('TAF6','regulation of DNA repair').
leaf('TAF6','regulation of transcription by RNA polymerase II').
leaf('TAF6','RNA polymerase II preinitiation complex assembly').
leaf('TAF6','transcription by RNA polymerase II').
leaf('TAF6','transcription initiation at RNA polymerase II promoter').
leaf('TAF6','MLL1 complex').
leaf('TAF6','nucleoplasm').
leaf('TAF6','nucleus').
leaf('TAF6','protein-containing complex').
leaf('TAF6','SAGA complex').
leaf('TAF6','SLIK (SAGA-like) complex').
cc('SLIK (SAGA-like) complex').
leaf('TAF6','transcription factor TFIID complex').
leaf('TAF6','transcription factor TFTC complex').
go('SLIK (SAGA-like) complex',is_a,'SAGA-type complex').
leaf('TAF6L','DNA binding').
leaf('TAF6L','protein heterodimerization activity').
leaf('TAF6L','RNA polymerase II general transcription initiation factor activity').
leaf('TAF6L','transcription coactivator activity').
leaf('TAF6L','chromatin remodeling').
leaf('TAF6L','positive regulation of DNA-templated transcription').
leaf('TAF6L','regulation of DNA repair').
leaf('TAF6L','regulation of DNA-templated transcription').
leaf('TAF6L','regulation of RNA splicing').
leaf('TAF6L','regulation of somatic stem cell population maintenance').
leaf('TAF6L','regulation of transcription by RNA polymerase II').
leaf('TAF6L','RNA polymerase II preinitiation complex assembly').
leaf('TAF6L','extracellular exosome').
leaf('TAF6L','histone deacetylase complex').
cc('histone deacetylase complex').
leaf('TAF6L','nucleoplasm').
leaf('TAF6L','nucleus').
leaf('TAF6L','SAGA complex').
leaf('TAF6L','SLIK (SAGA-like) complex').
leaf('TAF6L','transcription factor TFIID complex').
leaf('TAF7','DNA-binding transcription factor binding').
leaf('TAF7','histone acetyltransferase binding').
leaf('TAF7','obsolete nuclear thyroid hormone receptor binding').
fm('obsolete nuclear thyroid hormone receptor binding').
leaf('TAF7','obsolete nuclear vitamin D receptor binding').
fm('obsolete nuclear vitamin D receptor binding').
leaf('TAF7','P-TEFb complex binding').
fm('P-TEFb complex binding').
leaf('TAF7','protein heterodimerization activity').
leaf('TAF7','RNA polymerase II general transcription initiation factor activity').
leaf('TAF7','TFIIH-class transcription factor complex binding').
fm('TFIIH-class transcription factor complex binding').
leaf('TAF7','transcription cis-regulatory region binding').
leaf('TAF7','chromatin organization').
leaf('TAF7','DNA-templated transcription initiation').
leaf('TAF7','mRNA transcription by RNA polymerase II').
leaf('TAF7','negative regulation of DNA-templated transcription').
leaf('TAF7','negative regulation of MHC class I biosynthetic process').
bp('negative regulation of MHC class I biosynthetic process').
leaf('TAF7','negative regulation of MHC class II biosynthetic process').
bp('negative regulation of MHC class II biosynthetic process').
leaf('TAF7','negative regulation of protein kinase activity').
bp('negative regulation of protein kinase activity').
leaf('TAF7','negative regulation of transcription by RNA polymerase II').
leaf('TAF7','positive regulation of DNA-templated transcription').
leaf('TAF7','positive regulation of transcription by RNA polymerase II').
leaf('TAF7','positive regulation of transcription initiation by RNA polymerase II').
leaf('TAF7','regulation of DNA repair').
leaf('TAF7','regulation of transcription by RNA polymerase II').
leaf('TAF7','RNA polymerase II preinitiation complex assembly').
leaf('TAF7','spermine transport').
bp('spermine transport').
leaf('TAF7','transcription by RNA polymerase II').
leaf('TAF7','transcription initiation at RNA polymerase II promoter').
leaf('TAF7','cytoplasm').
leaf('TAF7','MLL1 complex').
leaf('TAF7','nucleoplasm').
leaf('TAF7','nucleus').
leaf('TAF7','transcription factor TFIID complex').
leaf('TAF7','transcription factor TFTC complex').
leaf('TAF7','transcription regulator complex').
go('P-TEFb complex binding',is_a,'protein-containing complex binding').
go('TFIIH-class transcription factor complex binding',is_a,'RNA polymerase II general transcription initiation factor binding').
go('negative regulation of MHC class I biosynthetic process',is_a,'negative regulation of macromolecule biosynthetic process').
go('negative regulation of MHC class I biosynthetic process',is_a,'regulation of MHC class I biosynthetic process').
go('regulation of MHC class I biosynthetic process',is_a,'regulation of macromolecule biosynthetic process').
go('regulation of MHC class I biosynthetic process',regulates,'MHC class I biosynthetic process').
go('MHC class I biosynthetic process',is_a,'macromolecule biosynthetic process').
go('negative regulation of MHC class II biosynthetic process',is_a,'regulation of MHC class II biosynthetic process').
go('negative regulation of MHC class II biosynthetic process',is_a,'negative regulation of macromolecule biosynthetic process').
go('regulation of MHC class II biosynthetic process',is_a,'regulation of macromolecule biosynthetic process').
go('regulation of MHC class II biosynthetic process',regulates,'MHC class II biosynthetic process').
go('MHC class II biosynthetic process',is_a,'macromolecule biosynthetic process').
go('negative regulation of protein kinase activity',is_a,'negative regulation of kinase activity').
go('negative regulation of protein kinase activity',is_a,'regulation of protein kinase activity').
go('regulation of protein kinase activity',is_a,'regulation of protein phosphorylation').
go('negative regulation of kinase activity',is_a,'regulation of kinase activity').
go('regulation of protein kinase activity',is_a,'regulation of kinase activity').
go('regulation of protein kinase activity',regulates,'protein kinase activity').
go('negative regulation of kinase activity',is_a,'negative regulation of catalytic activity').
go('negative regulation of catalytic activity',is_a,'negative regulation of molecular function').
go('negative regulation of protein kinase activity',is_a,'negative regulation of protein phosphorylation').
go('negative regulation of protein phosphorylation',is_a,'negative regulation of phosphorylation').
go('negative regulation of catalytic activity',is_a,'regulation of catalytic activity').
go('negative regulation of phosphorylation',is_a,'regulation of phosphorylation').
go('negative regulation of kinase activity',is_a,'negative regulation of phosphorylation').
go('negative regulation of phosphorylation',is_a,'negative regulation of phosphate metabolic process').
go('negative regulation of phosphate metabolic process',is_a,'negative regulation of metabolic process').
go('negative regulation of protein phosphorylation',is_a,'regulation of protein phosphorylation').
go('negative regulation of protein phosphorylation',is_a,'negative regulation of protein modification process').
go('spermine transport',is_a,'polyamine transport').
leaf('TAF7L','RNA polymerase II preinitiation complex assembly').
leaf('TAF7L','cytoplasm').
leaf('TAF7L','transcription factor TFIID complex').
leaf('TAF8','protein heterodimerization activity').
leaf('TAF8','RNA polymerase II general transcription initiation factor activity').
leaf('TAF8','DNA-templated transcription open complex formation').
bp('DNA-templated transcription open complex formation').
leaf('TAF8','maintenance of protein location in nucleus').
leaf('TAF8','mRNA transcription by RNA polymerase II').
leaf('TAF8','positive regulation of transcription initiation by RNA polymerase II').
leaf('TAF8','regulation of fat cell differentiation').
bp('regulation of fat cell differentiation').
leaf('TAF8','RNA polymerase II preinitiation complex assembly').
leaf('TAF8','transcription initiation at RNA polymerase II promoter').
leaf('TAF8','cytoplasm').
leaf('TAF8','nucleoplasm').
leaf('TAF8','nucleus').
leaf('TAF8','perinuclear region of cytoplasm').
leaf('TAF8','transcription factor TFIID complex').
go('DNA-templated transcription open complex formation',is_a,'protein-DNA complex remodeling').
go('protein-DNA complex remodeling',is_a,'protein-containing complex remodeling').
go('protein-DNA complex remodeling',is_a,'protein-DNA complex organization').
go('protein-containing complex remodeling',is_a,'protein-containing complex organization').
go('DNA-templated transcription open complex formation',part_of,'DNA-templated transcription initiation').
leaf('TAF9','ATPase binding').
leaf('TAF9','C2H2 zinc finger domain binding').
leaf('TAF9','DNA binding').
leaf('TAF9','DNA-binding transcription factor binding').
leaf('TAF9','p53 binding').
leaf('TAF9','protein heterodimerization activity').
leaf('TAF9','RNA polymerase II general transcription initiation factor activity').
leaf('TAF9','transcription cis-regulatory region binding').
leaf('TAF9','transcription coactivator activity').
leaf('TAF9','box C/D snoRNP assembly').
bp('box C/D snoRNP assembly').
leaf('TAF9','chromatin remodeling').
leaf('TAF9','DNA damage response').
leaf('TAF9','mRNA transcription by RNA polymerase II').
leaf('TAF9','negative regulation of apoptotic process').
leaf('TAF9','negative regulation of intrinsic apoptotic signaling pathway in response to DNA damage by p53 class mediator').
bp('negative regulation of intrinsic apoptotic signaling pathway in response to DNA damage by p53 class mediator').
leaf('TAF9','negative regulation of proteasomal ubiquitin-dependent protein catabolic process').
bp('negative regulation of proteasomal ubiquitin-dependent protein catabolic process').
leaf('TAF9','positive regulation of DNA-templated transcription').
leaf('TAF9','positive regulation of response to cytokine stimulus').
bp('positive regulation of response to cytokine stimulus').
leaf('TAF9','positive regulation of transcription by RNA polymerase II').
leaf('TAF9','positive regulation of transcription initiation by RNA polymerase II').
leaf('TAF9','protein stabilization').
leaf('TAF9','regulation of DNA repair').
leaf('TAF9','regulation of DNA-templated transcription').
leaf('TAF9','regulation of RNA splicing').
leaf('TAF9','regulation of transcription by RNA polymerase II').
leaf('TAF9','response to interleukin-1').
bp('response to interleukin-1').
leaf('TAF9','RNA polymerase II preinitiation complex assembly').
leaf('TAF9','MLL1 complex').
leaf('TAF9','nucleoplasm').
leaf('TAF9','nucleus').
leaf('TAF9','pre-snoRNP complex').
cc('pre-snoRNP complex').
leaf('TAF9','SAGA complex').
leaf('TAF9','transcription factor TFIID complex').
leaf('TAF9','transcription factor TFTC complex').
go('box C/D snoRNP assembly',is_a,'small nucleolar ribonucleoprotein complex assembly').
go('small nucleolar ribonucleoprotein complex assembly',is_a,'protein-RNA complex assembly').
go('negative regulation of intrinsic apoptotic signaling pathway in response to DNA damage by p53 class mediator',is_a,'negative regulation of intrinsic apoptotic signaling pathway by p53 class mediator').
go('negative regulation of intrinsic apoptotic signaling pathway in response to DNA damage by p53 class mediator',is_a,'regulation of intrinsic apoptotic signaling pathway in response to DNA damage by p53 class mediator').
go('negative regulation of intrinsic apoptotic signaling pathway by p53 class mediator',is_a,'regulation of intrinsic apoptotic signaling pathway by p53 class mediator').
go('regulation of intrinsic apoptotic signaling pathway in response to DNA damage by p53 class mediator',is_a,'regulation of intrinsic apoptotic signaling pathway in response to DNA damage').
go('regulation of intrinsic apoptotic signaling pathway in response to DNA damage',is_a,'regulation of intrinsic apoptotic signaling pathway').
go('regulation of intrinsic apoptotic signaling pathway in response to DNA damage',is_a,'regulation of cellular response to stress').
go('regulation of intrinsic apoptotic signaling pathway in response to DNA damage',regulates,'intrinsic apoptotic signaling pathway in response to DNA damage').
go('regulation of intrinsic apoptotic signaling pathway in response to DNA damage by p53 class mediator',is_a,'regulation of intrinsic apoptotic signaling pathway by p53 class mediator').
go('regulation of intrinsic apoptotic signaling pathway in response to DNA damage by p53 class mediator',regulates,'intrinsic apoptotic signaling pathway in response to DNA damage by p53 class mediator').
go('intrinsic apoptotic signaling pathway in response to DNA damage by p53 class mediator',is_a,'intrinsic apoptotic signaling pathway by p53 class mediator').
go('negative regulation of intrinsic apoptotic signaling pathway by p53 class mediator',is_a,'negative regulation of intrinsic apoptotic signaling pathway').
go('intrinsic apoptotic signaling pathway in response to DNA damage by p53 class mediator',is_a,'intrinsic apoptotic signaling pathway in response to DNA damage').
go('negative regulation of intrinsic apoptotic signaling pathway in response to DNA damage by p53 class mediator',is_a,'negative regulation of intrinsic apoptotic signaling pathway in response to DNA damage').
go('negative regulation of intrinsic apoptotic signaling pathway in response to DNA damage',is_a,'negative regulation of intrinsic apoptotic signaling pathway').
go('negative regulation of intrinsic apoptotic signaling pathway in response to DNA damage',is_a,'regulation of intrinsic apoptotic signaling pathway in response to DNA damage').
go('negative regulation of intrinsic apoptotic signaling pathway by p53 class mediator',is_a,'negative regulation of signal transduction by p53 class mediator').
go('negative regulation of proteasomal ubiquitin-dependent protein catabolic process',is_a,'regulation of proteasomal ubiquitin-dependent protein catabolic process').
go('negative regulation of proteasomal ubiquitin-dependent protein catabolic process',is_a,'negative regulation of proteasomal protein catabolic process').
go('negative regulation of proteasomal protein catabolic process',is_a,'negative regulation of protein catabolic process').
go('negative regulation of proteasomal protein catabolic process',is_a,'regulation of proteasomal protein catabolic process').
go('negative regulation of proteasomal ubiquitin-dependent protein catabolic process',is_a,'negative regulation of ubiquitin-dependent protein catabolic process').
go('positive regulation of response to cytokine stimulus',is_a,'positive regulation of response to stimulus').
go('positive regulation of response to cytokine stimulus',is_a,'regulation of response to cytokine stimulus').
go('pre-snoRNP complex',is_a,'ribonucleoprotein complex').
leaf('TAF9B','protein heterodimerization activity').
leaf('TAF9B','RNA polymerase II general transcription initiation factor activity').
leaf('TAF9B','transcription corepressor activity').
leaf('TAF9B','DNA-templated transcription initiation').
leaf('TAF9B','negative regulation of apoptotic process').
leaf('TAF9B','negative regulation of intrinsic apoptotic signaling pathway in response to DNA damage by p53 class mediator').
leaf('TAF9B','negative regulation of transcription by RNA polymerase II').
leaf('TAF9B','positive regulation of cell growth').
leaf('TAF9B','protein stabilization').
leaf('TAF9B','nucleoplasm').
leaf('TAF9B','transcription factor TFIID complex').
leaf('TAF9B','transcription factor TFTC complex').
leaf('TAF10','DNA binding').
leaf('TAF10','enzyme binding').
leaf('TAF10','identical protein binding').
leaf('TAF10','obsolete nuclear estrogen receptor binding').
fm('obsolete nuclear estrogen receptor binding').
leaf('TAF10','promoter-specific chromatin binding').
leaf('TAF10','RNA polymerase binding').
fm('RNA polymerase binding').
leaf('TAF10','RNA polymerase II general transcription initiation factor activity').
leaf('TAF10','allantois development').
bp('allantois development').
leaf('TAF10','chromatin remodeling').
leaf('TAF10','DNA-templated transcription initiation').
leaf('TAF10','embryonic placenta development').
bp('embryonic placenta development').
leaf('TAF10','lateral mesodermal cell differentiation').
bp('lateral mesodermal cell differentiation').
leaf('TAF10','limb development').
bp('limb development').
leaf('TAF10','mRNA transcription by RNA polymerase II').
leaf('TAF10','positive regulation of DNA-templated transcription').
leaf('TAF10','positive regulation of transcription initiation by RNA polymerase II').
leaf('TAF10','regulation of DNA repair').
leaf('TAF10','regulation of DNA-templated transcription').
leaf('TAF10','regulation of RNA splicing').
leaf('TAF10','regulation of transcription by RNA polymerase II').
leaf('TAF10','RNA polymerase II preinitiation complex assembly').
leaf('TAF10','SAGA complex assembly').
bp('SAGA complex assembly').
leaf('TAF10','somitogenesis').
leaf('TAF10','transcription by RNA polymerase II').
leaf('TAF10','transcription initiation at RNA polymerase II promoter').
leaf('TAF10','cytoplasm').
leaf('TAF10','nucleoplasm').
leaf('TAF10','nucleus').
leaf('TAF10','perinuclear region of cytoplasm').
leaf('TAF10','SAGA complex').
leaf('TAF10','transcription factor TFIID complex').
leaf('TAF10','transcription factor TFTC complex').
leaf('TAF10','transcription preinitiation complex').
cc('transcription preinitiation complex').
go('allantois development',is_a,'extraembryonic membrane development').
go('lateral mesodermal cell differentiation',is_a,'mesodermal cell differentiation').
go('mesodermal cell differentiation',is_a,'cell differentiation').
go('mesodermal cell differentiation',part_of,'mesoderm formation').
go('mesoderm formation',is_a,'formation of primary germ layer').
go('formation of primary germ layer',is_a,'anatomical structure formation involved in morphogenesis').
go('formation of primary germ layer',part_of,'gastrulation').
go('mesoderm formation',part_of,'mesoderm morphogenesis').
go('mesoderm morphogenesis',is_a,'tissue morphogenesis').
go('mesoderm morphogenesis',part_of,'mesoderm development').
go('lateral mesodermal cell differentiation',part_of,'lateral mesoderm formation').
go('lateral mesoderm formation',is_a,'mesoderm formation').
go('lateral mesoderm formation',part_of,'lateral mesoderm morphogenesis').
go('lateral mesoderm morphogenesis',is_a,'mesenchyme morphogenesis').
go('lateral mesoderm morphogenesis',is_a,'mesoderm morphogenesis').
go('lateral mesoderm morphogenesis',part_of,'lateral mesoderm development').
go('lateral mesoderm development',is_a,'mesenchyme development').
go('lateral mesoderm development',is_a,'mesoderm development').
go('SAGA complex assembly',is_a,'protein-containing complex assembly').
go('transcription preinitiation complex',is_a,'protein-DNA complex').
leaf('TAF11','DNA binding').
leaf('TAF11','obsolete nuclear thyroid hormone receptor binding').
leaf('TAF11','obsolete nuclear vitamin D receptor binding').
leaf('TAF11','protein heterodimerization activity').
leaf('TAF11','RNA polymerase II general transcription initiation factor activity').
leaf('TAF11','TBP-class protein binding').
leaf('TAF11','transcription coactivator activity').
leaf('TAF11','host-mediated activation of viral transcription').
leaf('TAF11','mRNA transcription by RNA polymerase II').
leaf('TAF11','positive regulation of transcription initiation by RNA polymerase II').
leaf('TAF11','RNA polymerase II preinitiation complex assembly').
leaf('TAF11','transcription by RNA polymerase II').
leaf('TAF11','transcription initiation at RNA polymerase II promoter').
leaf('TAF11','nucleoplasm').
leaf('TAF11','nucleus').
leaf('TAF11','transcription factor TFIID complex').
leaf('TAF11L2','protein heterodimerization activity').
leaf('TAF11L2','RNA polymerase II preinitiation complex assembly').
leaf('TAF11L2','transcription factor TFIID complex').
leaf('TAF11L3','protein heterodimerization activity').
leaf('TAF11L3','RNA polymerase II preinitiation complex assembly').
leaf('TAF11L3','transcription factor TFIID complex').
leaf('TAF11L4','protein heterodimerization activity').
leaf('TAF11L4','RNA polymerase II preinitiation complex assembly').
leaf('TAF11L4','transcription factor TFIID complex').
leaf('TAF11L5','protein heterodimerization activity').
leaf('TAF11L5','RNA polymerase II preinitiation complex assembly').
leaf('TAF11L5','transcription factor TFIID complex').
leaf('TAF11L6','protein heterodimerization activity').
leaf('TAF11L6','RNA polymerase II preinitiation complex assembly').
leaf('TAF11L6','transcription factor TFIID complex').
leaf('TAF11L7','protein heterodimerization activity').
leaf('TAF11L7','RNA polymerase II preinitiation complex assembly').
leaf('TAF11L7','transcription factor TFIID complex').
leaf('TAF11L8','protein heterodimerization activity').
leaf('TAF11L8','RNA polymerase II preinitiation complex assembly').
leaf('TAF11L8','transcription factor TFIID complex').
leaf('TAF11L9','protein heterodimerization activity').
leaf('TAF11L9','RNA polymerase II preinitiation complex assembly').
leaf('TAF11L9','transcription factor TFIID complex').
leaf('TAF11L10','protein heterodimerization activity').
leaf('TAF11L10','RNA polymerase II preinitiation complex assembly').
leaf('TAF11L10','transcription factor TFIID complex').
leaf('TAF11L11','protein heterodimerization activity').
leaf('TAF11L11','RNA polymerase II preinitiation complex assembly').
leaf('TAF11L11','transcription factor TFIID complex').
leaf('TAF11L12','protein heterodimerization activity').
leaf('TAF11L12','RNA polymerase II preinitiation complex assembly').
leaf('TAF11L12','transcription factor TFIID complex').
leaf('TAF11L13','protein heterodimerization activity').
leaf('TAF11L13','RNA polymerase II preinitiation complex assembly').
leaf('TAF11L13','transcription factor TFIID complex').
leaf('TAF11L14','protein heterodimerization activity').
leaf('TAF11L14','RNA polymerase II preinitiation complex assembly').
leaf('TAF11L14','transcription factor TFIID complex').
leaf('TAF12','DNA binding').
leaf('TAF12','DNA-binding transcription factor binding').
leaf('TAF12','protein heterodimerization activity').
leaf('TAF12','TBP-class protein binding').
leaf('TAF12','transcription coactivator activity').
leaf('TAF12','DNA-templated transcription initiation').
leaf('TAF12','mRNA transcription by RNA polymerase II').
leaf('TAF12','positive regulation of DNA-templated transcription').
leaf('TAF12','positive regulation of transcription by RNA polymerase II').
leaf('TAF12','positive regulation of transcription initiation by RNA polymerase II').
leaf('TAF12','regulation of DNA repair').
leaf('TAF12','regulation of DNA-templated transcription').
leaf('TAF12','regulation of RNA splicing').
leaf('TAF12','regulation of transcription by RNA polymerase II').
leaf('TAF12','RNA polymerase II preinitiation complex assembly').
leaf('TAF12','transcription by RNA polymerase II').
leaf('TAF12','transcription initiation at RNA polymerase II promoter').
leaf('TAF12','nucleoplasm').
leaf('TAF12','nucleus').
leaf('TAF12','SAGA complex').
leaf('TAF12','transcription factor TFIID complex').
leaf('TAF12','transcription factor TFTC complex').
leaf('TAF13','DNA binding').
leaf('TAF13','protein heterodimerization activity').
leaf('TAF13','RNA polymerase II general transcription initiation factor activity').
leaf('TAF13','TBP-class protein binding').
leaf('TAF13','DNA-templated transcription initiation').
leaf('TAF13','mRNA transcription by RNA polymerase II').
leaf('TAF13','positive regulation of transcription initiation by RNA polymerase II').
leaf('TAF13','RNA polymerase II preinitiation complex assembly').
leaf('TAF13','transcription by RNA polymerase II').
leaf('TAF13','transcription initiation at RNA polymerase II promoter').
leaf('TAF13','nucleolus').
leaf('TAF13','nucleoplasm').
leaf('TAF13','nucleus').
leaf('TAF13','transcription factor TFIID complex').
leaf('TAF15','mRNA 3-UTR binding').
fm('mRNA 3-UTR binding').
leaf('TAF15','RNA binding').
leaf('TAF15','transcription coregulator activity').
leaf('TAF15','mRNA stabilization').
leaf('TAF15','positive regulation of DNA-templated transcription').
leaf('TAF15','cytoplasm').
leaf('TAF15','nucleoplasm').
leaf('TAF15','nucleus').
go('mRNA 3-UTR binding',is_a,'mRNA binding').
leaf('TBP','obsolete aryl hydrocarbon receptor binding').
leaf('TBP','core promoter sequence-specific DNA binding').
leaf('TBP','DNA-binding transcription factor binding').
leaf('TBP','enzyme binding').
leaf('TBP','RNA polymerase I core promoter sequence-specific DNA binding').
leaf('TBP','RNA polymerase II core promoter sequence-specific DNA binding').
leaf('TBP','RNA polymerase II general transcription initiation factor activity').
leaf('TBP','RNA polymerase II general transcription initiation factor binding').
leaf('TBP','RNA polymerase III general transcription initiation factor activity').
fm('RNA polymerase III general transcription initiation factor activity').
leaf('TBP','TFIIB-class transcription factor binding').
fm('TFIIB-class transcription factor binding').
leaf('TBP','transcription cis-regulatory region binding').
leaf('TBP','mRNA transcription by RNA polymerase II').
leaf('TBP','positive regulation of transcription by RNA polymerase III').
bp('positive regulation of transcription by RNA polymerase III').
leaf('TBP','positive regulation of transcription initiation by RNA polymerase II').
leaf('TBP','regulation of DNA-templated transcription').
leaf('TBP','RNA polymerase II preinitiation complex assembly').
leaf('TBP','transcription by RNA polymerase II').
leaf('TBP','transcription by RNA polymerase III').
bp('transcription by RNA polymerase III').
leaf('TBP','transcription initiation at RNA polymerase II promoter').
leaf('TBP','chromatin').
leaf('TBP','cytoplasm').
leaf('TBP','euchromatin').
leaf('TBP','female pronucleus').
cc('female pronucleus').
leaf('TBP','male pronucleus').
cc('male pronucleus').
leaf('TBP','nucleoplasm').
leaf('TBP','nucleus').
leaf('TBP','protein-containing complex').
leaf('TBP','RNA polymerase II transcription regulator complex').
leaf('TBP','RNA polymerase transcription factor SL1 complex').
leaf('TBP','transcription factor TFIIA complex').
cc('transcription factor TFIIA complex').
leaf('TBP','transcription factor TFIID complex').
leaf('TBP','transcription factor TFIIIB complex').
cc('transcription factor TFIIIB complex').
go('RNA polymerase III general transcription initiation factor activity',is_a,'general transcription initiation factor activity').
go('RNA polymerase III general transcription initiation factor activity',part_of,'transcription by RNA polymerase III').
go('transcription by RNA polymerase III',is_a,'DNA-templated transcription').
go('TFIIB-class transcription factor binding',is_a,'RNA polymerase II general transcription initiation factor binding').
go('positive regulation of transcription by RNA polymerase III',is_a,'positive regulation of DNA-templated transcription').
go('positive regulation of transcription by RNA polymerase III',is_a,'regulation of transcription by RNA polymerase III').
go('regulation of transcription by RNA polymerase III',is_a,'regulation of DNA-templated transcription').
go('regulation of transcription by RNA polymerase III',regulates,'transcription by RNA polymerase III').
go('female pronucleus',is_a,'pronucleus').
go('pronucleus',is_a,'nucleus').
go('male pronucleus',is_a,'pronucleus').
go('transcription factor TFIIA complex',is_a,'RNA polymerase II transcription regulator complex').
go('transcription factor TFIIA complex',part_of,'RNA polymerase II, holoenzyme').
go('transcription factor TFIIIB complex',is_a,'RNA polymerase III transcription regulator complex').
go('RNA polymerase III transcription regulator complex',is_a,'transcription regulator complex').
leaf('TBPL1','general transcription initiation factor activity').
fm('general transcription initiation factor activity').
leaf('TBPL1','RNA polymerase II core promoter sequence-specific DNA binding').
leaf('TBPL1','RNA polymerase II general transcription initiation factor activity').
leaf('TBPL1','DNA-templated transcription initiation').
leaf('TBPL1','transcription by RNA polymerase II').
leaf('TBPL1','cytoplasm').
leaf('TBPL1','nucleoplasm').
leaf('TBPL1','transcription factor TFIIA complex').
leaf('TBPL2','DNA binding').
leaf('TBPL2','RNA polymerase II general transcription initiation factor activity').
leaf('TBPL2','DNA-templated transcription initiation').
leaf('TBPL2','cytoplasm').
leaf('TBPL2','nucleus').
leaf('TMF1','obsolete nuclear androgen receptor binding').
fm('obsolete nuclear androgen receptor binding').
leaf('TMF1','transcription coactivator activity').
leaf('TMF1','androgen receptor signaling pathway').
bp('androgen receptor signaling pathway').
leaf('TMF1','positive regulation of transcription by RNA polymerase II').
leaf('TMF1','regulation of proteasomal protein catabolic process').
bp('regulation of proteasomal protein catabolic process').
leaf('TMF1','cytosol').
leaf('TMF1','endoplasmic reticulum').
leaf('TMF1','Golgi apparatus').
leaf('TMF1','Golgi membrane').
leaf('TMF1','nucleus').
leaf('MECOM','DNA binding').
leaf('MECOM','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('MECOM','DNA-binding transcription factor activity').
leaf('MECOM','histone H3 methyltransferase activity').
fm('histone H3 methyltransferase activity').
leaf('MECOM','histone H3K9 methyltransferase activity').
fm('histone H3K9 methyltransferase activity').
leaf('MECOM','histone H3K9 monomethyltransferase activity').
fm('histone H3K9 monomethyltransferase activity').
leaf('MECOM','protein homodimerization activity').
leaf('MECOM','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('MECOM','hematopoietic stem cell proliferation').
leaf('MECOM','heterochromatin organization').
bp('heterochromatin organization').
leaf('MECOM','negative regulation of DNA-templated transcription').
leaf('MECOM','negative regulation of JNK cascade').
bp('negative regulation of JNK cascade').
leaf('MECOM','negative regulation of programmed cell death').
bp('negative regulation of programmed cell death').
leaf('MECOM','positive regulation of DNA-templated transcription').
leaf('MECOM','protein maturation').
bp('protein maturation').
leaf('MECOM','regulation of cell cycle').
leaf('MECOM','regulation of transcription by RNA polymerase II').
leaf('MECOM','cytoplasm').
leaf('MECOM','cytosol').
leaf('MECOM','nuclear speck').
leaf('MECOM','nucleoplasm').
leaf('MECOM','nucleus').
go('histone H3 methyltransferase activity',is_a,'histone methyltransferase activity').
go('histone methyltransferase activity',is_a,'histone modifying activity').
go('histone methyltransferase activity',is_a,'protein methyltransferase activity').
go('protein methyltransferase activity',is_a,'catalytic activity, acting on a protein').
go('protein methyltransferase activity',is_a,'methyltransferase activity').
go('histone H3K9 methyltransferase activity',is_a,'histone H3 methyltransferase activity').
go('histone H3K9 methyltransferase activity',is_a,'protein-lysine N-methyltransferase activity').
go('protein-lysine N-methyltransferase activity',is_a,'lysine N-methyltransferase activity').
go('lysine N-methyltransferase activity',is_a,'N-methyltransferase activity').
go('N-methyltransferase activity',is_a,'methyltransferase activity').
go('lysine N-methyltransferase activity',is_a,'S-adenosylmethionine-dependent methyltransferase activity').
go('S-adenosylmethionine-dependent methyltransferase activity',is_a,'methyltransferase activity').
go('protein-lysine N-methyltransferase activity',is_a,'protein methyltransferase activity').
go('histone H3K9 monomethyltransferase activity',is_a,'histone H3K9 methyltransferase activity').
go('negative regulation of JNK cascade',is_a,'negative regulation of MAPK cascade').
go('negative regulation of JNK cascade',is_a,'regulation of JNK cascade').
leaf('FOXD3','DNA-binding transcription factor activity').
leaf('FOXD3','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('FOXD3','DNA-binding transcription repressor activity, RNA polymerase II-specific').
leaf('FOXD3','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('FOXD3','RNA polymerase II transcription regulatory region sequence-specific DNA binding').
leaf('FOXD3','sequence-specific double-stranded DNA binding').
leaf('FOXD3','anatomical structure morphogenesis').
leaf('FOXD3','cell differentiation').
leaf('FOXD3','in utero embryonic development').
bp('in utero embryonic development').
leaf('FOXD3','negative regulation of transcription by RNA polymerase II').
leaf('FOXD3','positive regulation of transcription by RNA polymerase II').
leaf('FOXD3','regulation of transcription by RNA polymerase II').
leaf('FOXD3','chromatin').
leaf('FOXD3','nucleoplasm').
leaf('FOXD3','nucleus').
leaf('SOX5','DNA-binding transcription factor activity').
leaf('SOX5','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('SOX5','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('SOX5','transcription cis-regulatory region binding').
leaf('SOX5','asymmetric neuroblast division').
bp('asymmetric neuroblast division').
leaf('SOX5','cartilage condensation').
bp('cartilage condensation').
leaf('SOX5','cartilage development').
leaf('SOX5','cell fate commitment').
leaf('SOX5','cellular response to transforming growth factor beta stimulus').
bp('cellular response to transforming growth factor beta stimulus').
leaf('SOX5','chondrocyte differentiation').
leaf('SOX5','positive regulation of cartilage development').
bp('positive regulation of cartilage development').
leaf('SOX5','positive regulation of chondrocyte differentiation').
bp('positive regulation of chondrocyte differentiation').
leaf('SOX5','positive regulation of mesenchymal stem cell differentiation').
bp('positive regulation of mesenchymal stem cell differentiation').
leaf('SOX5','regulation of transcription by RNA polymerase II').
leaf('SOX5','transcription by RNA polymerase II').
leaf('SOX5','chromatin').
leaf('SOX5','nucleoplasm').
leaf('SOX5','nucleus').
go('asymmetric neuroblast division',is_a,'cell fate commitment').
go('asymmetric neuroblast division',is_a,'neuroblast division').
go('neuroblast division',is_a,'cell division').
go('asymmetric neuroblast division',is_a,'asymmetric cell division').
go('neuroblast division',part_of,'neuroblast proliferation').
go('asymmetric cell division',is_a,'cell division').
go('neuroblast proliferation',is_a,'neural precursor cell proliferation').
go('neuroblast proliferation',part_of,'generation of neurons').
go('cartilage condensation',is_a,'cell aggregation').
go('cell aggregation',is_a,'cellular process').
go('cartilage condensation',part_of,'cartilage development').
go('cartilage condensation',part_of,'skeletal system morphogenesis').
go('skeletal system morphogenesis',is_a,'animal organ morphogenesis').
go('skeletal system morphogenesis',part_of,'skeletal system development').
go('positive regulation of cartilage development',is_a,'positive regulation of developmental process').
go('positive regulation of cartilage development',is_a,'positive regulation of multicellular organismal process').
go('positive regulation of cartilage development',is_a,'regulation of cartilage development').
go('positive regulation of chondrocyte differentiation',is_a,'regulation of chondrocyte differentiation').
go('positive regulation of chondrocyte differentiation',is_a,'positive regulation of cartilage development').
go('positive regulation of chondrocyte differentiation',is_a,'positive regulation of cell differentiation').
go('positive regulation of mesenchymal stem cell differentiation',is_a,'regulation of mesenchymal stem cell differentiation').
go('positive regulation of mesenchymal stem cell differentiation',is_a,'positive regulation of stem cell differentiation').
go('positive regulation of stem cell differentiation',is_a,'regulation of stem cell differentiation').
go('regulation of mesenchymal stem cell differentiation',is_a,'regulation of stem cell differentiation').
go('regulation of mesenchymal stem cell differentiation',regulates,'mesenchymal stem cell differentiation').
go('mesenchymal stem cell differentiation',is_a,'stem cell differentiation').
go('positive regulation of stem cell differentiation',is_a,'positive regulation of cell differentiation').
leaf('HLF','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('HLF','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('HLF','double-stranded DNA binding').
leaf('HLF','protein heterodimerization activity').
leaf('HLF','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('HLF','sequence-specific DNA binding').
leaf('HLF','sequence-specific double-stranded DNA binding').
leaf('HLF','positive regulation of transcription by RNA polymerase II').
leaf('HLF','regulation of transcription by RNA polymerase II').
leaf('HLF','chromatin').
leaf('HLF','nucleoplasm').
leaf('HLF','nucleus').
leaf('HLF','RNA polymerase II transcription regulator complex').
leaf('YY1','cis-regulatory region sequence-specific DNA binding').
leaf('YY1','DNA binding').
leaf('YY1','DNA-binding transcription activator activity, RNA polymerase II-specific').
leaf('YY1','DNA-binding transcription factor activity, RNA polymerase II-specific').
leaf('YY1','DNA-binding transcription factor binding').
leaf('YY1','DNA-binding transcription repressor activity').
leaf('YY1','DNA-binding transcription repressor activity, RNA polymerase II-specific').
leaf('YY1','four-way junction DNA binding').
fm('four-way junction DNA binding').
leaf('YY1','lncRNA binding').
fm('lncRNA binding').
leaf('YY1','promoter-specific chromatin binding').
leaf('YY1','RNA binding').
leaf('YY1','RNA polymerase II cis-regulatory region sequence-specific DNA binding').
leaf('YY1','sequence-specific double-stranded DNA binding').
leaf('YY1','SMAD binding').
fm('SMAD binding').
leaf('YY1','transcription cis-regulatory region binding').
leaf('YY1','B cell differentiation').
leaf('YY1','cellular response to interleukin-1').
leaf('YY1','cellular response to UV').
leaf('YY1','chromatin remodeling').
leaf('YY1','DNA damage response').
leaf('YY1','double-strand break repair via homologous recombination').
bp('double-strand break repair via homologous recombination').
leaf('YY1','immunoglobulin heavy chain V-D-J recombination').
bp('immunoglobulin heavy chain V-D-J recombination').
leaf('YY1','negative regulation of cell growth involved in cardiac muscle cell development').
bp('negative regulation of cell growth involved in cardiac muscle cell development').
leaf('YY1','negative regulation of gene expression').
leaf('YY1','negative regulation of interferon-beta production').
bp('negative regulation of interferon-beta production').
leaf('YY1','negative regulation of miRNA transcription').
bp('negative regulation of miRNA transcription').
leaf('YY1','negative regulation of transcription by RNA polymerase II').
leaf('YY1','positive regulation of DNA repair').
leaf('YY1','positive regulation of DNA-templated transcription').
leaf('YY1','positive regulation of telomere maintenance in response to DNA damage').
bp('positive regulation of telomere maintenance in response to DNA damage').
leaf('YY1','positive regulation of transcription by RNA polymerase II').
leaf('YY1','regulation of cell cycle').
leaf('YY1','regulation of chromosome organization').
bp('regulation of chromosome organization').
leaf('YY1','regulation of DNA replication').
bp('regulation of DNA replication').
leaf('YY1','regulation of DNA strand elongation').
bp('regulation of DNA strand elongation').
leaf('YY1','regulation of embryonic development').
bp('regulation of embryonic development').
leaf('YY1','regulation of transcription by RNA polymerase II').
leaf('YY1','response to prostaglandin F').
bp('response to prostaglandin F').
leaf('YY1','response to UV-C').
bp('response to UV-C').
leaf('YY1','spermatogenesis').
leaf('YY1','telomere maintenance').
bp('telomere maintenance').
leaf('YY1','chromatin silencing complex').
cc('chromatin silencing complex').
leaf('YY1','fibrillar center').
leaf('YY1','Ino80 complex').
cc('Ino80 complex').
leaf('YY1','nuclear body').
leaf('YY1','nuclear matrix').
leaf('YY1','nucleoplasm').
leaf('YY1','nucleus').
leaf('YY1','PcG protein complex').
cc('PcG protein complex').
leaf('YY1','ribonucleoprotein complex').
leaf('YY1','transcription regulator complex').
go('four-way junction DNA binding',is_a,'DNA secondary structure binding').
go('DNA secondary structure binding',is_a,'DNA binding').
go('lncRNA binding',is_a,'RNA binding').
go('immunoglobulin heavy chain V-D-J recombination',is_a,'immunoglobulin V(D)J recombination').
go('immunoglobulin V(D)J recombination',is_a,'V(D)J recombination').
go('immunoglobulin V(D)J recombination',is_a,'somatic recombination of immunoglobulin gene segments').
go('V(D)J recombination',is_a,'somatic diversification of immune receptors via germline recombination within a single locus').
go('negative regulation of cell growth involved in cardiac muscle cell development',is_a,'negative regulation of cardiac muscle tissue growth').
go('negative regulation of cell growth involved in cardiac muscle cell development',is_a,'negative regulation of cell growth').
go('negative regulation of cardiac muscle tissue growth',is_a,'regulation of cardiac muscle tissue growth').
go('negative regulation of cell growth',is_a,'negative regulation of growth').
go('negative regulation of growth',is_a,'regulation of growth').
go('negative regulation of growth',is_a,'negative regulation of biological process').
go('negative regulation of cell growth',is_a,'negative regulation of cellular process').
go('negative regulation of cell growth',is_a,'regulation of cell growth').
go('negative regulation of cell growth involved in cardiac muscle cell development',is_a,'negative regulation of cardiac muscle hypertrophy').
go('negative regulation of cardiac muscle tissue growth',is_a,'negative regulation of heart growth').
go('negative regulation of heart growth',is_a,'regulation of heart growth').
go('negative regulation of heart growth',is_a,'negative regulation of organ growth').
go('negative regulation of organ growth',is_a,'negative regulation of multicellular organismal process').
go('negative regulation of organ growth',is_a,'negative regulation of developmental growth').
go('negative regulation of developmental growth',is_a,'regulation of developmental growth').
go('negative regulation of developmental growth',is_a,'negative regulation of developmental process').
go('negative regulation of developmental growth',is_a,'negative regulation of growth').
go('negative regulation of organ growth',is_a,'regulation of organ growth').
go('negative regulation of cell growth involved in cardiac muscle cell development',is_a,'negative regulation of striated muscle cell differentiation').
go('negative regulation of striated muscle cell differentiation',is_a,'regulation of striated muscle cell differentiation').
go('regulation of striated muscle cell differentiation',is_a,'regulation of muscle cell differentiation').
go('negative regulation of cell growth involved in cardiac muscle cell development',is_a,'regulation of cell growth involved in cardiac muscle cell development').
go('regulation of cell growth involved in cardiac muscle cell development',is_a,'regulation of cell growth').
go('regulation of cell growth involved in cardiac muscle cell development',is_a,'regulation of cardiac muscle tissue growth').
go('regulation of striated muscle cell differentiation',regulates,'striated muscle cell differentiation').
go('regulation of cell growth involved in cardiac muscle cell development',regulates,'cell growth involved in cardiac muscle cell development').
go('negative regulation of striated muscle cell differentiation',is_a,'negative regulation of muscle cell differentiation').
go('negative regulation of muscle cell differentiation',is_a,'regulation of muscle cell differentiation').
go('negative regulation of muscle cell differentiation',is_a,'negative regulation of cell differentiation').
go('negative regulation of interferon-beta production',is_a,'negative regulation of type I interferon production').
go('negative regulation of interferon-beta production',is_a,'regulation of interferon-beta production').
go('negative regulation of type I interferon production',is_a,'negative regulation of cytokine production').
go('regulation of interferon-beta production',is_a,'regulation of type I interferon production').
go('regulation of type I interferon production',is_a,'regulation of cytokine production').
go('regulation of type I interferon production',regulates,'type I interferon production').
go('negative regulation of type I interferon production',is_a,'regulation of type I interferon production').
go('type I interferon production',is_a,'cytokine production').
go('regulation of interferon-beta production',regulates,'interferon-beta production').
go('interferon-beta production',is_a,'type I interferon production').
go('negative regulation of miRNA transcription',is_a,'regulation of miRNA transcription').
go('negative regulation of miRNA transcription',is_a,'negative regulation of miRNA metabolic process').
go('negative regulation of miRNA metabolic process',is_a,'regulation of miRNA metabolic process').
go('negative regulation of miRNA transcription',is_a,'negative regulation of DNA-templated transcription').
go('negative regulation of miRNA metabolic process',is_a,'negative regulation of RNA metabolic process').
go('positive regulation of telomere maintenance in response to DNA damage',is_a,'positive regulation of response to stimulus').
go('positive regulation of telomere maintenance in response to DNA damage',is_a,'positive regulation of telomere maintenance').
go('positive regulation of telomere maintenance in response to DNA damage',is_a,'regulation of telomere maintenance in response to DNA damage').
go('regulation of telomere maintenance in response to DNA damage',is_a,'regulation of telomere maintenance').
go('regulation of telomere maintenance in response to DNA damage',is_a,'regulation of cellular response to stress').
go('regulation of telomere maintenance in response to DNA damage',regulates,'telomere maintenance in response to DNA damage').
go('telomere maintenance in response to DNA damage',is_a,'DNA damage response').
go('telomere maintenance in response to DNA damage',is_a,'telomere maintenance').
go('regulation of DNA strand elongation',is_a,'regulation of DNA metabolic process').
go('regulation of DNA strand elongation',regulates,'DNA strand elongation').
go('DNA strand elongation',is_a,'DNA metabolic process').
go('response to prostaglandin F',is_a,'response to prostaglandin').
go('response to prostaglandin',is_a,'response to lipid').
go('response to prostaglandin',is_a,'response to hormone').
go('response to UV-C',is_a,'response to UV').
go('chromatin silencing complex',is_a,'nuclear protein-containing complex').
go('Ino80 complex',is_a,'INO80-type complex').
go('INO80-type complex',is_a,'SWI/SNF superfamily-type complex').
go('Ino80 complex',part_of,'nuclear chromosome').
leaf('SLC6A2','actin binding').
fm('actin binding').
leaf('SLC6A2','alpha-tubulin binding').
fm('alpha-tubulin binding').
leaf('SLC6A2','beta-tubulin binding').
fm('beta-tubulin binding').
leaf('SLC6A2','dopamine:sodium symporter activity').
leaf('SLC6A2','monoamine transmembrane transporter activity').
leaf('SLC6A2','neurotransmitter transmembrane transporter activity').
leaf('SLC6A2','neurotransmitter:sodium symporter activity').
fm('neurotransmitter:sodium symporter activity').
leaf('SLC6A2','norepinephrine:sodium symporter activity').
leaf('SLC6A2','amino acid transport').
bp('amino acid transport').
leaf('SLC6A2','chemical synaptic transmission').
leaf('SLC6A2','dopamine uptake involved in synaptic transmission').
bp('dopamine uptake involved in synaptic transmission').
leaf('SLC6A2','neuron cellular homeostasis').
bp('neuron cellular homeostasis').
leaf('SLC6A2','neurotransmitter transport').
leaf('SLC6A2','norepinephrine uptake').
bp('norepinephrine uptake').
leaf('SLC6A2','response to xenobiotic stimulus').
leaf('SLC6A2','sodium ion transmembrane transport').
bp('sodium ion transmembrane transport').
leaf('SLC6A2','axon').
leaf('SLC6A2','cell surface').
leaf('SLC6A2','membrane').
leaf('SLC6A2','neuronal cell body membrane').
cc('neuronal cell body membrane').
leaf('SLC6A2','plasma membrane').
leaf('SLC6A2','presynaptic membrane').
cc('presynaptic membrane').
leaf('SLC6A2','synaptic vesicle membrane').
cc('synaptic vesicle membrane').
go('alpha-tubulin binding',is_a,'tubulin binding').
go('beta-tubulin binding',is_a,'tubulin binding').
go('neurotransmitter:sodium symporter activity',is_a,'neurotransmitter transmembrane transporter activity').
go('neurotransmitter:sodium symporter activity',is_a,'solute:sodium symporter activity').
go('amino acid transport',is_a,'transport').
go('dopamine uptake involved in synaptic transmission',is_a,'dopamine uptake').
go('dopamine uptake involved in synaptic transmission',is_a,'neurotransmitter reuptake').
go('dopamine uptake involved in synaptic transmission',part_of,'synaptic transmission, dopaminergic').
go('synaptic transmission, dopaminergic',is_a,'chemical synaptic transmission').
go('neuron cellular homeostasis',is_a,'cellular homeostasis').
go('neuronal cell body membrane',is_a,'cell body membrane').
go('cell body membrane',is_a,'cellular anatomical structure').
go('cell body membrane',part_of,'plasma membrane').
go('cell body membrane',part_of,'cell body').
go('neuronal cell body membrane',part_of,'neuronal cell body').
go('presynaptic membrane',is_a,'synaptic membrane').
go('synaptic membrane',is_a,'plasma membrane region').
go('synaptic membrane',part_of,'synapse').
go('presynaptic membrane',part_of,'presynapse').
go('synaptic vesicle membrane',is_a,'exocytic vesicle membrane').
go('exocytic vesicle membrane',is_a,'transport vesicle membrane').
go('exocytic vesicle membrane',part_of,'exocytic vesicle').
go('exocytic vesicle',is_a,'secretory vesicle').
go('exocytic vesicle',is_a,'transport vesicle').
go('synaptic vesicle membrane',part_of,'synaptic vesicle').
go('synaptic vesicle',is_a,'exocytic vesicle').
go('synaptic vesicle',part_of,'presynapse').
