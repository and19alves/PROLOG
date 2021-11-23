%Remover o ultimo elemento da lista.

%CASO BASE:
removeUltimo([_],[]):- !. %Se a lista tiver só um elemento, retorna-se uma lista vazia.

%CASO GERAL:
removeUltimo([H|T],[H|R]) :-  removeUltimo(T,R). 
%O Head automaticamente irá pra saida e vamos usar recursão até que a lista fique com um elemento,
%Quando isso acontecer, a linha 4 retorna uma lista vazia e voltamos a recursão até o HEAD inicial.
    


	% 1 2 3 4  []
	%   2 3 4  [1]
    %     3 4  [1,2]
	% 	    4  [1,2,3]
	% Usa-se a linha 4 e retorna uma lista vazia.
	%          [1,2,3]