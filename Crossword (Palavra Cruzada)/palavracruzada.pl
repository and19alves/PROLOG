
palavras(bico,b,i,c,o).
palavras(asas,a,s,a,s).
palavras(bola,b,o,l,a).
palavras(ovos,o,v,o,s).

cruzada(H1,H2,V1,V2) :-  
    	/*Fase de instanciação: */
    	palavras(H1,H1l1,_,_,H1l4),
    	palavras(H2,H2l1,_,_,H2l4),
    	palavras(V1,V1l1,_,_,V1l4),
    	palavras(V2,V2l1,_,_,V2l4),
    	/*Fase de verificações: */
    	H1l1 == V1l1,
    	H1l4 == V2l1,
    	H2l1 == V1l4,
    	H2l4 == V2l4,
		H1 \= H2, H1 \= V1 , H1 \= V2,
		H2 \= V1, H2 \= V2,
		V1 \= V2.


/* Quando aparece alguma variavel em negrito
 * Significa que o proprio prolog tenta mostrar que não
 * se pode usar elas, sugerindo a troca por (_).
 _ ( Variavel anônima). Elas são diferentes uma das outras.
 * Guardando valores diferentes.
 * */

/* SAIDAS:
 * cruzada(H1,H2,V1,V2). = A saida será as possibilidades 
 * das palavras se encaixarem nos locais H1,H2,V1,V2.
 * Porém, apresenta erro por aparecer bico e ovos 2 vezes na mesma cruzada
 * 
 * A solução foi definir que são valores diferentes, 
 * ou seja, da linha 16,17 e 18.
 * */