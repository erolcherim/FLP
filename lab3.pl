
born(jan, date(20,3,1977)).
born(jeroen, date(2,2,1992)).
born(joris, date(17,3,1995)).
born(jelle, date(1,1,2004)).
born(joan, date(24,12,0)).
born(joop, date(30,4,1989)).
born(jannecke, date(17,3,1993)).
born(jaap, date(16,11,1995)).

year(Y,P):-
    born(P,date(_,_,Y)).

before(date(D1,M1,Y1),date(D2,M2,Y2)):-
    D1<D2,
    M1==M2,
    Y1==Y2.

before(date(_,M1,Y1),date(_,M2,Y2)):-
    M1<M2,
    Y1==Y2.

before(date(_,_,Y1),date(_,_,Y2)):-
    Y1<Y2.

older(P,P2):-
    born(P,date(Dp,Mp,Yp)),
	born(P2,date(D2,M2,Y2)),
    before(date(Dp,Mp,Yp),date(D2,M2,Y2)).
    
 
 %---------------------------------------------------------------------------
 
 % Maze

connected(1,2).
connected(3,4).
connected(5,6).
connected(7,8).
connected(9,10).
connected(12,13).
connected(13,14).
connected(15,16).
connected(17,18).
connected(19,20).
connected(4,1).
connected(6,3).
connected(4,7).
connected(6,11).
connected(14,9).
connected(11,15).
connected(16,12).
connected(14,17).
connected(16,19).

path(X,Y) :- connected(X,Y).
path(X,Y,_) :- connected(X,Z), path(Z,Y).
path(X,Y,L) :- connected(X,Z), not(member(Z,L)), path(Z,Y,[X,Z|L]).

successor(Number,[x|Number]).

plus(X,Y,Result):- append(X,Y,Result).

times([],_,[]).
times([x|Number1], Number2, Result):-
    times(Number1,Number2,Result2),
    append(Result2,Number2,Result).





        
    
    
    
    
	
