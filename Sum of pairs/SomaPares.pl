% Verifica, se par,retorna o proprio X, senao, retorna 0(Neutro da Soma)
epar(X,X) :-  X mod 2 =:= 0,!.
epar(X,0) :- \+ X mod 2 =:= 0.


% Se o numero tiver apenas um digito, basta verificar se ele é par.
digpar(X,Y) :- X<10, epar(X,Y),!.

% Caso contrario:
digpar(X,Y) :-  
    			Resto is X mod 10, 	% Resto receberá o resto da divisão de X por 10   
    		    epar(Resto,Digito), % Verificamos se o Resto epar e retornaremos com Digito
    			Xn is X//10,        % Xn é a divisão inteira de X
    			Yn is Digito + 0,   % Yn é o Digito recebido anteriormente + 0
    			digpar(Xn,Yz),      % recursivamente, chama-se digpar passando como parametro Xn e Yz
    			Y is Yn+Yz.         % Ao final, conclui-se que Y é a soma de Yn + Yz(ultimo retorno)
    			




