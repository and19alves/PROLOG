contaDigitos(N,1) :- N<10, !. %Se N for menor que 10, ele tem 1 digito só

contaDigitos(N,D) :- NN is N//10,  % NN recebe a divisão inteira de 10
    				 contaDigitos(NN,DD), %Passa-se NN e um DD, recursivamente
    				 D is DD+1.  % No final, pego todos os DDs e somo +1


%quantas vezes o numero 7 aparece na sequencia numerica:
/*contaDigitos7(N,C) :- N<10, N is 7, C is 1,!;
    				  N<10, C is 0.
*/

contaDigitos7(7,1) :- !. %Se o numero informado for 7, retorna 1
contaDigitos7(N,0) :- N<10,!. %Se o numero for menor que 10, mas nao for 7, retorna 0

contaDigitos7(N,D) :- 
    				 7 is N mod 10,  %Digito recebe o resto de N mod 10
    				 % Digito is 7, % Se ele for 7, eu continuo a conta
    			 	 NN is N//10, % NN é a diminuição do problema, *vide contaDigitos
    				 contaDigitos7(NN,DD), %% Recursivamente,chama-se contaDigitos7
    				 D is DD+1,!    ; % No final, pego todos os DDs e somo +1
    				%				OU 
    				NN is N//10,    %% Caso não tenha 7, NN é a diminuição do problema
    				contaDigitos7(NN,D). %% Recursivamente,chama-se contaDigitos7

    				
    				 
%Conta Digito Parametrizado(Passa a sequencia dos numeros, o digito e a quantidade)    					
%Casos base:
%contaDigitosPara(N,Digito,Quantidade) :- N < 10, N is Digito, Quantidade is 1 ,!.
contaDigitosPara(N,N,1) :- N < 10,!.
contaDigitosPara(N,_,0) :- N < 10,!.


contaDigitosPara(N,Digito,Quantidade) :- 
 										Digito is N mod 10,
    									NovoN is N //10,
    									contaDigitosPara(NovoN,Digito,NovaQuantidade),
    									Quantidade is NovaQuantidade+1,!.
%Digito é igual ao resto de N por 10   
%NovoN e a divisao positiva de N por 10
%Repassa o parametro usando NovoN,Digito,NovaQuantidade
%Quantidade is NovaQuantidade + 1.

contaDigitosPara(N,Digito,Quantidade) :- 
										NovoN is N//10,
    									contaDigitosPara(NovoN,Digito,NovaQuantidade),
    									Quantidade is NovaQuantidade+0.
    									  
%NovoN e a divisao positiva de N por 10
%Repassa o parametro usando NovoN,Digito,NovaQuantidade
%Quantidade is NovaQuantidade + 0.



    

    				  

    