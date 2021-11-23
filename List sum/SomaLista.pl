% Caso base: Se a lista for vazia, soma será 0.
somaLista([],0).

%Caso Geral: Passamos o Tail e um SomaRecursivo, e S é a soma de SR+H
somaLista([H|T],S) :- somaLista(T,SR), S is SR+H.