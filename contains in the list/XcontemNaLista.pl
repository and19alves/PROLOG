%Caso Base = Se a lista vazia
contem([],_) :- !,fail.
      
%Caso Geral, se X igual a H  OU passa Tail,X.
contem([H|T],X) :- X == H,! 	;
    			   contem(T,X).