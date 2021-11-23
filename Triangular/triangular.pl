% Criação da Regra Principal.
% ehTriangular(N,Tn) SE X (Variavel criada que recebe um cálculo) E Tn sejam IGUAIS.
ehTriangular(N,Tn) :-  X is (N*(N+1)) // 2, Tn = X.

% OBS: O Cálculo atribuido a variavel X está disponivel em: https://pt.wikipedia.org/.


/* SAIDAS: O Teste será realizado com os 6 exemplos da imagem obtida pela fonte: ( https://pt.wikipedia.org/) + 2 exemplos FALSOS de Números Triangulares:
 * 01 - ehTriangular(1,1). = TRUE (Caso básico).
 * 02 - ehTriangular(2,3). = TRUE
 * 03 - ehTriangular(3,6). = TRUE
 * 04 - ehTriangular(4,10). = TRUE (EXEMPLO DO EXERCICIO)
 * 05 - ehTriangular(5,15). = TRUE
 * 06 - ehTriangular(6,21). = TRUE
 *  	AGORA OS FALSOS EXEMPLOS DE NÚMEROS TRIANGULARES:
 * 07 - ehTriangular(2,1). =  FALSE POIS Tn será diferente de X
 * 08 - ehTriangular(10,4). =  FALSE POIS Tn será diferente de X
*/ 