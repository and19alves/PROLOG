% Separar uma lista em duas

%CASO BASE: Lista com 1 elemento:

%      lista,pivo,listaMenores,listaMaiores
separa([U],P,[U],[]) :- U =<P,!. % Se o elemento da lista for menor que meu Pivo
separa([U],_,[],[U]). % U>P


%CASO GERAL: Lista com N elementos:

%Se Head for Menor que o P, jogamos Head para a lista dos Menores
separa([H|T],P,[H|Menores],Maiores) :- H=<P, separa(T,P,Menores,Maiores),!. 

%Se Head for Maior que o P, jogamos Head para a lista dos Maiores
separa([H|T],P,Menores,[H|Maiores]) :- separa(T,P,Menores,Maiores).