/*Definição de Tamanho de Listas: 

A representação de Modulo de L -> [L] = Tamanho da lista.

|L| = Tamanho 0, se L for vazia
	   Tamanho N, |L-L(0)|+1


sendo L(0) = Primeiro termo da lista
*/
/*
predicado length([1,2,3,4],X).
*/

% x(X,T) :- length(X,T).

%lista  l se vazia, tamanho de L = 0
l([],0) :- !.

%lista l, possui Head|Tail,Variavel X se L(Tail,Xr) e X seja Xr+1.
% tiramos o primeiro elemento(HEAD) e adicionaremos em X o valor recursivo de Xr.
l([_|T],X) :- l(T,Xr), X is Xr+1.
