:-style_check(-discontiguous).
%envento inicio del patron ligando -> receptor o receptor -> receptor
inicio(A,E,B):-base(C),buscar_en_lista(event(A,E,B),C),buscar_en_lista(E,[associate,bind]),(ligand(A);receptor(A)),receptor(B),not(A = B).

%evento final patron tipo 1, tipo 2  transcription_factor -> objeto_de_cierre
final(A,E,B):-base(C),buscar_en_lista(event(A,E,B),C),transcription_factor(A),buscar_en_lista(E,[inhibit,regulate,bind]).

%eventos intermedios en patron tipo 1 mas tipo 2 que unen el envento inicial con el evento final:  proteina->proteina
intermedios(A,E,B):-base(C),buscar_en_lista(event(A,E,B),C),protein(B),buscar_en_lista(E,[associate]).

%evento que crea un patron de 2 enventos .. evento inicio, evento cierre (patron tipo 3, tipo 4)
eventoEspecial(A,E,B):-base(C),buscar_en_lista(event(A,E,B),C),buscar_en_lista(E,[inhibit,regulate,bind]).

%evento adicional para crear los patrones tipo 5
finalEspecial(A,E,B):-base(C),buscar_en_lista(event(A,E,B),C),buscar_en_lista(E,[inhibit,regulate,bind]).
%[bind,activate,inactivate,repress,inhibit,regulate,stimulate]

%Patrones con restricciones de objetos

inicio_rest(A,E,B,L):-buscar_en_lista(A,L),buscar_en_lista(B,L),base(C),buscar_en_lista(event(A,E,B),C),buscar_en_lista(E,[associate,bind]),(ligand(A);receptor(A)),receptor(B),not(A = B).

final_rest(A,E,B,L):-buscar_en_lista(A,L),buscar_en_lista(B,L),base(C),buscar_en_lista(event(A,E,B),C),transcription_factor(A),buscar_en_lista(E,[inhibit,regulate,bind]).

intermedios_rest(A,E,B,L):-buscar_en_lista(B,L),base(C),buscar_en_lista(event(A,E,B),C),protein(B),buscar_en_lista(E,[associate]).

eventoEspecial_rest(A,E,B,L):-buscar_en_lista(A,L),buscar_en_lista(B,L),base(C),buscar_en_lista(event(A,E,B),C),buscar_en_lista(E,[inhibit,regulate,bind]).

buscar_en_lista(L,[L|_]).
buscar_en_lista(L,[_|Ys]):-buscar_en_lista(L,Ys).

objeto(A,E,B):-base(C),buscar_en_lista(event(A,E,B),C),protein(A).

%[trimerize,require,heterodimerize,interact,associate,phosphorylate,recruit,dimerize,recognize,participate,activate,inhibit]
