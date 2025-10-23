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





