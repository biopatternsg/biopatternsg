% graph-comparison.pl
% by Gemini 2.5 flash (does not work)
% by J. Dávila (does work) 

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

% --- 2. Graph Isomorphism ---

% isomorphic(G1, G2)
% Determines if two graphs G1 and G2 are isomorphic, considering edge labels.
% It first performs basic property checks and then attempts to find a
% bijective mapping that preserves adjacency and edge labels.
isomorphic(G1, G2) :-
    % Preliminary checks for efficiency: if basic properties don't match,
    % they cannot be isomorphic.
    same_basic_properties(G1, G2),
    % Get vertices of both graphs
    get_vertices(G1, V1),
    get_vertices(G2, V2),
    % Find a permutation (bijection) from V1 to V2.
    % MappingList will be a list of (V1_node, V2_node) pairs.
    permutation_mapping(V1, V2, MappingList),
    % Check if this mapping preserves adjacency and edge labels.
    preserves_adjacency(G1, G2, MappingList).

% permutation_mapping(List1, List2, MappingList)
% Generates a permutation of List2 and creates a mapping list from List1 to List2.
% This is a custom predicate as standard `permutation/2` doesn't build the mapping.
permutation_mapping([], [], []).
permutation_mapping([H1|T1], L2, [(H1, H2)|MappingTail]) :-
    select(H2, L2, RemainingL2), % Select H2 from L2, leaving RemainingL2
    permutation_mapping(T1, RemainingL2, MappingTail).

% preserves_adjacency(G1, G2, MappingList)
% Checks if the given MappingList (a list of (V1_node, V2_node) pairs)
% ensures that for every pair of vertices in G1, their adjacency status
% (connected or not connected, AND label if connected) is mirrored by their
% mapped counterparts in G2.
preserves_adjacency(G1, G2, MappingList) :-
    get_vertices(G1, V1),
    % Iterate over all unique pairs of vertices (U, V) in G1.
    forall(
        (member(U, V1), member(V, V1), U @< V),
        (
            % Find the mapped vertices for U and V
            member((U, MappedU), MappingList),
            member((V, MappedV), MappingList),
            % Check if adjacency and label are preserved
            (
                (
                    % If connected in G1 with a specific label
                    connected_labeled(G1, U, V, LabelG1)
                ) -> (
                    % Then must be connected in G2 with the SAME label
                    connected_labeled(G2, MappedU, MappedV, LabelG1)
                )
                ; % else (not connected in G1, or connected with a different label)
                (
                    % If NOT connected in G1 (with any label)
                    \+ connected_labeled(G1, U, V, _)
                ) -> (
                    % Then must NOT be connected in G2 (with any label)
                    \+ connected_labeled(G2, MappedU, MappedV, _)
                )
            )
        )
    ).

% --- 3. Subgraph Check ---

% is_subgraph(H, G)
% Checks if graph H is a subgraph of graph G.
% This means all vertices of H must be in G, and all edges of H must be in G
% (and their endpoints must also be in G), including matching edge labels.
is_subgraph(H, G) :-
    % All vertices of H must be vertices of G.
    forall(vertex(H, Vh), vertex(G, Vh)),
    % All unique edges of H must be edges of G, and their endpoints must be in G,
    % and the labels must match.
    forall(
        (edge(H, Uh, Vh, Lh), Uh @< Vh), % Iterate over unique labeled edges in H
        (
            vertex(G, Uh), % Ensure endpoints are in G
            vertex(G, Vh),
            edge(G, Uh, Vh, Lh) % Ensure the edge with the same label exists in G
        )
    ).


% --- Subgraph Isomorphism (Brute-force Solution - for comparison) ---

% is_subgraph_isomorphic_bruteforce(H, G)
% Checks if graph G contains a subgraph that is isomorphic to graph H,
% considering edge labels, using the brute-force method (generating induced subgraphs).
is_subgraph_isomorphic(H, G) :-
    get_vertices(H, Vh),
    length(Vh, NumVh), % Get the number of vertices in graph H
    get_vertices(G, Vg),
    % Find a subset of vertices in G that has the same number of vertices as H.
    subset_of_size(Vg, NumVh, SubVg),
    % Create a temporary induced subgraph (g_prime) from G using the selected subset of vertices.
    % Edges in g_prime will carry their original labels from G.
    make_induced_subgraph(G, SubVg, g_prime),
    % Check if H is isomorphic to this induced subgraph.
    isomorphic(H, g_prime),
    % Clean up the temporary induced subgraph facts to avoid conflicts in subsequent queries.
    listing(edge(g_prime,  _, _, _)), 
    retractall(vertex(g_prime, _)),
    retractall(edge(g_prime, _, _, _)). % Updated to retract edge/4 facts

% subset_of_size(List, Size, Subset)
% Generates subsets of List that have a specific Size.
subset_of_size(List, Size, Subset) :-
    length(Subset, Size),
    subset(List, Subset). % `subset/2` is often a built-in or standard library predicate.
                          % If not, a simple definition is provided below.

% make_induced_subgraph(OriginalGraphID, VerticesSubset, InducedGraphID)
% Dynamically asserts facts for an induced subgraph.
% An induced subgraph contains all edges from the original graph whose
% endpoints are both in the VerticesSubset, preserving their labels.
make_induced_subgraph(OriginalGraphID, VerticesSubset, InducedGraphID) :-
    % Assert vertices for the new induced subgraph
    forall(member(V, VerticesSubset), assertz(vertex(InducedGraphID, V))),
    % Assert edges for the new induced subgraph, preserving labels
    forall(
        (
            member(U, VerticesSubset),
            member(V, VerticesSubset),
            U @< V, % Ensure unique edge pairs
            connected_labeled(OriginalGraphID, U, V, Label)
        ),
        (
            assertz(edge(InducedGraphID, U, V, Label)),
            assertz(edge(InducedGraphID, V, U, Label)) % Assert symmetrically for connected_labeled/4
        )
    ).

% --- Basic subset/2 predicate (if not built-in) ---
% subset([], []).
% subset([H|T], [H|SubT]) :-
%     subset(T, SubT).
% subset([_|T], SubT) :-
%     subset(T, SubT).

% --- Example Queries ---
% To run these, load the .pl file in a Prolog interpreter (e.g., SWI-Prolog).

% General Graph Comparison:
% ?- num_vertices(graph_a, N).
% N = 4.
% ?- num_edges(graph_a, N).
% N = 4.
% ?- degree(graph_a, v1, D).
% D = 2.
% ?- get_degree_sequence(graph_a, DS).
% DS = [2, 2, 2, 2].
% ?- get_degree_sequence(graph_b, DS).
% DS = [2, 3, 3, 2].
% ?- same_basic_properties(graph_a, graph_e).
% true.
% ?- same_basic_properties(graph_a, graph_b).
% false.

% Graph Isomorphism (now considers edge labels):
% ?- isomorphic(graph_a, graph_e).
% true. % Graph A (C4) is isomorphic to Graph E (another C4 with different labels)
% ?- isomorphic(graph_a, graph_b).
% false. % Graph A (C4) is not isomorphic to Graph B (contains a triangle and different labels)
% ?- isomorphic(graph_c, graph_d).
% false. % Graph C (K3) is not isomorphic to Graph D (P3)
% ?- isomorphic(graph_d, graph_f).
% false. % Graph D (P3) is NOT isomorphic to Graph F (P3) because of different edge labels.

% Subgraph Check (now considers edge labels):
% ?- is_subgraph(graph_h, graph_a).
% false. % graph_h is not a direct subgraph of graph_a because vertex names don't match exactly.
%        % `is_subgraph` is for direct containment, not structural similarity.
%        % For example, vertex(graph_h, s1) is not vertex(graph_a, s1).

% Subgraph Isomorphism (using the efficient backtracking solution):
% ?- is_subgraph_isomorphic(graph_g, graph_b).
% true. % Graph B contains a subgraph isomorphic to Graph G (K3 with specific labels).
%        % The (a,b,c) vertices in graph_b form a K3 with edges (a,b,'link1'), (b,c,'link2'), (a,c,'link4'),
%        % which exactly matches graph_g's structure and labels.
% ?- is_subgraph_isomorphic(graph_c, graph_b).
% false. % Graph B does NOT contain a subgraph isomorphic to Graph C, because the edge labels ('blue', 'red', 'green')
%        % of Graph C do not match the labels ('link1', 'link2', 'link4') of the triangle in Graph B.
% ?- is_subgraph_isomorphic(graph_h, graph_a).
% true. % Graph A contains a subgraph isomorphic to Graph H (P3 with specific labels).
%        % For example, (v1,v2,v3) in graph_a has edges (v1,v2,'road') and (v2,v3,'path'),
%        % which matches graph_h's (s1,s2,'road') and (s2,s3,'path').
% ?- is_subgraph_isomorphic(graph_d, graph_a).
% false. % Graph A does NOT contain a subgraph isomorphic to Graph D, because Graph D's edge labels
%        % ('segment_a', 'segment_b') do not match any sequence of two consecutive edge labels in Graph A
%        % (which has 'road', 'path' or 'path', 'road').
% ?- is_subgraph_isomorphic(graph_a, graph_c).
% false. % Graph C (K3) does not contain a subgraph isomorphic to Graph A (C4)
%        % (C4 has 4 vertices, K3 has 3).

% is_common_subpath(H, G, Path)

% Checks if graph G contains a subpath that is also in graph H,
% considering edge labels, using an efficient backtracking algorithm.
is_common_subpath(H, G, Path) :-
    get_vertices(H, Vh_list),
    %get_vertices(G, Vg_list),
    select(V, Vh_list, _RestH), 
    % Start the backtracking search for a mapping.
    find_subpath_mapping(H, G, V, [V], Path),
    length(Path,N), N>1. 

% find_subpath_mapping(H, G, V, Visited, Path)
% find_subpath_mapping(H, G, V, Visited, [(V,V)|NewMapping]) :-
%    edge(H, V, Hnext, _), not(member(Hnext, Visited)), 
%    edge(G, V, Hnext, _), 
%    find_subpath_mapping(H, G, Hnext, [Hnext|Visited], NewMapping).
% using synonyms lists:
find_subpath_mapping(H, G, V, Visited, [(V,NV)|NewMapping]) :-
    edge(H, V, Hnext, _), 
    not(member(Hnext, Visited)),
    (chebi_name(V, VV) ; VV = V), % either has a chebi name or not
    (chebi_name(Hnext, HH) ; HH = Hnext), % either has a chebi name or not
    synonyms(VV, VSyn), 
    synonyms(HH, HSyn), 
    member(NV, VSyn), member(NHnext, HSyn), 
    (edge(G, NV, NHnext, _); edge(G, NHnext, NV, _)), 
    find_subpath_mapping(H, G, Hnext, [Hnext|Visited], NewMapping).

% Base case: Subpath with size > 1 in H cannot no longer be extended from V
find_subpath_mapping(_H, _, V, _, [(V,V)]).  
    
somehow_connected(G, X, Y, _) :-
	edge(G, X,Y, _).
	
somehow_connected(G, X, Y, Visited) :-
	edge(G, X,Z, _), not(member(Z, Visited)), 
	somehow_connected(G, Z, Y, [Z|Visited]). 

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
	
% compare_relations_in_subpath(Graph1, Graph2, Path, Table).
compare_relations_in_subpath(_Graph1, _Graph2, [], []).

compare_relations_in_subpath(Graph1, Graph2, [(Xh, Xg),(Yh, Yg)], [(Xh,Rel1,Rel2,Yh)]) :-
	edge(Graph1, Xh, Yh, Rel1), (edge(Graph2, Xg, Yg, Rel2); edge(Graph2, Yg, Xg, Rel2)).

compare_relations_in_subpath(Graph1, Graph2, [(Xh, Xg),(Yh, Yg)|RPath], [(Xh,Rel1,Rel2,Yh)|Table]) :-
	edge(Graph1, Xh, Yh, Rel1), (edge(Graph2, Xg, Yg, Rel2); edge(Graph2, Yg, Xg, Rel2)),
	compare_relations_in_subpath(Graph1, Graph2, [(Yh, Yg)|RPath], Table). 
	
produce_all_common_paths(CC, N) :-
	findall(Table, (is_common_subpath(ref, kb, Path), compare_relations_in_subpath(ref, kb, Path, Table)), C),
	remove_duplicates(C, CC), 
	length(CC,N).
	
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
% ['../graph-comparison.pl'].
% [kBase].
% load_file_ref('kBase.sif'). % for instance. It is a tsv really
% transform_kb.
% listing(edge/4).
% is_subgraph_isomorphic(ref, kb, Mapping).
% compare_relations(ref, kb, Table). 
% is_common_subpath(ref, kb, Path).
% is_common_subpath(ref, kb, Path), compare_relations_in_subpath(ref, kb, Path, Table). 
	
prepare :-  
	[kBase],
	[synonyms], 
	[chebi_names], 
	load_file_ref('kBase.sif'), % for instance. It is a tsv really
	transform_kb,
	listing(edge/4).
	
compare :-
	produce_all_common_paths(Table, N), 
	write('The structure is: Initial Vertex, Relationship in Sif, Relationship in BioPatterns, Final Vertex'), nl, 
	print_list(Table), 
	write('Number of paths common to Sif Ref and BioPatterns = '), writeln(N). 
	
verify :- time(is_subgraph_isomorphic(ref, kb)). 
	
down :- get_edges(ref, ERef), write_kb_ref(ERef). 	
	
report :-
	write('Number of vertices in Ref .sif = '), 
	num_vertices(ref, NVRef), writeln(NVRef), 
	write('Number of vertices in BioPattern kBase.pl ='), 
	num_vertices(kb, NVBio), writeln(NVBio), 
	write('Number of edges in Ref .sif = '),
	num_edges(ref, NERef), writeln(NERef), 
	write('Number of edges in BioPattern kBase.pl = '),
	num_edges(kb, NEBio), writeln(NEBio), 
	writeln('Common Paths found in this .sif and in the .pl'), 
	time(compare).

run :-
	prepare, compare, tell('report.txt'), report, told.  
