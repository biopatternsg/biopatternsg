# Running an evaluation regarding Table 9

cd EVALUATION

Select an experiment.

cd into corresponding folder

Then run prolog and run the script for the evaluation.

$ swipl

?- ['../graph-comparison.pl'].

?- run.

When finished (it may take a few seconds), it will leave the file report.txt

?- halt.

# Running an evaluation regarding Table 11

cd EVALUATION

Select an experiment.

cd into corresponding folder

Then run prolog and run the script for the evaluation.

$ swipl

?- ['../graph-comparison.pl'].

?- run_s.

?- halt.

When finished (it may take a few seconds), it will leave the file report_simple.txt

# aligned.py: Script to report the aligned objects from the user w.r.t the objects in the knowledge base kBase.pl.

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
Reporting the alignments of the user's objects with the names from PubTator:
****************************************************************************

100%|██████████| 30/30 [00:00<00:00, 1674.93it/s]

# Saving the ref sif in Prolog format (necessary if you only want to get the kbSif.pl file for a particular experiment.

cd into corresponding folder

Within swipl:

?- ['../graph-comparison.pl'].

?- prepare.

?- tell('kbSif.pl'), down, told.

?- halt.

When finished (it may take a few seconds), it will leave the file kbSif.pl
used to compare later on the golden reference with kBase.pl.

# codes.py: Getting the chebi names for the chebi codes in each experiment.

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

