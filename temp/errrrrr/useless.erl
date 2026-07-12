-module(useless).
-export([add/2, hello/0, add_and_hi/1]).
-define(madd(X,Y), X+Y). % macro

add(A,B) ->
        ?madd(A,B).
hello() ->
        io:format("Hello, world!~n").
% i guess bro
add_and_hi(X) ->
        hello(),
        add(X,67).
