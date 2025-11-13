# Running an evaluation

cd into corresponding folder 

$ swipl

?- ['../graph-comparison.pl']. 

?- run. 

when finish (it may take a few seconds), it will leave the file report.txt

?- halt. 

# Saving the ref sif in Prolog format

cd into corresponding folder

Within swipl: 

?- ['../graph-comparison.pl']. 

?- prepare.

?- tell('kbSif.pl'), down, told.

?- halt.

# codes.py: Getting the chebi names for the chebi codes in each experiment.

The codes.py script was tested with Python 3.12.4
and requires the tqdm python package. In order to 
get the tqdm package installed, please set up
a python enviroment and run the command below.
Let's say your python enviroment is named evaluation.

(evaluation) $ pip install tqdm

cd into the EVALUATION-READY folder and run the script. 

(evaluation) $ python codes.py

The chebi codes and its related names are saved in 
the prolog file named chebi_names.pl in each experiment folder. 

The output when running the script must look like this:

codes.py:
Getting the chebi names for the small molecules codes for each experiment folder: 
********************************************************************************

100%|██████████████████████████████████████████████████████████████████████████████████████████████████████████████████| 30/30









