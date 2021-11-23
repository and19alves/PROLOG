x(1,1).
x(2,1).



% Saidas:
/* x(X,Y). = Duas possibilidades onde X= 1 e 2 e Y = 1 e 1
 * x(2,Y). = Combinações possiveis onde X=2 para Y 
 * */



x(X,Y) :- X>2, Y1 is X-1, x(Y1,R1), Y2 is X-2, x(Y2,R2),
    		  Y is R1+R2.

/*
Regra1 (X = 3, Y = ?) 
:-  3>2, Y1 = 2, x(2,R1 = 1(previa), Y2 = 1, x(1,1(previa)
  Y = 1+1
*/


/*
Regra2 (X = 4, Y = ?) 
:-  4>2, Y1 = 3, x(3,R1 = Obter Resultado de Regra1 = 2), Y2 = 2, x(1,1(previa)
  Y = 2+1
*/



/* Saidas:
 * x(1,Y). = 1 porque ja tem fato implementado para o caso
 * x(2,Y). = 1 porque ja tem fato implementado para o caso
 * x(3,Y). = 2 (ver REGRA1)
 * x(4,Y). = 3  (ver Regra2)
 * 
 * */