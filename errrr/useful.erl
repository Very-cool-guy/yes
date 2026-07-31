-module(useful).
-export([greet/2, second/1, legitscore/1, hi/1, insert/2]).

greet(cat, Name) ->
        io:format("meow :3 ~s", [Name]);
greet(dog, Name) ->
        io:format("go away ~s", [Name]);
greet(_, Name) ->
        io:format("Sorry ur not cool enough ~s", [Name]).

second([_,X|_]) -> X.

legitscore(X) when X >= 0, X =< 100 ->
        true;
legitscore(Y) when Y < 0; Y > 100 -> % can obv be legitscore(_) ->
        false.

hi(Animal) ->
        Talk = if Animal == cat -> "meow";
                  Animal == dog -> "woof";
                  true -> "bzhkhaip" % bad
               end,
        {Animal, "says " ++ Talk ++ "!"}.

insert(X, []) ->
        [X];
insert(X, Set) ->
        case lists:member(X, Set) of
                true -> Set;
                false -> [X|Set]
        end.

