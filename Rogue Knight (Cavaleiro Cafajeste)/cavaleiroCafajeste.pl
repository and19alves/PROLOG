:- use_module(library(clpb)).
%---------------------------------------------------------------------------------------

%A) Ao menos, um de nós é cafajeste"

frase1(A,B,C) :- sat(A =:= ( (A =:= 0) + (B =:= 0) + (C =:= 0)) ).

/* SAIDA:
 * frase1(A,B,C),labeling([A,B,C]). = [1,0,0] OU [1,0,1] OU [1,1,0]
 * */

%---------------------------------------------------------------------------------------

%B) A diz ”Todos somos cafajestes”; B diz ”Dois de nos somos cafajestes”, com A,B e C

frase2(A,B,C) :-  sat((A =:= ( (A =:= 0) * (B =:= 0) * (C =:= 0))) *
                      
                      (B =:= ( (A =:= 0) * (B =:= 0) * (C =:= 1)) +
                      		 ( (A =:= 0) * (B =:= 1) * (C =:= 0)) +
                             ( (A =:= 1) * (B =:= 0) * (C =:= 0)))).


/* SAIDA:
 * frase2(A,B,C),labeling([A,B,C]). = [0,1,0].
 * */

%---------------------------------------------------------------------------------------

%C) A diz:  ”B  ́e cafajeste”, B diz:”A e C sao do mesmo tipo”.  Determine C

frase3(A,B,C) :- sat((A =:= (B =:= 0)) *
                     (B =:= (A =:= C))).

% PODENDO SER RESOLVIDA TAMBEM COM: 

/*frase3(A,B,C) :- sat((A =:= (B =:= 0)) *
                     (B =:= (A =:= 0) * (C =:= 0) +
                      		(A =:= 1) * (C =:= 1))).*/

/* SAIDA:
 * frase3(A,B,C),labeling([A,B,C]). = [0,1,0],[1,0,0]
 * */

%---------------------------------------------------------------------------------------
