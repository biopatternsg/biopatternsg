# biopatternsg
A system for modeling and analyzing genetic regulatory networks.
Biopatternsg receives a collection of objects of interest and automatically organizes knowledge bases related to those objects and their potential interactions.
Authors: José Lopez <josesmooth@gmail.com>, Yacson Ramirez <yacson.ramirez@gmail.com>, Jacinto Davila <jacinto.davila@gmail.com>

For the example described here, the list of objects corresponds to COVID-19 and the immune system; examples of sets of objects to model GRNs are:

1. JAK3, STAT, SARS-CoV-2, SARS-CoV-1, ORF6, IMPORTIN, MHC, CD4, CD8, MICA, MICB, MICC, HLA-A, HLA-B, HLA-C, CCR5, CXCR4, ACE2, COVID-19, 

2. JAK3,JAK1,STAT1,STAT2,STAT3,STAT4,STAT5A,STAT5B,STAT6,IPO4,IPO5,IPO7,IPO8,IPO9,IPO11,IPO13,IPO5P1,MICA,MICB,HLA-A,HLA-B,HLA-C,CCR5,ORF6,O RF8,CD4,CD8,CCR5,CXCR4,ACE2,COVID-19,IFNG,IFNA1,IFNB1,IFNGR1,IFNAR1,IFNA8,IFNA,IFNL1,IFN1@,IFNA3,IFN-ALPHA-14,IFNA21,DEXAMETHASONE,HYDROXYCHLOROQUINE,REMDESIVIR,lopinavir-ritonavir,CHLOROQUINE,TOCILIZUMAB,FAVIPIRAVIR,IVERMECTIN,CHLORINE

3. JAK3, JAK1, STAT, IMPORTIN, MICA, MICB, HLA-A, HLA-B, HLA-C, CCR5, ORF6, ORF8, CD4, CD8, CCR5, CXCR4, ACE2, COVID-19, INTERFERON, DEXAMETHASONE, HYDROXYCHLOROQUINE, REMDESIVIR, lopinavir-ritonavir, CHLOROQUINE, TOCILIZUMAB, FAVIPIRAVIR, IVERMECTIN, CHLORINE

The following list describes the content and functionality of each of the generated knowledge bases and the accompanying documentation:

kBase.pl: Contains the general list of regulatory events proposed by the system for the collection of objects of interest.

kBaseDoc.txt: Contains the events described in kBase.pl, along with the sentences from which they are constructed.

pathways.txt: Describes the collection of regulatory pathways (pathways) proposed by the system for the collection of objects of interest. The pathways end in the closing objects indicated by the user; for example, SARS-CoV-2, STAT, and ORF6.

eventsDoc.txt: Contains ONLY the events that make up the collection of pathways present in pathways.txt. Its content is defined by kBaseDoc.txt and pathways.txt. The eventsDoc.txt file is intended to make it easier for the user to review the documentation related to the pathways that the system has proposed in pathways.txt.

kBaseR.pl: Corresponds to a generalized version of kBase.pl. Its purpose is to model a reduced collection of events that facilitates both the search for pathways and their graphical representation. Events are generalized using the notion of synonymous events. For example, the events event('A',bind,'B'), event('A',recognize,'B'), and event('A',interact,'B') are reduced to event('A',bind,'B'). This reduction does not imply any loss of information, as the system reports all the sentences that document each possible variant of each event.

kBaseP.pl: Contains the subset of events defined from kBaseR.pl that shape the pathways proposed in pathways.txt. This file enables the graphical representation of the pathway network and, together with kBaseDoc.txt, allows the content of eventDoc.txt to be defined.

pathwaysDoc.txt: Refers to the pathways listed in pathways.txt, accompanied by a breakdown of the events in each pathway and the sentences from which they are proposed. Just as eventDoc.txt allows you to review the knowledge from which regulatory events are proposed, pathwaysDoc.txt offers the ability to review the knowledge from which each pathway is proposed.

pathwaysObjects.pl: Describes the identity assigned to the objects of interest. The identity refers to whether it is a ligand, receptor, protein, or transcription factor. In principle, the system automatically assigns roles to each object, but this is reviewed manually. Only ligand or receptor objects can initiate regulatory pathways, and every pathway ends with a protein-type target object. The roles guide the exploration of pathways in the kBaseR.pl knowledge base.

network-<object collection>-<print date>.jpg: Corresponds to the graphical representation of the events present in the pathways listed in pathways.txt. <object collection> indicates the closing objects for the pathways in pathways.txt. <print date> allows you to differentiate one graph from another if they are the same collection of closing objects.

minedObjects.txt: Defines all the standard identifiers currently defined for the collection of interest, plus those transcription factors (TFs) obtained automatically. TFs are defined from the regulatory region offered to the system (in this case, SARS-CoV-2). This list also includes objects proposed by the PDB linked to the proposed TFs. Each identifier has a line associated with it, first indicating the object's standard name and the synonyms that the system can automatically propose.

relations-functions.txt: It lists the synonymous interactions for each of the generic interactions that the system handles, in this case: regulate, inhibit, associate, and bind. It can be seen, for example, that for the system, the interactions bind, interact, activate, and recognize are synonymous. Other relations come from the IA available from the NCBI's PubTator service, like: comparison, association, positive_correlation, and negative_correlation.

<object-name>_chainsPathways.txt: Describes chains of connected pathways (subnetworks) that describe regulation and inhibition scenarios for a biological object of interest.
