par(X) :- 0 is X mod 2.

flagPar(X,1) :- par(X).
flagPar(X,0) :- not(par(X)).


somaPar(X,R) :- flagPar(X,F), R is X*F.

somaPar(X,S) :- X>=10, 
    				   Xmenor is X//10,
    				   Resto is X mod 10,
    				   somaPar(Xmenor,Smenor),
    				   FlagPar(Resto,F), S is Smenor + Resto*F.
/*
somaPar(X,X) :- X<10, par(X).
somaPar(X,0) :- X<10,not(par(X)).

somaPar(X,S) :- X>=10, Xmenor is X//10,
    				   Resto is X mod 10,
    				   somaPar(Xmenor,Smenor),
    				   not(par(Resto)), S is Smenor.
*/