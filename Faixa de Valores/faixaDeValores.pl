% X = valor inicial da lista, Y = Valor final da lista, Z = Lista.


faixa(X,Y,[_|_]) :- X = Y.
faixa(X,Y,[H,X1]) :-   X < Y, 
    				X1 is X+1,
   					H = X,
    				faixa(X1,Y,[H,X1]). 
    				
