%Criptograma:

% A OPERAÇÃO:
%   SEND 
%+  MORE 
%= MONEY


%INSTANCIAR AS VARIAVEIS:
digito(0).
digito(1).
digito(2).
digito(3).
digito(4).
digito(5).
digito(6).
digito(7).
digito(8).
digito(9).



%C=A+B OU '1C' = A+B   (9+8 = 17) VAI 1 E VEM 1;
somaVaiUm(A,B,Vem,C,Vai) :- T is A+B+Vem,  	%SOMA DE 2 ELEMENTOS + O QUE VEM
    						Vai is T//10,   % VAI = VALOR DE T (   DIVISAO INTEIRA) POR 10  EX: 11//10 = 1 OU 7 //10 = 0
    						C is mod(T,10). % C = O QUE SOBROU DE T/10 EX: 11 MOD 10 = 1 ; 7 MOD 10 = 7

% CÓDIGO GENERICO APLICADO PARA QUALQUER CRIPTOGRAMA
% ABAIXO, SEGUE O EXEMPLO ESPECIFICO DE SENDMYMONEY.

%	SEND
%	MORE
%  MONEY

criptograma(S,E,N,D,M,O,R,E,M,O,N,E,Y) :-     %CRIPTOGRAMA(PALAVRAS)
  M is 1,									 % SABEMOS QUE M É 1 PQ O MAXIMO DE UMA SOMA É 9+8 = 17, LOGO O NUMERO A ESQUERDA SERIA M = 1. 
  digito(S),digito(E),   % SEND
  S =\= E,
  digito(N),digito(D),   % SEND
  digito(M),digito(O),digito(R),             % MORE
  digito(Y),                                 % MONEY (REPETIR AS REGRAS É OPCIONAL)
  S>0,										 % S > 0 PQ O S ESTA NA PALAVRA SEND E O NUMERO MAIS A ESQUERDA NAO PODE SER 0, (   MESMO EXEMPLO DO M)
  	       S =\= N, S =\= D, S =\= M, S =\= O, S =\= R, S =\= Y,   
           E =\= N, E =\= D, E =\= M, E =\= O, E =\= R, E =\= Y, 
				 	N =\= D, N =\= M, N =\= O, N =\= R, N =\= Y,
							 D =\= M, D =\= O, D =\= R, D =\= Y,
							          M =\= O, M =\= R, M =\= Y,
											   O =\= R, O =\= Y,
														R =\= Y,
% A IDÉIA DA DIFERENÇA É QUE CADA LETRA É DE VALOR DIFERENTE DA OUTRA.

%ABAIXO, APRESENTAREMOS A SOMA EXPLICITA DO 
%  SEND + 
%  MORE = 
% MONEY


% FORMULA GENERICA DO SomaVaiUm = (A,B,Vem,C,Vai).
somaVaiUm(D,E,0,Y,V1),  % sendo vem = 0 e vai = v1
somaVaiUm(N,R,V1,E,V2), % sendo vem = v1 e vai = v2
somaVaiUm(E,O,V2,N,V3), % sendo vem = v2 e vai = v3
somaVaiUm(S,M,V3,O,M). % sendo vem = v3 e vai =  M



% RESULTADO: 
% criptograma(S,E,N,D,M,O,R,E,M,O,N,E,Y).
%  SEND   9567 
%  MORE   1085
% MONEY  10652

