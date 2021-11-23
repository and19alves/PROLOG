%Caso BASE: Lista com único elemento.
maiorLista([X],X).          
%Caso Geral: Chama-se recursivamente a função e por fim, chamamos uma subfunção com nome "maior" passando 
%Head, o Mr e recebendo o M.
maiorLista([H|T],M) :- maiorLista(T,Mr), maior(H,Mr,M).
% Abaixo, a comparação pura entre o Head e o Hr.
maior(H,Mr,H) :- H > Mr.
maior(H,Mr,Mr) :- Mr >= H.

/* SAIDAS:
 * 01 - maiorLista([6,2,14],X). = 14
 * 02 maiorLista([2],X). = 2 
 * */