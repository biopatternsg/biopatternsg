% graph-comparison.pl
% by Gemini 2.5 flash (keeping its representations)
% by J. Dávila (actual comparison) 

:- dynamic vertex/2, edge/4. 
:- discontiguous vertex/2, edge/4.

% --- Graph Representation ---
% Graphs are represented using 'vertex/2' and 'edge/4' facts.
% vertex(GraphID, VertexName)
% edge(GraphID, Vertex1, Vertex2, Label) - Represents an undirected edge with a label.
% For simplicity in checking adjacency, we define edges symmetrically (e.g.,
% if edge(G,a,b,label) exists, then edge(G,b,a,label) also exists). When counting edges,
% we use a canonical form (e.g., U @< V) to avoid double-counting.

% --- Example Graphs ---

% Graph A: A cycle graph with 4 vertices (C4) with labeled edges
vertex(graph_a, v1).
vertex(graph_a, v2).
vertex(graph_a, v3).
vertex(graph_a, v4).
edge(graph_a, v1, v2, 'road'). edge(graph_a, v2, v1, 'road').
edge(graph_a, v2, v3, 'path'). edge(graph_a, v3, v2, 'path').
edge(graph_a, v3, v4, 'road'). edge(graph_a, v4, v3, 'road').
edge(graph_a, v4, v1, 'path'). edge(graph_a, v1, v4, 'path').

% Graph B: A graph with 4 vertices and 4 edges, not a simple cycle (contains a triangle)
vertex(graph_b, a).
vertex(graph_b, b).
vertex(graph_b, c).
vertex(graph_b, d).
edge(graph_b, a, b, 'link1'). edge(graph_b, b, a, 'link1').
edge(graph_b, b, c, 'link2'). edge(graph_b, c, b, 'link2').
edge(graph_b, c, d, 'link3'). edge(graph_b, d, c, 'link3').
edge(graph_b, a, c, 'link4'). edge(graph_b, c, a, 'link4'). % This edge forms a triangle (a-b-c-a)

% Graph C: A complete graph with 3 vertices (K3 or C3) with labeled edges
vertex(graph_c, x).
vertex(graph_c, y).
vertex(graph_c, z).
edge(graph_c, x, y, 'blue'). edge(graph_c, y, x, 'blue').
edge(graph_c, y, z, 'red'). edge(graph_c, z, y, 'red').
edge(graph_c, z, x, 'green'). edge(graph_c, x, z, 'green').

% Graph D: A path graph with 3 vertices (P3) with labeled edges
vertex(graph_d, p).
vertex(graph_d, q).
vertex(graph_d, r).
edge(graph_d, p, q, 'segment_a'). edge(graph_d, q, p, 'segment_a').
edge(graph_d, q, r, 'segment_b'). edge(graph_d, r, q, 'segment_b').

% Graph E: Same structure as Graph A, but with different vertex labels and same edge labels
vertex(graph_e, n1).
vertex(graph_e, n2).
vertex(graph_e, n3).
vertex(graph_e, n4).
edge(graph_e, n1, n2, 'road'). edge(graph_e, n2, n1, 'road').
edge(graph_e, n2, n3, 'path'). edge(graph_e, n3, n2, 'path').
edge(graph_e, n3, n4, 'road'). edge(graph_e, n4, n3, 'road').
edge(graph_e, n4, n1, 'path'). edge(graph_e, n1, n4, 'path').

% Graph F: A path graph with 3 vertices (P3) with different edge labels than Graph D
vertex(graph_f, p1).
vertex(graph_f, q1).
vertex(graph_f, r1).
edge(graph_f, p1, q1, 'alpha'). edge(graph_f, q1, p1, 'alpha').
edge(graph_f, q1, r1, 'beta'). edge(graph_f, r1, q1, 'beta').

% Graph G: A K3 with labels that could match a subset of B's labels (for subgraph isomorphism test)
vertex(graph_g, u1).
vertex(graph_g, u2).
vertex(graph_g, u3).
edge(graph_g, u1, u2, 'link1'). edge(graph_g, u2, u1, 'link1').
edge(graph_g, u2, u3, 'link2'). edge(graph_g, u3, u2, 'link2').
edge(graph_g, u1, u3, 'link4'). edge(graph_g, u3, u1, 'link4').

% Graph H: A P3 with labels that could match a subset of A's labels (for subgraph isomorphism test)
vertex(graph_h, s1).
vertex(graph_h, s2).
vertex(graph_h, s3).
edge(graph_h, s1, s2, 'road'). edge(graph_h, s2, s1, 'road').
edge(graph_h, s2, s3, 'path'). edge(graph_h, s3, s2, 'path').

% Graph H2: A P3 with labels that could match a subset of A's labels (for subgraph isomorphism test)
vertex(graph_h2, s1).
vertex(graph_h2, s2).
vertex(graph_h2, s3).
edge(graph_h2, s1, s2, 'road'). edge(graph_h2, s2, s1, 'road').
edge(graph_h2, s2, s3, 'path'). edge(graph_h2, s3, s2, 'path').

% --- Helper Predicates ---

% get_vertices(GraphID, ListOfVertices)
% Collects all vertices belonging to a given GraphID.
get_vertices(GraphID, Vertices) :-
    %findall(V, vertex(GraphID, V), Vertices).
    findall(X, (edge(GraphID,X,_,_);edge(GraphID,_,X,_)), AVertices), 
    remove_duplicates(AVertices, Vertices). 

% get_edges(GraphID, ListOfUniqueEdges)
% Collects all unique edges for a given GraphID. Edges are represented as (U, V, Label)
get_edges(GraphID, Edges) :-
    findall((U, V, L), (edge(GraphID, U, V, L)), Edges).

% connected_labeled(GraphID, U, V, Label)
% Checks if vertices U and V are connected by an edge with the specified Label in GraphID.
% Assumes symmetric edge facts (edge(G,U,V,L) and edge(G,V,U,L) both exist).
connected_labeled(GraphID, U, V, Label) :-
    edge(GraphID, U, V, Label).
% using synonyms
%connected_labeled(GraphID, U, V, Label) :-
%    synonyms(V, VSyn), 
%    synonyms(U, USyn), 
%    member(NV, VSyn), member(NU, USyn), 
%    edge(GraphID, NU, NV, Label).

% --- 1. General Graph Comparison (Basic Properties) ---

% num_vertices(GraphID, Count)
% Calculates the number of vertices in a graph.
num_vertices(GraphID, Count) :-
    get_vertices(GraphID, Vertices),
    length(Vertices, Count).

% num_edges(GraphID, Count)
% Calculates the number of unique edges in a graph.
num_edges(GraphID, Count) :-
    get_edges(GraphID, Edges),
    length(Edges, Count).

% degree(GraphID, Vertex, Degree)
% Calculates the degree of a specific vertex in a graph.
% Note: This still counts connections regardless of label. For labeled graphs,
% you might want to consider degree per label type for more detailed comparison.
degree(GraphID, Vertex, Degree) :-
    findall(N, (edge(GraphID, Vertex, N, _)), Neighbors),
    length(Neighbors, Degree).

% get_degree_sequence(GraphID, SortedDegrees)
% Retrieves the sorted list of degrees for all vertices in a graph.
% This is a crucial invariant for isomorphism.
get_degree_sequence(GraphID, SortedDegrees) :-
    get_vertices(GraphID, Vertices),
    findall(D, (member(V, Vertices), degree(GraphID, V, D)), Degrees),
    sort(Degrees, SortedDegrees). % Sort to ensure consistent comparison

% same_basic_properties(G1, G2)
% Checks if two graphs have the same number of vertices, edges, and degree sequence.
% These are necessary, but not sufficient, conditions for isomorphism.
same_basic_properties(G1, G2) :-
    num_vertices(G1, NV), num_vertices(G2, NV),
    num_edges(G1, NE), num_edges(G2, NE),
    get_degree_sequence(G1, DS1), get_degree_sequence(G2, DS2),
    DS1 = DS2.

% in_ref
in_ref(Golden, X, Y, (Xh, Rel1, Yh)) :-
	edge(Golden, Xh, Yh, Rel1), 
	(chebi_name(Xh, X) ; X = Xh), 
      	(chebi_name(Yh, Y) ; Y = Yh).  
      	
in_kb(System, X, Y, (Xg, Rel2, Yg)) :-
      	synonyms(X, XSyn), 
    	synonyms(Y, YSyn), 
    	member(Xg, XSyn), member(Yg, YSyn),
      	(edge(System, Xg, Yg, Rel2); edge(System, Yg, Xg, Rel2)). 

% find interaction
true_positive(Golden, System, (Xh, Rel1, Yh)-(Xg, Rel2, Yg) ) :-
	in_ref(Golden, X, Y, (Xh, Rel1, Yh)), 
	in_kb(System, X, Y, (Xg, Rel2, Yg)). 

count_true_positives(Golden, System, Table, TP) :-
	findall(Interaction, true_positive(Golden, System, Interaction), ATable),
	remove_duplicates(ATable, Table),
	length(Table, TP). 
	
false_negative(Golden, System, (Xh, Rel1, Yh)-(Xg, Rel2, Yg) ) :-
	in_ref(Golden, X, Y, (Xh, Rel1, Yh)), 
	not(in_kb(System, X, Y, (Xg, Rel2, Yg))). 
	
count_false_negatives(Golden, System, Table, FN) :-
	findall(Interaction, false_negative(Golden, System, Interaction), ATable),
	remove_duplicates(ATable, Table),
	length(Table, FN).
	
false_positive(Golden, System, (Xh, Rel1, Yh)-(Xg, Rel2, Yg) ) :-
	in_kb(System, X, Y, (Xg, Rel2, Yg)),
	not(in_ref(Golden, X, Y, (Xh, Rel1, Yh))). 
	
count_false_positives(Golden, System, Table, FP) :-
	findall(Interaction, false_positive(Golden, System, Interaction), ATable),
	remove_duplicates(ATable, Table),
	length(Table, FP).
	
fraction(T, F, Fr) :- Fr is T/(T+F).
f1score(P, R, F1) :- F1 is 2*P*R/(P+R). 

% load_file_ref('covid.csv').
load_file_ref(File) :- 
	csv_read_file(File, Rows, [functor(edge), separator(0'\t)]), 
	reorder_rows(ref, Rows, NewRows), 
	maplist(assert, NewRows).
	
reorder_rows(_, [], []). 
reorder_rows(N, [edge(X, Rel, Y)|Rest], [edge(N, X, Y, Rel)|NRest] ):-
	reorder_rows(N, Rest, NRest). 

transform_kb :-
	base(KB), 
	reorder_kb(kb, KB, NewKB), 
	maplist(assert, NewKB). 
	
reorder_kb(_, [], []). 
reorder_kb(N, [event(X,Rel,Y)|Rest], [edge(N, X, Y, Rel)|NRest] ):-
	reorder_kb(N, Rest, NRest). 
	
remove_duplicates([], []).
remove_duplicates([A|R], RR) :-
	member(A, R), !, 
	remove_duplicates(R, RR).
remove_duplicates([A|R], [A|RR]) :-
	remove_duplicates(R, RR).

compare_relations(Graph1, Graph2, Table) :-
	findall((X,Rel1,Rel2,Y), (edge(Graph1, X, Y, Rel1), edge(Graph2, X, Y, Rel2)), ATable),
	remove_duplicates(ATable, Table). 
		
print_list([]).
print_list([A|B]) :-
	writeq(A), nl, 
	print_list(B). 
	
write_kb_ref(ERef) :-
	write('base(['), nl, write_each_event(ERef), writeln(']).'). 
	
write_each_event([]). 
write_each_event([(Xh, Yh, Rel1)]) :-
	write('event('), write(Xh), write(', '), write(Rel1), write(', '), write(Yh), writeln(')'). 
write_each_event([(X1h, Y1h, Rel1), (X2h, Y2h, Rel2)|Rest]) :-	
	write('event('), write(X1h), write(', '), write(Rel1), write(', '), write(Y1h), write('),'), nl, 
	write('event('), write(X2h), write(', '), write(Rel2), write(', '), write(Y2h), write(')'), nl, 
	write_each_event(Rest). 
	
	
% how to execute the whole test
% prepare comparison with restricted kBase.pl
prepare :-  
	[kBase],
	[synonyms], 
	[chebi_names], 
	load_file_ref('kBase.sif'), % for instance. It is a tsv really
	transform_kb.
	%listing(edge/4).
	
prepare_g :-
	[kBase_g],
	[synonyms_g],
	[chebi_names], 
	load_file_ref('kBase.sif'), % for instance. It is a tsv really
	transform_kb.
	%listing(edge/4).
	
compare :- count_true_positives(ref, kb, _Table1, TP),
	   count_false_positives(ref, kb, _Table2, FP),
	   count_false_negatives(ref, kb, _Table3, FN),
	   fraction(TP, FP, Precision),
	   fraction(TP, FN, Recall), 
	   f1score(Precision, Recall, F1),
	   write('True Positives (the ref has them and the system predicts them): '), writeln(TP), 
	   write('False Positives (the ref does not have them but the system predicts them): '), writeln(FP), 
	   write('False Negatives (the ref has them but the system does not predict them): '), writeln(FN),
	   write('Precision (TP/(TP+FP)), from all the predictions, how many are correct: '), writeln(Precision),
	   write('Recall (TP/(TP+FN)): from all the correct ones, how many are predicted: '), writeln(Recall),
	   write('F1 Score (2*Precision*Recall)/(Precision*Recall): '), writeln(F1),
	   write(TP), write('\t'), write(FP), write('\t'), write(FN), write('\t'), write(Precision), write('\t'), write(Recall), write('\t'), writeln(F1). 
	
down :- get_edges(ref, ERef), write_kb_ref(ERef). 

% save the .sif into a .pl graph like kBase.pl for drawing
sif2kb :- load_file_ref('kBase.sif'), tell('kbSif.pl'), down, told, halt.

% F1-Score type reporting
report :-
	write('Number of vertices in Ref .sif = '), 
	num_vertices(ref, NVRef), writeln(NVRef), 
	write('Number of vertices in BioPattern ='), 
	num_vertices(kb, NVBio), writeln(NVBio), 
	write('Number of edges in Ref .sif = '),
	num_edges(ref, NERef), writeln(NERef), 
	write('Number of edges in BioPattern = '),
	num_edges(kb, NEBio), writeln(NEBio), 
	time(compare).

% to produce the report about the smaller/more restricted kBase.pl
run :-
	prepare, compare, tell('report.txt'), 
	writeln('Report on kBase.sif vs kBase.pl'), 
	report, told, halt. % <- halting to avoid mixing kbs
	
% to produce the report about the bigger/unrestricted kBase.pl
run_g :- 
	prepare_g, compare, tell('report_g.txt'), 
	writeln('Report on kBase.sif vs kBase_g.pl'), 
	report, told, halt. % <- halting to avoid mixing kbs

