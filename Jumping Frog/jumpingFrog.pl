% N = Tamanho do Pulo, [] = lista com tamanho dos canos


%Caso Base:
sapinho(_,[]) :- !.    %Situação Final onde o Sapo já está no ultimo Cano, logo TRUE".
sapinho(N,[X]) :- N < X,!,fail. % Última comparação pra verificar se o sapo tem um salto menor que a altura do ultimo cano



%Caso Geral:

% J = Jump(Altura do cano atual + altura do pulo do sapo)

% Caso Geral 01 - Caso o pulo seja insuficiente para o Cano.
sapinho(N,[H|_]) :- J is H+N, J < H,!,fail.   

%Caso Geral 02 - O Jogo em si:
sapinho(N,[_|T]) :-  sapinho(N,T),!. 


/*Saidas:
01 - sapinho(5,[1,3,6,7,2,4,5,8,3]). = true (Conforme exemplo fornecido)
02 - sapinho(1,[2,2]). = true (Conforme exemplo fornecido)
03 - sapinho(1,[1,3]). = false (Conforme exemplo fornecido)
*/