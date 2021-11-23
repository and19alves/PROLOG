%Retira a vogal da lista
vogal(a).
vogal(e).
vogal(i).
vogal(o).
vogal(u).
%Função member (Verifica se a variavel X existe na lista passada)
%vogal(X) :- member(X,[a,e,i,o,u]).

% EXERCICIO SEPARA_VOGAL_CONSOANTE

%CASO BASE: Lista com 1 elemento.
separaLetras([L],[L],[]) :- vogal(L),!.  %Se o elemento da lista for vogal.
separaLetras([L],[],[L]). %Se o elemento da lista for consoante.

%CASO GERAL: Lista com N elementos.

%Se Head for Vogal:
separaLetras([H|T],[H|Vogais],Consoantes) :- vogal(H), separaLetras(T,Vogais,Consoantes),!.

%Se Head for Consoante:
separaLetras([H|T],Vogais,[H|Consoantes]) :- separaLetras(T,Vogais,Consoantes).

