% Criação de Regras:

% onde ( [LISTA], N = valorABuscar, X = OndeValorPodeSerEncontrado)

% Caso Base:
onde([],_,_) :- false. %Passando uma lista vazia e querendo procurar.
onde([N],N,1):- !. % Lista com 1 elemento e é o que ele tava procurando

% Caso Geral:
% 				 Head seja diferente de N, Chama-se Recursivamente passando: (TAIL,N,X1) , e por fim, definimos que X seja a soma de X1 (Variavel Usada Recursivamente)+ 1.
onde([H|T],N,X) :- H \= N, onde(T,N,X1), X is X1 + 1,!. 



% OBS: POR DEFINIÇÃO, CONSIDERAMOS QUE A PRIMEIRA POSIÇÃO DA LISTA SEJA 1, DEPOIS SERA 2 E ASSIM SUCESSIVAMENTE.

/* SAIDAS:
 * onde([],3,X). = false (Buscando em lista vazia)
 * onde([3],3,X).= 1 (Busca com 1 elemento na lista e ele existindo).
 * onde([4],3,X). = false (Busca com 1 elemento na lista, mas, não existindo).
 * onde([4,3],3,X). = 2 (Busca 3 na lista e encontra na posição 2).
 * onde([4,4,5,6,5,1,3],3,X). = 7 (Busca 3 na lista e encontra na posição 7).
 * */