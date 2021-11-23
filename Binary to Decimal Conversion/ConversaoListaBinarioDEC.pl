% Criação de Regras:
% 
% Caso Base:
decimal([],0). % Lista Vazia será 0. 

% Caso Geral:
decimal([H|T],X) :- 				 % decimal([Lista de Valor Binario],X = Conversão Para Decimal). SE
    		(H is 0 ; H is 1),! ,    % O valor atual(Head), ele é 0 ou e 1?
    		decimal(T,X1),           % Recursivamente, chamamos decimal passando TAIL e X1    
			X is H + 2 * X1.         % Valor em Decimal IS  ValorAtual(HEAD) + 2 * ValorAnterior(Recursão).


 /* SAIDAS:
  * decimal([2],X). = false (Para ser binario, o número deverá ser 0 ou 1)
  * decimal([1,0,1],X). = 5.
  * decimal([1,0,0,1],X). = 9. 
  * decimal([1,1,1,1,1,1,1,1],X). = 255
  * */