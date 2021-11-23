/*
Regras Bases
vogal(a).
vogal(e).
vogal(i).
vogal(o).
vogal(u).

Caso Base
contaVogal([],0).

Caso Geral
contaVogal([H|T],N) :- vogal(H), contaVogal(T,Nr), N is Nr+1,! 
    ;
contaVogal(T,N).
*/

%Regras Base
vogal(a,1) :- !.
vogal(e,1):- !.
vogal(i,1):- !.
vogal(o,1):- !.
vogal(u,1):- !.
vogal(_,0).

contaVogal([],0).

contaVogal([H|T],N) :- vogal(H,S), contaVogal(T,Nr), N is Nr+S,! .
   