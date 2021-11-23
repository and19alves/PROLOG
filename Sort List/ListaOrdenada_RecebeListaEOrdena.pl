%Pega Duas listas e gera uma terceira que estará ordenada.

%CASOS BASE: Se Lista 1 tiver vazia, passa L2 e vice-versa
intercala([],L,L) :- !.
intercala(L,[],L) :- !.

%CASO GERAL: 
								%Se Head1 for menor que Head2 
intercala([H1|T1],[H2|T2],Ld) :- H1<H2,
    								intercala(T1,[H2|T2],R), Ld = [H1|R],! ; 
%passa-se o Tail1, a lista2 normal, e R(Recursão), Ld(lista definitiva) recebe nosso Head1 com R como tail.
    								intercala([H1|T1],T2,R), Ld = [H2|R].
%Caso contrario, a lista 2 normal, Tail2 e R(Recursão), Ld(lista definitiva) recebe nosso Head2 com R como tail.


%-------------------------------------------------------------------------
% Pega uma lista e gera duas separadas
meia([],[],[]) :- !.
meia([X],[X],[]) :- !.

meia([H|T],A,B) :- meia(T,B,C), A = [H|C].
%-------------------------------------------------------------------------
%Recebe uma lista e gera outra bem ordenada

ordena([],[]) :- !. %lista vazia, retorna vazia
ordena([X],[X]) :- !. %Lista com 1 elemento, retorna ela
ordena(L,O) :- meia(L,M1,M2), %Gera duas listas (M1 e M2)
    		   ordena(M1,O1),ordena(M2,O2), %Gera recursivamente, novas listas(M1 O1 e M2 O2)
    		   intercala(O1,O2,O). %Ao final, juntamos essas duas listas ordenadas e gera a O (Lista ordenada)