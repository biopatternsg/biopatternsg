#!/usr/bin/env bash

# Now let's run a modelling process:

# Activate biopatternsg's python virtual enviroment folder:

# cd ~/tools/biopatternsg

source ~/miniconda3/bin/activate

conda activate biopatternsg

# Run the biopatternsg system using the following command; then choose a language:

java -Xmx2048m -jar biopatternsg.jar
