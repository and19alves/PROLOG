%Criação de Regras:
% Verificapar é uma regra auxiliar que retorna true(for par) ou false(for impar).
verificapar(X) :- X mod 2 =:= 0.


%Fato criado pois sabe-se que nossa parada é quando N se torna 1.
ehassombroso(1).

% Fato geral para um X maior que 1
ehassombroso(X) :- X>1, 
    	  % Obtemos true/False do verificapar E
    		verificapar(X) , X1 is X//2, ehassombroso(X1)   % se true, fazemos a metade de X, atribuindo esse novo valor para X1, e recursivamente chama-se a regra novamente ate X=1. 
    						 ; % OU para o caso do numero ser impar.
                           X2 is X*3+1, ehassombroso(X2). % se verificaPar for false, fazemos o triplo de X mais 1, atribuimos esse novo valor para X2 e recursivamente chama-se a regra novamente até X=1.

/* SAIDAS:
 ehassombroso(5). = TRUE, como dito no enunciado.
 ehassombroso(6). = TRUE, afinal: 6 -> 3 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1.
 */	    
    



