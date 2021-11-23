%123 = 3 + somaDigito(12)

somaDigitos(N,N) :- N < 10,!.

somaDigitos(N,Soma) :-
    					NovoN is N//10,
    					somaDigitos(NovoN,SomaRec),
    					Soma is SomaRec + N mod 10.


% Soma digito posicional (separa posição par/impar)
%1234 = 1+3 2+4 = 4 + 6 = 10

/* Exemplo somaDigitosPI(123,SP,SI) :-
 *  Digito is 3,
 *  NovoNumero is 12,
 *  somaDigito(12,1,2)
 * */

%SomaDigitosParImpar
somaDigitosPI(N,0,N) :- N < 10,!.

somaDigitosPI(N,SP,SI) :-
    Digito is N mod 10,
    NovoN is N // 10,
    somaDigitosPI(NovoN,SPR,SIR),
    SP is SIR,
    SI is SPR + Digito.
