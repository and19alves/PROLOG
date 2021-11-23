%Retira a vogal da lista


vogal(a).
vogal(e).
vogal(i).
vogal(o).
vogal(u).

% [a,b,c,d,e] -> [b,c,d]

%Casos Bases:

%Caso tenha um elemento e ele seja vogal:
tiraVogal([X],[]) :- vogal(X),!.

% Ao executar aqui, sabemos que não é vogal, logo, passa-se X direto
tiraVogal([X],[X]) :- !.

%Caso Geral
%Caso Head seja vogal, passa-se Tail e R
tiraVogal([H|T],R) :- 	vogal(H), tiraVogal(T,R),!.
    
%Caso Head não seja vogal, passa-se Tail e R, MAS adicionando na saida o H(Head).
tiraVogal([H|T],[H|R]) :- tiraVogal(T,R).    					