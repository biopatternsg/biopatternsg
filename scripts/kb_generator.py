import shutil
from os import path
from pathlib import Path
import os
import nltk
import regex
import sys


def get_event_sents(abs_line: str , sentences: list, event: dict, entities: dict, pubmed_id: str, abstract: str) -> list:
    """
    This script gets the sentences in the abstract on process that include both of the biological objects,
    that are part of the regulatory event, described in the event dictionary. When none of the sentences in the abstract
    include both of the biological objects then the whole abstract is used to justify the regulatory event.
    """

    subject = event['subject']
    object = event['object']

    subject_entities = entities[subject]

    object_entities = entities[object]

    subject_names = []
    object_names = []
    relation_sents = []

    for subject_entity in subject_entities:
        subject_name = subject_entity['text']
        if subject_name not in subject_names:
            subject_names.append(subject_name)

    for object_entity in object_entities:
        object_name = object_entity['text']
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
    """
    This script takes all the occurrences of an entity in the set of abstracts and produces a
    description of that entity, with only one ID that summarizes all the different ways the
    entity is named in the all the sentences in the corpus from PubTator. The script also
    takes the set of regulatory events and produces a representation for each one that includes
    its two entities and, from them, the different synonyms they have. Each regulatory
    event includes the different sentences in which it occurs, and the related PubMed IDs.
    The script is named get_normalized_kb because each biological object gets only one name
    in the KB; and because when a regulatory event occur many times in the corpus, a unique
    representation is build up for it in the normalized KB that the script returns.
    """

    knowledge_base = {}
    object_synonyms = {}  # Stores the different ways a biological object is named in the corpus.
    biotypes_path = root + "/biotypes.pl"
    identities_path = root + "/kb_objects.txt"

    print("Normalizing the knowledge base......." + "\n")

    with open(biotypes_path, 'w', encoding="utf8") as biotypes:

        biotypes.write(
            "% The identities for the objects present in the knowledge base, as pubtator predicts." + "\n" + "\n")

        for _, identity in objects_identities_:
            biotypes.write(identity + "\n")

    with open(identities_path, 'w', encoding="utf8") as identities:

        for entity_id_, _ in objects_identities_:
            identities.write(entity_id_ + "\n")

    for key, values in events.items():

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
                subject_names.append(subject_name)  # Adding all the different ways an object is named in the abstracts,

            if subject_entity['ID'] not in subject_names:
                subject_names.append(
                    subject_entity['ID'])  # Adding the original symbol from pubtator (field 2 from entities file)

            if subject_entity['text'] not in subject_names:
                subject_names.append(
                    subject_entity['text'])  # Adding the original text from pubtator (field 7 from entities file)

        if subject not in object_synonyms.keys():
            object_synonyms[subject] = subject_names

        for object_entity in object_entities:

            object_name = object_entity['name']

            if object_name not in object_names:
                object_names.append(object_name)

            if object_entity['ID'] not in object_names:
                object_names.append(
                    object_entity['ID'])  # Adding the original symbol from pubtator (field 2 from entities file)

            if object_entity['text'] not in object_names:
                object_names.append(
                    object_entity['text'])  # Adding the original text from pubtator (field 7 from entities file)

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

            if values['opposite']:
                kb.write(values['opposite'] + "," + "\n")

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



def print_synonyms(objects_synonyms: dict, root: str) -> None:
    synonyms_path = root + "/synonyms.pl"

    new_objects_path = root + "/objects_in_kb.txt"

    with open(synonyms_path, 'w', encoding="utf8") as syms_fl:
        syms_fl.write("% Objects and their synonyms from Pubtator" + '\n' + '\n')

        for obj, synonyms in objects_synonyms.items():
            syms_fl.write(f'synonyms(\'{obj}\', {synonyms}).' + '\n')
            # print(f'synonyms(\'{obj}\', {synonyms}).')


def print_aligned_objs(root: str, synonyms_: dict, biopatternsg_directory: str) -> None:

    print("Current working directory: " + biopatternsg_directory)
    # cwd = "/home/jose-lopez/NetBeansProjects/biopatternsg/minery/networks/EVALUATION/CREB-phosphorylation"
    # Setting the user\`s biological objects file ( named expert_objects.txt) path
    # for the experiment on process
    experiment_on_process = root.split("/")[-2] + "/" + root.split("/")[-1]
    user_objects_path = biopatternsg_directory + "/" + "data/" + experiment_on_process + "/expert_objects.txt"

    # The file to report the aligned objects
    aligned_objects_path = root + "/aligned.pl"

    user_objects = []
    aligned_objects = []
    no_aligned_objects = []
    aligned_as_objects_ = {}

    try:
        with open(user_objects_path, 'r', encoding="utf8") as usr_objs_fl:
            user_objects = [line.strip() for line in usr_objs_fl.readlines()]
    except Exception as e:
            # A catch-all for any other unexpected exceptions (use sparingly)
            print(
                f"Please, to print the aligned objects provide a correct file named expert_objects.txt in the data folder" + "\n" + "\n")
            print(f'This is the cause of the problem :')
            print(f'{e}')

    for i in range(len(user_objects)):
        obj = user_objects[i]
        if "'" in obj:
            obj = obj.replace("'", "\\'")
            user_objects[i] = obj


    user_objects = [obj.upper() for obj in user_objects]

    with open(aligned_objects_path, 'w', encoding="utf8") as aligned_objs_fl:

        aligned_objects = [obj for obj in user_objects if obj in synonyms_.keys()]

        for id_ in user_objects:
            aligned_as_objects_[id_] = []
            for main_id, synonyms_ids in synonyms_.items():
                if id_ in synonyms_ids:
                    if main_id not in aligned_as_objects_[id_]:
                        aligned_as_objects_[id_].append(main_id)


        no_aligned_objects = [no_alg for no_alg, alt_ids in aligned_as_objects_.items() if not alt_ids]

        for i in range(len(aligned_objects)):
            obj = aligned_objects[i]
            if "'" in obj:
                obj = obj.replace("\\'", "'")
                aligned_objects[i] = obj

        for i in range(len(no_aligned_objects)):
            obj = no_aligned_objects[i]
            if "'" in obj:
                obj = obj.replace("\\'", "'")
                no_aligned_objects[i] = obj

        aligned_as_objects = []
        for main_id, alt_ids in aligned_as_objects_.items():
            if len(alt_ids) == 1 and alt_ids[0] != main_id:
                aligned_as_objects.append((main_id.replace("\\\\'", "'"), alt_ids))
            elif len(alt_ids) > 1:
                aligned_as_objects.append((main_id.replace("\\\\'", "'"), alt_ids))


        aligned_objs_fl.write(f'% The list of user\'s objects aligned and no aligned with the PubTator\'s IDs in the KB' + '\n' + '\n')

        aligned_objs_fl.write(f'% Aligned objects: ' + '\n'+ '\n')


        if aligned_objects:
            for obj_ in aligned_objects:
                obj_ = obj_.replace("\\\\'", "'")
                aligned_objs_fl.write(f'aligned(\'{obj_}\').' + '\n')
        else:
            aligned_objs_fl.write(f'aligned(none).' + '\n')

        aligned_objs_fl.write('\n'+ f'% No aligned objects: ' + '\n'+ '\n')
        if no_aligned_objects:
            for obj_ in no_aligned_objects:
                obj_ = obj_.replace("\\\\'", "'")
                aligned_objs_fl.write(f'no_aligned(\'{obj_}\').' + '\n')
        else:
            aligned_objs_fl.write(f'no_aligned(none).' + '\n'+ '\n')

        aligned_objs_fl.write('\n'+ f'% User\'s objects with alternative alignments: ' + '\n'+ '\n')

        list_of_aligned_as_objects = []
        if aligned_as_objects:
            for main_id, alt_ids in aligned_as_objects:
                new_list_of_aligned_objects = [id_ for id_ in alt_ids if id_ not in list_of_aligned_as_objects]
                list_of_aligned_as_objects += new_list_of_aligned_objects
                main_id = main_id.replace("\\'", "'")
                aligned_objs_fl.write(f'aligned_as(\'{main_id}\', {alt_ids}).' + '\n')
        else:
            aligned_objs_fl.write(f'aligned_as(none, none).' + '\n')

        aligned_objs_fl.write('\n' + f'% General report of aligned and no aligned objects: ' + '\n'+ '\n')

        aligned_objs_fl.write(f'aligned_objs({aligned_objects}, {len(aligned_objects)}).' + '\n'+ '\n')

        aligned_objs_fl.write(f'no_aligned_objs({no_aligned_objects}, {len(no_aligned_objects)}).' + '\n'+ '\n')

        aligd_as_objects = []
        if aligned_as_objects:
            aligd_as_objects = [obj for (obj, _) in aligned_as_objects]

        aligned_objs_fl.write(f'aligned_as({aligd_as_objects}, {len(aligd_as_objects)}).' + '\n' + '\n')

        related_objects = list(set(aligned_objects) | set(list_of_aligned_as_objects))

        aligned_objs_fl.write(f'aligned_and_alternatives({related_objects}, {len(related_objects)}).')


if __name__ == '__main__':
    """
    A python script that generates the KB of events and entities in prolog format using the 
    predictions coming from PubTator.
    """

    # print("\n" + f'kb_generator: A python script to get regulatory events from pubtator files' + "\n")

    # Setting the main folders

    for arg in sys.argv:
        print(f'{arg}')

    restrict = sys.argv[2]
    restricted_list = []

    if restrict == "R" or restrict == "V":
        user_list_ = sys.argv[3].split(";")
        if user_list_:
            restricted_list = [obj_.strip().upper() for obj_ in user_list_]
        else:
            print("Please, provide the objects to restrict the knowledge base")
            sys.exit()

    for i in range(len(restricted_list)):
        obj = restricted_list[i]
        if "'" in obj:
            obj = obj.replace("'", "\\'")
            restricted_list[i] = obj

    root = sys.argv[1]
    print(f'root: {root}')

    working_dir = sys.argv[4]

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
    """
        nltk.download('punkt')
        nltk.download('punkt_tab')
    """

    # These relations are processed in a different way when we are building the regulatory events.
    special_relations = ['positive_correlation', 'negative_correlation']

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
    # Each object in the KB with its biological identity (ligand. protein or disease)
    objects_identities = []  # Each object in the KB with its biological identity (ligand. protein or disease)
    # This list of objects only has sense when the user provides a restricted list of objects.
    objects_in_restricted_kb = []

    print("\n" + f'Getting the knowledge base of regulatory events::')
    print(f'***********************************************' + "\n")

    with open(logs_files_path + '/errors.txt', 'w', encoding="utf8") as errors:

        block_on_process = 0

        for abs_file in abs_files:

            block_on_process += 1

            print("Processing PubTator file {}: {}/{}".format(abs_file.split("/")[-1],
                                                              block_on_process, blocks_to_process), "\n")

            with open(abs_file, 'r', encoding="utf8") as abs_fl:
                abs_lines = [line.strip() for line in abs_fl.readlines()]

            entity_file = entities_files[block_on_process - 1]
            with open(entity_file, 'r', encoding="utf8") as ent_fl:
                entities_lines = [line.strip() for line in ent_fl.readlines()]

            rel_file = rels_files[block_on_process - 1]
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
                                entity_id = entity_line.split(" | ")[2].strip()

                                if "'" in entity_id:
                                    entity_id = entity_id.replace("'", "\\'")

                                entity_id = entity_id.upper()

                                entity['ID'] = entity_id
                                entity['start'] = int(entity_line.split(" | ")[3])
                                entity['end'] = entity['start'] + int(entity_line.split(" | ")[4])
                                entity['text'] = abstract[entity['start']:entity['end']]
                                if "'" in entity['text']:
                                    entity['text'] = entity['text'].replace("'", "\\'")
                                entity['text'] = entity['text'].upper()
                                entity['name'] = entity_line.split(" | ")[7]
                                if "'" in entity['name']:
                                    entity['name'] = entity['name'].replace("'", "\\'")
                                entity['name'] = entity['name'].upper()
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
                                subject_ = subject_.upper()

                                object_ = rel_line.split("|")[3].strip()
                                if "'" in object_:
                                    object_ = object_.replace("'", "\\'")
                                object_ = object_.upper()

                                if restricted_list and restrict == "R":
                                    if not ((subject_ in restricted_list) or (object_ in restricted_list)):
                                        continue
                                if restricted_list and restrict == "V":
                                    if not ((subject_ in restricted_list) and (object_ in restricted_list)):
                                        continue

                                if restricted_list:

                                    if subject_ not in objects_in_restricted_kb:
                                        objects_in_restricted_kb.append(subject_)
                                    if object_ not in objects_in_restricted_kb:
                                        objects_in_restricted_kb.append(object_)

                                rel = rel_line.split("|")[1].strip().lower()
                                event = {'subject': subject_, 'relation': rel, 'object': object_}
                                event_pubmed_id = rel_line.split("|")[0].strip()
                                event_tag = event['subject'] + "," + event['relation'] + "," + event['object']
                                event_sents = get_event_sents(abs_line, sentences, event, entities, event_pubmed_id, abstract)

                                if event_tag not in events.keys():
                                    opposite = None
                                    event['pubmed_ids'] = [event_pubmed_id]
                                    event['sentences'] = event_sents
                                    if rel in special_relations:
                                        opposite = "event('" + object_ + "'," + rel + ",'" + subject_ + "')"
                                    event['opposite'] = opposite
                                    events[event_tag] = event
                                else:
                                    previous_sentences = [previous_sentence for previous_sentence, _ in
                                                          events[event_tag]['sentences']]

                                    for (sentence, pubmed_id) in event_sents:
                                        if sentence not in previous_sentences:
                                            events[event_tag]['sentences'].append((sentence, pubmed_id))

                                    events[event_tag]['pubmed_ids'].append(event_pubmed_id)

                            except:
                                errors.write(f'Error in file {rel_file}, at line: {relation_on_process}' + "\n")
                                errors.write(f'No sentences for the event: {event_tag}. PubMed: {pubmed_id}' + "\n")
                                errors.write(f'Please check the objects\' file {entity_file}.' + "\n")
                                errors.write(f'----------------------------------------' + "\n")
                        else:
                            rels_lines.insert(0, rel_line)
                            relation_on_process -= 1
                            """
                            There are cases in which an abstract has entities but PubTator does not report relations between them.
                            In those cases the next pubmed id abstract to process from the entities file does not match the 
                            next pubmed id abstract to process in the corresponding relations_*.txt file; in those cases there are not
                            relations to report. This is not a mistake, and the code below is yet here just to remind the situation
                            if one want to track those cases.
                            """
                            """
                            if next_abstract_from_entities != pubmed_id_on:
                                print(f'There is a mismatch at the abstract {pubmed_id} | abstracts file {abs_files[block_on_process].split("/")[-1]} | line {abs_line_on_process + 1}')
                                print(f'next abstract from entities | next abstract from relations: {next_abstract_from_entities} | {pubmed_id_on}')
                                
                            """

                    else:
                        break

    # If the KB is must be restricted then the entities and tne objects_identities must be restricted to.
    if objects_in_restricted_kb:
        print("Restricting the objects in the knowledge base......." + "\n")
        entities_ = {}
        objects_identities_ = []
        for entity_id, entity in entities.items():
            if entity_id in objects_in_restricted_kb:
                entities_[entity_id] = entity
        for (entity_id, object_identity) in objects_identities:
            if entity_id in objects_in_restricted_kb:
                objects_identities_.append((entity_id, object_identity))
        knowledge_base, synonyms = get_normalized_kb(events, entities_, objects_identities_)
    else:
        knowledge_base, synonyms = get_normalized_kb(events, entities, objects_identities)

    # knowledge_base, synonyms = get_normalized_kb(events, entities, objects_identities)
    print("Printing the knowledge base......." + "\n")
    print_kb(knowledge_base, root)

    print("Printing the synonyms for the objects in the knowledge base......." + "\n")
    print_synonyms(synonyms, root)

    print("Printing the aligned names of user objects w.r.t the PubTator\' IDs ......." + "\n")
    print_aligned_objs(root, synonyms, working_dir)

    print("Knowledge base generation finished......." + "\n")
