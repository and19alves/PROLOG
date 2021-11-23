%Sudoku

contem([],_) :- fail,!.
contem([H|_],H) :- !.
contem([_|T],K) :- contem(T,K).

repete([_]) :- !,fail.
repete([]) :- !,fail.
repete([H|T]) :- contem(T,H),! ; repete(T),!.

numero(1).
numero(2).
numero(3).
numero(4).

ehNumero([N]) :- numero(N).
ehNumero([H|T]) :- numero(H),ehNumero(T).

sdk( [A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,D1,D2,D3,D4] ) :-
    ehNumero( [A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,D1,D2,D3,D4] ),
    \+ repete([A1,A2,A3,A4]),
    \+ repete([B1,B2,B3,B4]),
    \+ repete([C1,C2,C3,C4]),
    \+ repete([D1,D2,D3,D4]),
    \+ repete([A1,B1,C1,D1]),
    \+ repete([A2,B2,C2,D2]),
    \+ repete([A3,B3,C3,D3]),
    \+ repete([A4,B4,C4,D4]),
    \+ repete([A1,A2,B1,B2]),
    \+ repete([A3,A4,B3,B4]),
    \+ repete([C1,C2,D1,D2]),
    \+ repete([C3,C4,D3,D4]).

/* SAIDAS:
 * sdk([1,2,C,4,3,4,2,1,B,1,4,3,A,3,1,X]). = APRESENTA AS OS NUMEROS
 * sdk([1,2,3,4,3,4,2,1,2,1,4,3,4,3,1,2]). = SUDOKU COMPLETO*/ 
