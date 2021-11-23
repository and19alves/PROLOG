%Listas em Prolog

tamanho([],0) :- !.
tamanho([_|T],Tam) :- tamanho(T,TamRec), Tam is TamRec+1.

%Recursão passando dois HEADS
%tamanho([H1,H2|T],N) :- tamanho(T,NR), N is NR+2,!.

/* [1,2,3] ??? 2 + 1 = 3
 * [2,3] ??? 1+1 = 2
 * [3] ??? 0+1 = 1
 * [] 0
 * */

