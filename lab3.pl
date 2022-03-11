
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
        
    
    
    
    
	
