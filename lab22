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
