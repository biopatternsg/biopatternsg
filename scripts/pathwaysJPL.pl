:-style_check(-discontiguous).

%%%%%%%%%%%%%%%%%%%%% 

% The seearch for pathways is made without a restricted list of objects.

%%%%%%%%%%%%%%%%%%%%%

%evento inicio del patron ligando -> receptor o receptor -> receptor.
inicio(A,E,B):-
	base(C),
	buscar_en_lista(event(A,E,B),C),
	relations_start(R_start),
	buscar_en_lista(E,R_start),
	restrictions_start(A,B).

%evento final patron tipo 1, tipo 2  transcription_factor -> objeto_de_cierre.
final(A,E,B):-
	base(C),
	buscar_en_lista(event(A,E,B),C),
	relations_end(R_end),	
	buscar_en_lista(E,R_end),
	restrictions_end(A,B).
	
%eventos intermedios en patron tipo 1 mas tipo 2 que unen el envento inicial con el evento final:  proteina->proteina
intermedios(A,E,B):-
	base(C),
	buscar_en_lista(event(A,E,B),C),
	relations_middle(R_middle),
	buscar_en_lista(E,R_middle),
	restrictions_middle(A,B).

%evento especial que crea un patron de 2 eventos: 1) evento inicio (ya definido) 
% desde el que se toman el objeto A al que se agrega 2) evento especial de cierre
% determinado aquí (patron tipo 3, tipo 4).
eventoEspecial(A,E,B):-
	base(C),
	buscar_en_lista(event(A,E,B),C),
	relations_end(R_end),	
	buscar_en_lista(E,R_end).

%evento adicional para crear los patrones tipo 5
finalEspecial(A,E,B):-
	base(C),
	buscar_en_lista(event(A,E,B),C),
	relations_end(R_end),	
	buscar_en_lista(E,R_end).

%%%%%%%%%%%%%%%%%%%%% 

% The search for pathways is made only with the list L of objects coming from the user.

%%%%%%%%%%%%%%%%%%%%%


%evento inicio del patron ligando -> receptor o receptor -> receptor.
inicio_rest(A,E,B,L):-
	buscar_en_lista(A,L), % To be activated when the ligands or receptors in A must come from the restricted list L.
	buscar_en_lista(B,L),
	base(C),
	buscar_en_lista(event(A,E,B),C),
	relations_start(R_start),
	buscar_en_lista(E,R_start),
	restrictions_start(A,B).

%evento final patron tipo 1, tipo 2  transcription_factor -> objeto_de_cierre.
final_rest(A,E,B,L):-
	buscar_en_lista(A,L),
	buscar_en_lista(B,L),
	base(C),
	buscar_en_lista(event(A,E,B),C),
	relations_end(R_end),
	buscar_en_lista(E,R_end),
	restrictions_end(A,B).
	
%eventos intermedios en patrón tipo 1/tipo 2 que unen el envento inicial con el evento final.
intermedios_rest(A,E,B,L):-
	buscar_en_lista(A,L),
	buscar_en_lista(B,L),
	base(C),
	buscar_en_lista(event(A,E,B),C),
	relations_middle(R_middle),
	buscar_en_lista(E,R_middle),
	restrictions_middle(A,B).	
	
%evento especial que crea un patron de 2 eventos: 1) evento inicio (ya definido) 
% desde el que se toman el objeto A al que se agrega 2) evento especial de cierre
% determinado aquí (patron tipo 3, tipo 4).
eventoEspecial_rest(A,E,B,L):-
	buscar_en_lista(A,L),
	buscar_en_lista(B,L),
	base(C),
	buscar_en_lista(event(A,E,B),C),
	relations_end(R_end),
	buscar_en_lista(E,R_end).


%%%%%%%%%%%%%%%%%%%%% Restrictions for the objects and kind of interactions 

% This section will take form by means of the restrictions coming from the users
% and those restrictions depends on the kind of pathways they are modeling.

%%%%%%%%%%%%%%%%%%%%%	

%The set of restrictions for the objects at the beginning of a pathway.
restrictions_start(A,B):- 
	(ligand(A); protein(A)),
	protein(B),
	not(A = B).
	
%The set of valid relations/interactions at the beginning of a pathway.	
relations_start([association,bind,interact,interaction]).

%The set of restriction for the objects at the end of a pathway.	
restrictions_end(A,B):- 
	protein(A),
	(protein(B); disease(B)).
	
%The set of valid relations/interactions at the end of a pathway.	
relations_end([negative_correlation,inhibit,inhibition,positive_correlation,bind,cause,stimulate,stimulation,prevent,prevention]).

%The set of restriction for the objects in the middle of a pathway.
restrictions_middle(A,B):-
	protein(A),
	protein(B),
        not(A = B).

%The set of valid relations/interactions in the middle of a pathway.
relations_middle([association,interact,interaction]).
	
%Predicado para la búsqueda de objetos en una lista.
buscar_en_lista(L,[L|_]).
buscar_en_lista(L,[_|Ys]):-buscar_en_lista(L,Ys).
