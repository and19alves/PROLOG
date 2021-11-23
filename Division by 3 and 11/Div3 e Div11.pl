% Um numero é divisivel por 3 se a soma dos seus digitos é divisivel por 3

%123 = 3 + somaDigito(12)



somaDigitos(N,N) :- N < 10,!.

somaDigitos(N,Soma) :-
    					NovoN is N//10,
    					somaDigitos(NovoN,SomaRec),
    					Soma is SomaRec + N mod 10.


div3(3) :-!.
div3(6) :-!.
div3(9) :-!.

div3(N) :- N > 10, somaDigitos(N,NN), div3(NN).
div3(N) :- N > 10, somaDigitos(N,NN), div3(NN).

/*Um número é divisivel por 11 se a soma dos digitos
   nas posições impares menos a soma dos digitos nas posições pares resulta em zero
OU em um numero divisivel por 11". 

Ex: 75152, temos 7+1+2 = 10 nas posições pares e 5+5=10 nas posições impares
portanto, 75152 é divisivel por 11.
*/

div(11) :- !.
div(22) :- !.
div(33) :- !.

div(N) :- !.