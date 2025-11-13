from os import path
import os
from pathlib import Path
import shutil
import time
import sys
import os
from tqdm import tqdm


def list_directories(path: str):
    """
    Lists all directories within a given path.

    Args:
        path (str): The path to the folder.

    Returns:
        list: A list of directory names within the specified path.
    """
    directories = []
    for item in os.listdir(path):
        item_path = os.path.join(path, item)
        if os.path.isdir(item_path):
            directories.append(item)
    return directories

def files_needed_in(files_needed: list, files: list) -> bool:

    files_in_folder = []
    files_in = False

    for file in files:
        files_in_folder.append(file.split("/")[-1])

    files_needed_set = set(files_needed)
    files_in_folder_set = set(files_in_folder)

    if files_needed_set.issubset(files_in_folder_set):
        files_in = True

    return files_in

def chebi_names(eval_path: str, experiment: str, files_needed: list):
    """
    This method process the EVALUATION-READY folder and sets for each experiment the chebi_names.pl and
    the expert_objects.txt files.

    Args:
        eval_path: The path to the EVALUATION-READY folder
        experiment: An experiment from the EVALUATION-READY folder
        files_needed: The list of files that must be already present in the
                      experiment's folder on process.

    Returns:
        None
    """

    objects = [] # Objects in the network
    chebi_objects = {} # Objects in the sif file with chebi codes as names
    regulatory_events = [] # A list of lists to store the events in the network

    path_to_kBase_sif = eval_path + experiment + "/" + "kBase.sif"
    path_to_sif_extended = eval_path + experiment + "/" + "kBase-ext.sif"

    with open(path_to_kBase_sif, 'r', encoding="utf8") as sif_fl:
        sif_lines = [line.strip() for line in sif_fl.readlines()]

    with open(path_to_sif_extended , 'r', encoding="utf8") as ext_fl:
        ext_lines = [line.strip() for line in ext_fl.readlines()]

    ext_lines.pop(0) # Removing the labels line
    first_section = True # To process the first section of the file before the label PARTICIPANT

    lines_ = 0

    for ext_line in ext_lines:

        fields = ext_line.split("\t")

        if not fields[0] == '' and first_section:

            try:
                subj = fields[0]
                obj = fields[2]
                if len(subj.split(" ")) == 1 and not "'" in subj:
                    if not (subj.startswith("chebi:") or subj.startswith("CHEBI:")):
                        subj = subj.upper()
                if not subj in objects:
                    objects.append(subj)

                if len(obj.split(" ")) == 1 and not "'" in obj:
                    if not (obj.startswith("chebi:") or obj.startswith("CHEBI:")):
                        obj = obj.upper()
                if not obj in objects:
                    objects.append(obj)

                lines_ += 1

            except Exception:

                print("Experiment: " + experiment + " | fail: 1 -> line failing: " + str(lines_))
                break

        else:
            try:
                if fields[0] == '' or fields[0].startswith("PARTICIPANT"):
                    first_section = False

                else:
                    symbol = fields[0]
                    name = fields[2]

                    if symbol.startswith("chebi:") or symbol.startswith("CHEBI:"):
                        if symbol not in chebi_objects.keys():
                            chebi_objects[symbol] = name
                        else:
                            print(f'The chebi code {symbol} is repeated in the experiment {experiment} at line {lines_ + 1}')
                            print(f'Please check')
                            sys.exit()

            except Exception:

                print("Experiment: " + experiment + " | fail: 2 -> line failing: " + str(lines_))
                break

    # This section replace in the list of objects those with chebi codes with
    # small molecules names and print the expert_objects.txt file for modelling
    # later on.

    for index in range(len(objects)):
        symbol = objects[index]
        if symbol.startswith("chebi:") or symbol.startswith("CHEBI:"):
            name = chebi_objects[symbol]
            objects[index] = name

    expert_objects = "\n".join(objects)

    path_to_expert_objects = eval_path + experiment + "/" + "expert_objects.txt"

    with open(path_to_expert_objects, 'w', encoding="utf8") as expert_fl:
        expert_fl.write(expert_objects)

    # This section produce a prolog file with chebi codes and their related
    # small molecules names.

    path_to_chebi_names_file = eval_path + experiment + "/" + "chebi_names.pl"

    chebi_names_list = []

    for ch_code, name in chebi_objects.items():
        if "'" in name:
            name = name.replace("'", "\\'")
        chebi_code_name = f'chebi_name(\'{ch_code}\', \'{name}\').'

        if chebi_code_name not in chebi_names_list:
            chebi_names_list.append(chebi_code_name)

    chebi_codes_and_names = "\n".join(chebi_names_list)

    with open(path_to_chebi_names_file, 'w', encoding="utf8") as chebi_fl:

        if chebi_codes_and_names:
            chebi_fl.write(chebi_codes_and_names)
        else:
            chebi_fl.write("No small molecules in this experiment.")


if __name__ == '__main__':
    """
    Script to get the chebi names for the small molecules codes in each experiment.
    """

    print('\n' + f'codes.py:')
    print(f'Getting the chebi names for the small molecules codes for each experiment folder: ')
    print(f'********************************************************************************' + '\n')

    # Setting the main folders

    cwd = os.getcwd()

    evaluation_path = cwd + '/'

    experiments = list_directories(evaluation_path)

    experiments_failing = []

    files_needed = ["kBase.sif", "kBase-ext.sif", "synonyms.pl", "kBase.pl"]
    for experiment in experiments:
        experiment_path =  evaluation_path + experiment
        files = [str(x) for x in Path(experiment_path).glob("*.*")]
        if not(files_needed_in(files_needed, files)):
            experiments_failing.append(experiment)

    experiments = [experiment for experiment in experiments if not experiment.startswith(".")]
    experiments_failing = [experiment_ for experiment_ in experiments_failing if not experiment_.startswith(".")]

    if experiments_failing:
        print(f'The following folders do not contain the necessary files.')
        for experiment in experiments_failing:
            print(f'Failing folder: {experiment}' + "\n")

    for experiment in tqdm(range(len(experiments))):
        chebi_names(evaluation_path, experiments[experiment], files_needed)

