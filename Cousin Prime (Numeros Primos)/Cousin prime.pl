% busca_fator(N,F) se Resto de N%F igual a 0, e !(CUT)
% !(CUT) = Cut é como um Break, ao chegar nele, o Prolog entende que nao deve seguir adiante e para a execucao
busca_fator(N,F) :- N mod F =:= 0 , !.




busca_fator(N,F) :- F*F < N , Fp is F + 1 , busca_fator(N,Fp).

% tem_fator(N=Numero Digitado) se busca_fator (N,2).
tem_fator(N) :- busca_fator(N,2).

/*
 * tem_fator(2) = true. pois tem resto 0
 * tem_fator(3) = false pois tem resto 0
 * tem_fator(6). = COM CUT = True pois tem resto 0 6%2 == 0
 * 				   SEM CUT=  True,True,False
 *					True porque 6%2 == 0
 					True porque 6%3 == 0
                    False porque 3*3 = 9 e 9 > 6
 */

% O numero menor que 2, vai ter seu valor inverso
%eh_primo(N) :- N<2,!,fail.
% numero sendo 2 vai ser verdade
eh_primo(2) :- !.


% fail = Vai negar o resultado a regra inteira ao ser executado.
% eh_primo(N) se Tem_fator(N) e CUT(Não faça nada abaixo disso) e Fail (Inverte valor)

 
eh_primo(N) :- tem_fator(N),!,fail.

eh_primo(_).


/* SAIDAS:
 * eh_primo(8). = FALSE (8%2 = TRUE, MAS O FAIL INVERTE)
 * eh_primo(11). = TRUE (11%2 = FALSE, MAIS O FAIL INVERTE)
 * */