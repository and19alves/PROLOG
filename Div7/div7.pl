%Criação de Regras:
% Regra Base: X menor que 10 E que seja 7.
div7(X) :- X<10, X = 7.

%Regra Geral: X maior que 10 E
div7(X) :- X>=10, 
    				X1 is X mod 10, % X1 é atribuido para receber o último digito de X
    				X2 is (X1*2),   % X2 é a duplicação de X1 ou seja, o ultimo digito  
    				X3 is X//10,    % X3 é atribuido para receber os digitos remanescentes. 
    				X4 is X3-X2,    % X4 é atribuido para subtrair X3-X2.
    				div7(X4).	    % O valor atribuido para X4 vai novamente para a regra div7 de maneira recursiva.
									
/* SAIDAS:
 * 01 - div7(1057). = true. Satisfaz, todas os requisitos acima, logo, é divisivel por 7.
 * 02 - div7(7). = true. Regra Base.
 * 03 - div7(20). = False. 
*/
								

					
 


					