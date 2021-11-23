%Dado uma lista e um numero K, 
%quero saber se é possivel somar elementos na lista afim de achar K
% [4,5,7,8,2,3], K=12 TRUE
% [4,5,7,8,2,3], K=1  False

%[4,5,7,8] k= 16


sss([],0).

sss([X],X).
sss([],0).

/*
sss([_,_],0).
sss([X,_],X).
sss([_,Y],Y).
sss([Y,X],K) :- K = Y+X.
*/

sss([H|T],K,S) :- H is K, S=[H]; % Head é igual a K
    			Kr = K-H, sss(T,Kr,Sr), S = [H|Sr] ; % Head faz parte da solução, diminuimos o tamanho do K
    			sss(T,K,S). % Head, não faz parte, então seguimos a lista
    			
				
/*Versão Video Gravado*
%[2,5,6,8,4,2]
%sss([],0). %lista vazia = 0

%sss([X],X). % Se o unico valor da lista for igual ao pivo
%sss([_],0). % Unico valor é diferente 


%sss([X,Y],K) :-
 %   	 		K is 0; %K é zero
  %  			K is X; %K é valor de X
   % 			K is Y; % K é o valor de Y
    %			K is X+Y. %K é a soma de X+Y


sss([H|T],K) :- K == H,! ; %Se K for igual a H, termina.
    			NovoK is K - H, %Novo K é a subtração do valor do K pelo Head
    			sss(T,NovoK); %Passamos recursivamente os novos valores
    			sss(T,K). %Se o  H não fizer parte da solução, vamos manter o K
*/