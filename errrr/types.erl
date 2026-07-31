-module(types).
-export([numbah/1]).

numbah(X) ->
        if is_integer(X) -> X;
           is_list(X) -> list_to_integer(X);
           true -> "what"
        end.
