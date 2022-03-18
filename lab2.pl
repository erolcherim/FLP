parent(ana, bob).
parent(ana, vasile).
parent(ana, silvia).
female(ana).
female(silvia).
distance((X1,Y1),(X2,Y2),Z) :- Z is sqrt(((X1-X2)*(X1-X2))+((Y1-Y2)*(Y1-Y2))).
ancestor_of(X,Y) :- parent(X,Y).
ancestor_of(X,Y) :- parent(X,Z), ancestor_of(Z,Y).
ancestor_of(a,f).
parent(a,b).
parent(a,c).
parent(b,e).
parent(b,d).
parent(d,f).
parent(d,g).
f(0,1).
f(1,1).
f(N, Rez) :- A is N-1, B is N-2, f(A,R1), f(B,R2), Rez is R1 + R2. 	


f(0,1).
f(1,1).
f(N, Rez) :- A is N-1, B is N-2, f(A,R1), f(B,R2), Rez is R1 + R2. 	
fibo(0,1).
fibo(1,1).
fibo(N, Rez) :- fibo(1,1,1,N, Rez).
fibo(_, F, N, N, F).
fibo(F0, F1, I, N, Rez):- F2 is F0+F1,
    J is I+1, fibo(F1, F2, J, N, Rez).

dot([],[],0).
dot([InHead1|InTail1],[InHead2|InTail2],N) :-
    dot(InTail1,InTail2,M),
    	N is (InHead1 * InHead2)+M.

dot2([],[],[]).
dot2([InHead1|InTail1],[InHead2|InTail2],[N|Rez]) :- 
    N is (InHead1 * InHead2),
    dot2(InTail1,InTail2,Rez).

max([Max],Max).

max([Head|Tail],Max) :-
    max(Tail,TailMax),
    Head > TailMax,
    Max=Head.

max([Head|Tail],Max) :-
    max(Tail,TailMax),
    Head =< TailMax,
    Max = TailMax.

reverse(X,Y) :- reverse(X,[],Y).

reverse([],X,X).
reverse([X|Y],Z,T):-reverse(Y,[X|Z],T).

palindrome([]).
palindrome(X):-reverse(X,X).

remove_duplicates([],[]).

remove_duplicates([Head|Tail], Result):-
    member(Head,Tail),
    remove_duplicates(Tail,Result).

remove_duplicates([Head|Tail],[Head|Result]):-
    not(member(Head,Tail)),
    remove_duplicates(Tail,Result).

replace([],_,_,[]).

replace([Head|Tail], E, I, [Head|Rez]):-
    Head \=E, replace(Tail,E,I,Rez).

replace([Head|Tail], E, I, [I|Rez]):-
    Head = E, replace(Tail, E, I, Rez).

replace2([],_,_,[]).

replace2([Head|Tail], E, I, [Head|Rez]):-
    Head \==E, replace2(Tail, E, I, Rez).

replace2([Head|Tail], E, I, [I|Rez]):-
    Head == E, replace2(Tail, E, I, Rez).
