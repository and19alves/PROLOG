/* MÉTODO 01 - PROFESSOR. CALCULAR SEM PRECISAR CONTAR OS DIGITOS:
 * %Soma Binario. Uma lista em binario que retorna o valor em decimal.

%[1,0,0,1,1,0,0]

%Para o usuario não precisar passar os outros paramentros, criamos a regra que faz isso
binario(L,R) :- binario(L,0,R).

%Regra Base:
%Se tiver 1 elemento, nosso R(resultado) será o A(anterior)*2 + Valor(X).
binario([X],A,R) :- R is A*2+ X,!.

%Regra Geral:
%Nosso AnteriorRecursivo(AntR) é A(anterior)*2 + H(Head) e chama Recursivamente passando T,AntR e R.
binario([H|T],A,R) :- AntR is A*2 + H, binario(T,AntR,R),!.    
   
*/

/* MÉTODO 02 - MEU. CALCULAR CONTANDO OS DIGITOS:
 * %Soma Binario. Uma lista em binario que retorna o valor em decimal.

%[1,1,0,0] , R

%Regras auxiliar: Pra verificar quantos numeros temos:
contaDigito([],0) :- !.
contaDigito([_],1):- !.
contaDigito([_|T],N) :- contaDigito(T,Nn), N is Nn+1,!.

%Casos Bases:
binario([],0). %Lista Vazia retorna 0
binario([X],X). % Lista com 1 elemento, retorna ele mesmo.

%Casos Gerais:
%					

binario([H|T],R) :- contaDigito([H|T],Digito), %Conta os Digitos da lista passada
    DigitoN is Digito-1, % Subtrai 1 da variavel Digito. (contagem do bit começa com 0)
    H is 1,  % Se o Head for 1, continue.
    pow(2,DigitoN,Pot),  % Pego a quantidade de Bits(DigitoN) e expontecio por 2, o Resultado sera guardado em Pot.
    binario(T,Rr),  %Chamo recursivamente a regra, mas agora passando Tail e Rr(Resultado Recursivo)
    R is Pot+Rr,!.  % R (Resultado) será o valor da Potencia(Pot) + Rr(Resultado Recursivo).



binario([H|T],R) :- H is 0, % Se o Head for 0, continue.
    Pot is 0 , %Não é necessario calcular potencia, então definimos como 0.
    binario(T,Rr),  %Chamo recursivamente a regra, mas agora passando Tail e Rr(Resultado Recursivo)
    R is Pot+Rr,!.  % R (Resultado) será o valor da Potencia(Pot) + Rr(Resultado Recursivo).
*/