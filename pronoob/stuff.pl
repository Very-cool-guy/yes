dummy :-
        8 is 6+2, % no uninstantiated variables on the left, 6+2 := +(6,2) is a term forced to be evaluated by is and comparison
        8 is 4*2,
        9 is 89/9,
        8 is mod(89,9),
        3 =\= 4. % every comparison operator same as erlang except this one

len([],0).
len([_|T],N) :-
        len(T,X),
        N is X+1.
