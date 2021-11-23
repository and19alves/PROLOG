par(1,0).
par(2,1).


par(X,Y) :- X>2 , T is X-1, par(T,R), R=1, Y=0.
par(X,Y) :- X>2 , T is X-1, par(T,R), R=0, Y=1.

/*
- OPÇÃO 2:
 par(1,0).
 par(2,1).

par(X,Y) :- X>2 , T is X-1, par(T,1), Y=0.
par(X,Y) :- X>2 , T is X-1, par(T,0), Y=1.

- OPÇÃO 3:
 par(1,0).
 par(2,1).

par(X,Y) :- X>2 , T is X-1, par(T,1), Y=0	;
		  	X>2 , T is X-1, par(T,0), Y=1.

- OPÇÃO 4:
 par(1,0).
 par(2,1).

par(X,0) :- X>2 , T is X-1, par(T,1).
par(X,1) :- X>2 , T is X-1, par(T,0).

- OPÇÃO 5:
inverso(0,1).
inverso(1,0).

par(1,0).
par(2,1).

par(X,Y) :- X>2, T is X-1, par(T,R), inverso(Y,R).



*/