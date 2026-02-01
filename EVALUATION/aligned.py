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

def get_small_molecules(ch_lines: list) -> list:

    small_molecules_ = []

    if not ch_lines[0] == "chebi_name(nadie, nadie).":

        for line in ch_lines:

            small_molecule = line.split("', ")[1].split(").")[0].strip().upper()
            if "\\'" in small_molecule:
                small_molecule = small_molecule.replace("\\'", "'")

            if small_molecule not in small_molecules_:

                small_molecules_.append(small_molecule)

    return small_molecules_

def get_alignments(alig_lines: list) -> tuple:

    aligned_objects = []
    no_aligned_objects = []

    for alig_line in alig_lines:

        if alig_line.startswith("aligned_objs("):
            aligned_objects = alig_line.split("([")[1].split("],")[0].split(", ")

        if alig_line.startswith("no_aligned_objs("):
            no_aligned_objects = alig_line.split("([")[1].split("],")[0].split(", ")

    if aligned_objects[0] == '':
        aligned_objects = []
    if no_aligned_objects[0] == '':
        no_aligned_objects = []

    return aligned_objects, no_aligned_objects

def get_sm_alignments(algned_objs: list, no_aligned_objs: list, small_molecules: list) -> tuple:

    aligned_sm_ = []
    no_aligned_sm_ = []

    if  small_molecules:

        for small_molecule in small_molecules:
            if small_molecule in algned_objs:
                if small_molecule not in aligned_sm_:
                    aligned_sm_.append(small_molecule)
            else:
                if small_molecule in no_aligned_objs:
                    if small_molecule not in no_aligned_sm_:
                        no_aligned_sm_.append(small_molecule)

    return aligned_sm_, no_aligned_sm_


def aligned(eval_path: str, experiment: str, files_needed: list):
    """
    This method process the EVALUATION folder and sets for each experiment in it the chebi_names.pl and
    the expert_objects.txt files.

    Args:
        eval_path: The path to the EVALUATION folder
        experiment: An experiment from the EVALUATION folder
        files_needed: The list of files that must be already present in the
                      experiment's folder on process.

    Returns:
        None
    """

    objects = [] # Objects in the network
    small_molecules = [] # small molecules in the chebi_names.pl file

    files = files_needed

    path_to_chebi_names = eval_path + experiment + "/" + files_needed[0] # chebi file
    path_to_expert_objects = eval_path + experiment + "/" + files_needed[1] # "expert_objects.txt"
    path_to_kBase = eval_path + experiment + "/" + files_needed[2]# "kBase.pl"
    path_to_aligned = eval_path + experiment + "/" + files_needed[3] # "aligned.pl"

    path_to_report_alignments = eval_path + experiment + "/" + "report_alignments.txt"

    with open(path_to_kBase, 'r', encoding="utf8") as kb_fl:
        kb_lines = [line.strip() for line in kb_fl.readlines()]

    with open(path_to_expert_objects , 'r', encoding="utf8") as eo_fl:
        expert_objects = [line.strip() for line in eo_fl.readlines()]

    with open(path_to_chebi_names , 'r', encoding="utf8") as ch_fl:
        ch_lines = [line.strip() for line in ch_fl.readlines()]

    with open(path_to_aligned , 'r', encoding="utf8") as alig_fl:
        alig_lines = [line.strip() for line in alig_fl.readlines()]

    small_molecules = get_small_molecules(ch_lines)

    (algned_objs, no_aligned_objs) = get_alignments(alig_lines)

    (aligned_sm, no_aligned_sm) = get_sm_alignments(algned_objs, no_aligned_objs, small_molecules)

    aligned_as_objs = len(expert_objects) - len(algned_objs) - len(no_aligned_objs)

    sm_aligned_as = len(small_molecules) - len(aligned_sm) - len(no_aligned_sm)

    metrics = [len(expert_objects), len(algned_objs), len(no_aligned_objs), aligned_as_objs, len(small_molecules), len(aligned_sm), len(no_aligned_sm), sm_aligned_as, len(kb_lines) - 2]

    metrics_to_report = [str(i) for i in metrics]

    to_report = "\t".join(metrics_to_report)

    with open(path_to_report_alignments, 'w', encoding="utf8") as report_fl:
        report_fl.write(to_report)

if __name__ == '__main__':
    """
    Script to get the synonyms for the objects in the EVALUATION folder.
    """

    print('\n' + f'codes.py:')
    print(f'Reporting the alignments of the user\'s objects with the names from PubTator: ')
    print(f'****************************************************************************' + '\n')

    # Setting the main folders

    cwd = os.getcwd()

    evaluation_path = cwd + '/'

    # Taking care about the existence of the EVALUATION folder
    if not path.exists(evaluation_path):
        print(f'The EVALUATION folder does not exist.')
        exit()

    experiments = sorted(list_directories(evaluation_path))

    experiments_failing = []

    files_needed = ["chebi_names.pl", "expert_objects.txt", "kBase.pl", "aligned_r.pl"]

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
        aligned(evaluation_path, experiments[experiment], files_needed)

