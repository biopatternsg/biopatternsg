# Regarding the evaluation statistics reported in the paper.

The file named Evaluation-Statistics-TP-FP-FN-P-R-F1.ods contains
the evaluation tables 8, 9, 11, 12, 13, 14, and 15 reported in the paper,
and they are organized as follows:

Table 8 - Evaluation level 1.

Tables 9, 12, 13 - Evaluation level 2.

Tables 11, 14, 15 - Evaluation level 3.

Tables 8, 9, and 11 are generated as described below.

# Running the evaluation level 1 for all the experiments listed in Table 8.

aligned.py. Script to report the aligned objects from the reference
w.r.t the objects in the knowledge base kBase.pl for each experiment.

The aligned.py script was tested with Python 3.12.4
and requires the tqdm python package. In order to
get the tqdm package installed, please set up
a python environment and run the command below.
Let's say your python environment is named evaluation.

(evaluation) $ pip install tqdm

cd into the EVALUATION folder and run the script.

(evaluation) $ python aligned.py

The report report_alignments.txt is saved for each experiment
in the EVALUATION folder.

The output when running the script must look like this:

aligned.py:
Reporting the alignments of the references objects with the names from PubTator:
*******************************************************************************

100%|██████████| 30/30 [00:00<00:00, 1674.93it/s]

# Running a level 2 evaluation for and experiment in Table 9

cd EVALUATION

Select an experiment.

cd into corresponding folder

Then run prolog and run the script for the evaluation.

$ swipl

?- ['../graph-comparison.pl'].

?- run.

When finished (it may take a few seconds), it will leave the file report.txt

?- halt.

# Running a level 3 evaluation for and experiment in Table 11

cd EVALUATION

Select an experiment.

cd into corresponding folder

Then run prolog and run the script for the evaluation.

$ swipl

?- ['../graph-comparison.pl'].

?- run_s.

?- halt.

When finished (it may take a few seconds), it will leave the file report_simple.txt

# How to save the ref sif in Prolog format.

Necessary if you only want to get the kbSif.pl file for a particular experiment.

cd into corresponding folder

Within swipl:

?- ['../graph-comparison.pl'].

?- prepare.

?- tell('kbSif.pl'), down, told.

?- halt.

When finished (it may take a few seconds), it will leave the file kbSif.pl
used to compare later on the golden reference with kBase.pl.

# Getting the chebi names for the chebi codes in each experiment.

codes.py.
This script is necessary to produce the chebi_names.pl file used later on
to run the evaluations for Table 9 and Table 11. The chebi_names.pl file
describes the small molecules that are present in each network coming
from Pathways Commons.

The codes.py script was tested with Python 3.12.4
and requires the tqdm python package. In order to
get the tqdm package installed, please set up
a python environment and run the command below.
Let's say your python environment is named evaluation.

(evaluation) $ pip install tqdm

cd into the EVALUATION folder and run the script.

(evaluation) $ python codes.py

The chebi codes and its related names are saved in
the prolog file named chebi_names.pl in each experiment folder.

The output when running the script must look like this:

codes.py:
Getting the chebi names for the small molecules codes for each experiment folder:
********************************************************************************

100%|██████████|  30/30

