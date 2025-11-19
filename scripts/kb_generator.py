import shutil
from os import path
from pathlib import Path
import os
import nltk
import regex
from tqdm import tqdm
import sys


def get_event_sents(sentences: list, event: dict, entities: dict, pubmed_id: str, abstract: str) -> list:

    relation_sents = []
    subject = event['subject']
    object = event['object']

    subject_entities = entities[subject]
    object_entities = entities[object]

    subject_names = []
    object_names = []
    relation_sents = []

    for subject_entity in subject_entities:
        subject_name = subject_entity['name']
        if subject_name not in subject_names:
            subject_names.append(subject_name)

    for object_entity in object_entities:
        object_name = object_entity['name']
        if object_name not in object_names:
            object_names.append(object_name)

    for sentence in sentences:

        for subject_name in subject_names:
            for object_name in object_names:
                if subject_name in sentence and object_name in sentence:
                    if not relation_sents:
                        relation_sents.append((sentence, pubmed_id))
                    else:
                        included = False
                        for sentence_, pubmed_id_ in relation_sents:
                            if sentence_ == sentence:
                                included = True
                                break
                        if not included:
                            relation_sents.append((sentence, pubmed_id))
    if not relation_sents:
        relation_sents.append((abstract, pubmed_id))

    return relation_sents


def get_normalized_kb(events: dict, entities: dict, objects_identities_: list) -> tuple:

    knowledge_base = {}
    object_synonyms = {}
    biotypes_path = root + "/biotypes.pl"
    identities_path = root + "/kb_objects.txt"

    with open(biotypes_path, 'w', encoding="utf8") as biotypes:

        biotypes.write("% The identities for the objects present in the knowledge base, as pubtator predicts." + "\n" + "\n")

        for _, identity in objects_identities_:
            biotypes.write(identity + "\n")

    with open(identities_path, 'w', encoding="utf8") as identities:

        for entity_id_, _ in objects_identities_:
            identities.write(entity_id_ + "\n")

    for _, values in events.items():

        subject = values['subject']
        object = values['object']
        relation = values['relation']
        subject_entities = entities[subject]
        object_entities = entities[object]
        subject_names = [subject]
        object_names = [object]

        for subject_entity in subject_entities:

            subject_name = subject_entity['name']

            if subject_name not in subject_names:
                subject_names.append(subject_name) # Adding all the different ways an object is named in the abstracts,

            if subject_entity['ID'] not in subject_names:
                subject_names.append(subject_entity['ID']) # Adding the original symbol from pubtator (field 2 from entities file)

            if subject_entity['text'] not in subject_names:
                subject_names.append(subject_entity['text']) # Adding the original text from pubtator (field 7 from entities file)

        if subject not in object_synonyms.keys():
            object_synonyms[subject] = subject_names

        for object_entity in object_entities:

            object_name = object_entity['name']

            if object_name not in object_names:
                object_names.append(object_name)

            if object_entity['ID'] not in object_names:
                object_names.append(object_entity['ID']) # Adding the original symbol from pubtator (field 2 from entities file)

            if object_entity['text'] not in object_names:
                object_names.append(object_entity['text']) # Adding the original text from pubtator (field 7 from entities file)

        if object not in object_synonyms.keys():
            object_synonyms[object] = object_names

        new_event = "event('" + subject + "'," + relation + ",'" + object + "')"

        knowledge_base[new_event] = values
        knowledge_base[new_event]['names'] = (subject_names, object_names)

    return knowledge_base, object_synonyms


def print_kb(knowledge_base: dict, root: str) -> None:

    kb_path = root + "/kBase.pl"
    doc_kb_path = root + "/kBaseDoc.txt"

    # events = [event for event, _ in knowledge_base.items()]

    events_count = 0

    with open(kb_path, 'w', encoding="utf8") as kb:

        kb.write("base([" + "\n")

        for event, values in knowledge_base.items():
            events_count += 1
            """
            if values['opposite']:
                kb.write(values['opposite'] + "," + "\n")
            """
            if events_count != len(knowledge_base):
                kb.write(event + "," + "\n")
            else:
                kb.write(event + "\n")
                kb.write("]).")

    with open(doc_kb_path, 'w', encoding="utf8") as kb_doc:

        for event, values in knowledge_base.items():
            subject_names, object_names = values['names']
            kb_doc.write("******************* Regulatory Event *******************" + "\n" + "\n")
            kb_doc.write(event + "\n" + "\n")
            kb_doc.write("subject names: " + ": " + str(subject_names) + "\n")
            kb_doc.write("object names: " + ": " + str(object_names) + "\n" + "\n")
            # kb_doc.write("PubMed IDs" + ": " + str(values['pubmed_ids']) + "\n")
            kb_doc.write("Sentences from abstracts:" + "\n")
            kb_doc.write("------------------------" + "\n" + "\n")
            # sentence_id = 1
            for sentence, pubmed_id in values['sentences']:
                kb_doc.write(sentence + " PUBMED_ID: " + pubmed_id + "\n" + "\n")
            kb_doc.write("\n")
            """
            if values['opposite']:
                subject_names, object_names = values['names']
                kb_doc.write("******************* Regulatory Event *******************" + "\n" + "\n")
                kb_doc.write(values['opposite'] + "\n" + "\n")
                kb_doc.write("subject names: " + ": " + str(object_names) + "\n")
                kb_doc.write("object names: " + ": " + str(subject_names) + "\n" + "\n")
                # kb_doc.write("PubMed IDs" + ": " + str(values['pubmed_ids']) + "\n")
                kb_doc.write("Sentences from abstracts:" + "\n")
                kb_doc.write("------------------------" + "\n" + "\n")
                # sentence_id = 1
                for sentence, pubmed_id in values['sentences']:
                    # kb_doc.write(str(sentence_id) + ". " + sentence + " PUBMED_ID: " + pubmed_id + "\n")
                    # sentence_id += 1
                    kb_doc.write(sentence + " PUBMED_ID: " + pubmed_id + "\n" + "\n")
                kb_doc.write("\n")
            """


def print_synonyms(objects_synonyms: dict, root: str) -> None:

    synonyms_path = root + "/synonyms.pl"

    with open(synonyms_path, 'w', encoding="utf8") as syms_fl:

        syms_fl.write("% Objects and their synonyms from Pubtator" + '\n'  + '\n')

        for obj, synonyms in objects_synonyms.items():

            syms_fl.write(f'synonyms(\'{obj}\', {synonyms}).' + '\n')
            # print(f'synonyms(\'{obj}\', {synonyms}).')


if __name__ == '__main__':
    """
    A python script that generates the KB of events and entities in prolog format using the 
    predictions coming from PubTator.
    """

    print("\n" + f'kb_generator: A python script to get regulatory events from pubtator files' + "\n")

    # Setting the main folders

    for arg in sys.argv:
        print(f'{arg}')

    root = sys.argv[1]

    print(f'root: {root}')

    # getting the abstracts downloaded from pubtator
    pubtator_files_path = root + '/abstracts'
    logs_files_path = root + '/logs'

    if not path.exists(pubtator_files_path):
        print(f'Not "abstracts" folder available. Please check.')
        exit()

    if path.exists(logs_files_path):
        shutil.rmtree(logs_files_path)
    os.mkdir(logs_files_path)

    # Getting ready nltk for nlp processing
    nltk.download('punkt')
    nltk.download('punkt_tab')

    cwd = os.getcwd()

    # ---- Processing the .txt files in the abstracts folder to get entities and relations ---#

    abs_files = [str(x) for x in Path(pubtator_files_path).glob("**/abstract*.txt")]
    abs_files.sort()
    entities_files = [str(x) for x in Path(pubtator_files_path).glob("**/objects*.txt")]
    entities_files.sort()
    rels_files = [str(x) for x in Path(pubtator_files_path).glob("**/relations*.txt")]
    rels_files.sort()

    blocks_to_process = len(abs_files)
    FILE_ON_PROCESS = 0

    knowledge_base = {}
    entities = {}
    events = {}
    objects_identities = []

    # These relations are processed in a different way when we are building the regulatory events.
    special_relations = ['positive_correlation', 'negative_correlation']

    print(
        f'..getting events from the pubtator\'s files' + "\n")

    with open(logs_files_path + '/errors.txt', 'w', encoding="utf8") as errors:

        block_on_process = 0

        for block in tqdm(range(blocks_to_process), desc='Files on process'):

            block_on_process += 1

            abs_file = abs_files[block]
            with open(abs_file, 'r', encoding="utf8") as abs_fl:
                abs_lines = [line.strip() for line in abs_fl.readlines()]

            entity_file = entities_files[block]
            with open(entity_file, 'r', encoding="utf8") as ent_fl:
                entities_lines = [line.strip() for line in ent_fl.readlines()]

            rel_file = rels_files[block]
            with open(rel_file, 'r', encoding="utf8") as rels_fl:
                rels_lines = [line.strip() for line in rels_fl.readlines()]

            abs_line_on_process = 0
            entity_on_process = 0
            relation_on_process = 0

            for abs_line in abs_lines:

                abs_line_on_process += 1

                # A correct abstract line is one that starts with a pubmed id
                correct_line = regex.search("[\d]+\s\|\s", abs_line)
                pubmed_id = ""

                if correct_line:
                    pattern = regex.search("[\d]+\s\|\s", abs_line).group()
                    abstract = abs_line.split(pattern)[1]
                    sentences = nltk.sent_tokenize(abstract)
                    pubmed_id = pattern.split(" | ")[0]
                    next_abstract_from_entities = ""

                else:
                    print(f'Error in file {abs_file}, at line: {abs_line_on_process}')
                    sys.exit()

                pubmed_id_on = pubmed_id

                while pubmed_id_on == pubmed_id:

                    if entities_lines:

                        entity_line = entities_lines.pop(0)
                        entity_on_process += 1

                        if entity_line:
                            pubmed_id_on = entity_line.split(" | ")[0]

                        if pubmed_id_on == pubmed_id:
                            try:
                                entity = {}
                                id_ = entity_line.split(" | ")[2]
                                if "'" in  id_:
                                    id_ = id_.replace("'", "\\'")
                                if len(id_.split(" ")) == 1:
                                    id_ = id_.upper()
                                entity_id = id_
                                entity['ID'] = id_
                                entity['start'] = int(entity_line.split(" | ")[3])
                                entity['end'] = entity['start'] + int(entity_line.split(" | ")[4])
                                entity['name'] = abstract[entity['start']:entity['end']]
                                if "'" in  entity['name']:
                                    entity['name'] = entity['name'].replace("'", "\\'")
                                entity['text'] = entity_line.split(" | ")[7]
                                if "'" in  entity['text']:
                                    entity['text'] = entity['text'].replace("'", "\\'")
                                entity['type'] = entity_line.split(" | ")[5]
                                entity['biotype'] = entity_line.split(" | ")[6]
                                entity['pubmed_id'] = entity_line.split(" | ")[0]

                                if entity_id not in entities.keys():
                                    entities[entity_id] = [entity]
                                    if entity['biotype'] == 'gene':
                                        object_identity = "protein('{}').".format(entity_id)
                                        objects_identities.append((entity_id, object_identity))
                                    elif entity['biotype'] == 'chemical':
                                        object_identity = "ligand('{}').".format(entity_id)
                                        objects_identities.append((entity_id, object_identity))
                                    elif entity['biotype'] == 'disease':
                                        object_identity = "disease('{}').".format(entity_id)
                                        objects_identities.append((entity_id, object_identity))

                                else:
                                    entities[entity_id].append(entity)
                            except:
                                print(f'Error in file {entity_file}, at line: {entity_on_process}')
                                sys.exit()

                        else:
                            entities_lines.insert(0, entity_line)
                            entity_on_process -= 1
                            next_abstract_from_entities = pubmed_id_on

                    else:
                        break

                pubmed_id_on = pubmed_id

                while pubmed_id_on == pubmed_id:

                    if rels_lines:

                        rel_line = rels_lines.pop(0)
                        relation_on_process += 1

                        pubmed_id_on = rel_line.split("|")[0].strip()

                        if pubmed_id_on == pubmed_id:

                            try:
                                subject_ = rel_line.split("|")[2].strip()
                                if "'" in subject_:
                                    subject_ = subject_.replace("'", "\\'")
                                if len(subject_.split(" ")) == 1 and not "'" in subject_:
                                    subject_ = subject_.upper()
                                object_ = rel_line.split("|")[3].strip()
                                if "'" in object_:
                                    object_ = object_.replace("'", "\\'")
                                if len(object_.split(" ")) == 1 and not "'" in object_:
                                    object_ = object_.upper()
                                rel = rel_line.split("|")[1].strip().lower()
                                event = {'subject': subject_, 'relation': rel, 'object': object_}
                                event_pubmed_id = rel_line.split("|")[0].strip()
                                event_tag = event['subject'] + "," + event['relation'] + "," + event['object']
                                event_sents = get_event_sents(sentences, event, entities, event_pubmed_id, abstract)

                                if event_tag not in events.keys():
                                    # opposite = None
                                    event['pubmed_ids'] = [event_pubmed_id]
                                    event['sentences'] = event_sents
                                    """
                                    if rel in special_relations:
                                        opposite = "event('" + object_ + "'," + rel + ",'" + subject_ + "')"
                                    event['opposite'] = opposite
                                    """
                                    events[event_tag] = event
                                else:
                                    previous_sentences = [previous_sentence for previous_sentence, _ in
                                                          events[event_tag]['sentences']]

                                    for (sentence, pubmed_id) in event_sents:
                                        if sentence not in previous_sentences:
                                            events[event_tag]['sentences'].append((sentence, pubmed_id))

                                    events[event_tag]['pubmed_ids'].append(event_pubmed_id)

                            except Exception as e:
                                """
                                print(f'Error in file {rel_file}, at line: {relation_on_process}')
                                print(f'No sentences for the event: {event_tag}. PubMed: {pubmed_id}')
                                print(f'Please check the objects\' file {entity_file}.'
                                      f'There are not annotations for the entity {str(e)}')
                                """
                                errors.write(f'Error in file {rel_file}, at line: {relation_on_process}'+ "\n")
                                errors.write(f'No sentences for the event: {event_tag}. PubMed: {pubmed_id}' + "\n")
                                errors.write(f'Please check the objects\' file {entity_file}.' + "\n")
                                errors.write(f'There are not annotations for the entity {str(e)}' + "\n")
                                errors.write(f'----------------------------------------' + "\n")
                        else:
                            rels_lines.insert(0, rel_line)
                            relation_on_process -= 1
                            """
                            if next_abstract_from_entities != pubmed_id_on:
                                print(f'There is a mismatch at the abstract {pubmed_id} at line {abs_line_on_process}')
                                print(f'from entities | from relations: {next_abstract_from_entities} | {pubmed_id_on}')
                                # sys.exit()
                            """

                    else:
                        break

    knowledge_base, synonyms = get_normalized_kb(events, entities, objects_identities)

    print_kb(knowledge_base, root)

    print_synonyms(synonyms, root)
