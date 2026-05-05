#!/usr/bin/env bash

# Now let's run a modelling process:

# Activate biopatternsg's python virtual enviroment folder:

# cd ~/tools/biopatternsg

source ~/miniconda/bin/activate

conda activate biopatternsg

# Run the biopatternsg system using the following command; then choose a language:

java -XX:+UseG1GC -Xmx6g -jar biopatternsg.jar
