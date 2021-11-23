% Se M = 0, Resp é N+1
ack(M,N,Resp) :- M  =:= 0, Resp is N+1,!.

%Se M>0 E N=0:
ack(M,N,Resp) :- M > 0 , N =:= 0, 
    Mn is M-1, ack(Mn,1,Resp),!.

% Caso Contrario:
ack(M,N,Resp) :- 
    Mn is M-1,
    Nn is N-1,
    ack(M,Nn,NResp),
    ack(Mn,NResp,Resp),!.
 
