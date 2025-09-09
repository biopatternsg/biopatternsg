:-style_check(-discontiguous).

inicio(A,E,B):-base(C),buscar_en_lista(event(A,E,B),C),buscar_en_lista(E,[association,bind,interact,interaction]),(ligand(A);receptor(A)),receptor(B),not(A = B).

final(A,E,B):-base(C),buscar_en_lista(event(A,E,B),C),transcription_factor(A),buscar_en_lista(E,[negative_correlation,inhibit,inhibition,positive_correlation,cause,stimulate,stimulation,prevent,prevention]).

intermedios(A,E,B):-base(C),buscar_en_lista(event(A,E,B),C),protein(B),buscar_en_lista(E,[association,interact,interaction]).

eventoEspecial(A,E,B):-base(C),buscar_en_lista(event(A,E,B),C),transcription_factor(A),buscar_en_lista(E,[negative_correlation,inhibit,inhibition,positive_correlation,cause,stimulate,stimulation,prevent,prevention]).

finalEspecial(A,E,B):-base(C),buscar_en_lista(event(A,E,B),C),buscar_en_lista(E,[negative_correlation,inhibit,inhibition,positive_correlation,cause,stimulate,stimulation,prevent,prevention]).

%[negative_correlation,inhibit,inhibition,positive_correlation,cause,stimulate,stimulation,prevent,prevention]

%Patrones con restricciones de objetos

inicio_rest(A,E,B,L):-buscar_en_lista(A,L),buscar_en_lista(B,L),base(C),buscar_en_lista(event(A,E,B),C),buscar_en_lista(E,[association,bind,interact,interaction]),(ligand(A);receptor(A)),receptor(B),not(A = B).

final_rest(A,E,B,L):-buscar_en_lista(A,L),buscar_en_lista(B,L),base(C),buscar_en_lista(event(A,E,B),C),transcription_factor(A),buscar_en_lista(E,[negative_correlation,inhibit,inhibition,positive_correlation,cause,stimulate,stimulation,prevent,prevention]).

intermedios_rest(A,E,B,L):-buscar_en_lista(B,L),base(C),buscar_en_lista(event(A,E,B),C),protein(B),buscar_en_lista(E,[association,interact,interaction]).

eventoEspecial_rest(A,E,B,L):-transcription_factor(A),buscar_en_lista(A,L),buscar_en_lista(B,L),base(C),buscar_en_lista(event(A,E,B),C),buscar_en_lista(E,[negative_correlation,inhibit,inhibition,positive_correlation,cause,stimulate,stimulation,prevent,prevention]).

buscar_en_lista(L,[L|_]).
buscar_en_lista(L,[_|Ys]):-buscar_en_lista(L,Ys).

objeto(A,E,B):-base(C),buscar_en_lista(event(A,E,B),C),transcription_factor(A).
