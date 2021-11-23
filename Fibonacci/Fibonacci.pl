%Verifica se o Número será par
ehpar(N) :- N mod 2 =:= 0.

%Fibonacci(Casos Base):
fib(0, 0) :- !.
fib(1, 1):- !.
fib(2, 1):- !.
fib(3, 2):- !.
fib(4, 3):- !.
fib(5, 5):- !.
fib(6, 8):- !.
fib(7, 13):- !.
fib(8, 21):- !.
fib(9, 34):- !.
fib(10, 55):- !.


% Regras Fibonacci:

%Se Fibonacci par:
fib(N,Resultado) :- 
    ehpar(N),  					 % Verifica se N é par
    Nf is N//2,		   			 % Realiza a Divisão inteira de N//2 e joga em NF
    fib(Nf,X),XQ is X*X ,        % Fibonacci de Nf será X, XQ é o QUADRADO de X.
   	Na is Nf-1, 				 % Na é Nf menos 1.
    fib(Na,Xa), 				 % Fibonacci de Na sera Xa
    fib(Nf,Xb),   				 % Fibonacci de Nf sera Xb
    FibAB is 2 * (Xa*Xb), 	     % FibAb é Xa*Xb multiplicados por 2
    Resultado is XQ + FibAB,!.   % Resultado é soma de XQ+ FibAB.
    


% Se Fibonacci impar:
fib(N,Resultado) :- 
    Nf is N//2, 					 	 % Realiza a Divisão inteira de N//2 e joga em NF
    Na is Nf+1,  						 % Na é Nf mais 1.
    fib(Na,X), XQ is X*X, 			 	 % Fibonacci de Na será X, XQ é o QUADRADO de X.
	fib(Nf,Xa), XR is Xa*Xa,  		 	 % Fibonacci de Nf será Xa, XR é o QUADRADO de Xa.
    Resultado is XQ + XR,!. 		 	 % Resultado é a soma de XQ+ XR.

/*
fib(16) = fib(8)²  + 2* (fib(7)*fib(8))
fib(15) = [ fib(7+1)²] + fib(7)²*/
