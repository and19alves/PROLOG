% Regra Maior (Dois numeros(A,B) e dizer quem é o maior(M).


maior(A,B,M) :- A>=B, M is A.
maior(A,B,M) :- B>A, M is B.

/*
 *maior(A,B,A) :- A>=B.
 *maior(A,B,B) :- B>A.  */

/*
 * *maior(A,B,A) :- A>=B,!. Por causa do CUT, ele parará a execução se A>B
 * maior(_,B,B). <- essa linha só sera executada se A<B */

 */




% Regra Maior4 (Quatro numeros(A,B,C,D) e dizer quem é o maior(M).

%maior4(A,B,C,D,M) :- A>=B, A>=C, A>=D, M is A.

maior4(A,B,C,D,M) :- maior(A,B,M1), maior(C,D,M2), maior(M1,M2,M) .