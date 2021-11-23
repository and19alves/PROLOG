%Vai contar quantos digitos tem no numero que a gente passar
%ContaDigito(5,1) contadigito(111,3)

contaDigito(X,1) :- X<10.

contaDigito(X,Y) :- X >=10, X2 is X/10, contaDigito(X2,Y2), Y is Y2+1.

%SomaDigito = Vai somar os digitos em decimal de um determinado numero.
%SomaDigito(111,3), somaDigito(123,6)...