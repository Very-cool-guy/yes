-module(high).
-export([map/2, main/0]).

map(_, []) -> [];
map(F, [H|T]) -> [F(H)|map(F,T)].

main() ->
        PrepareAlarm = fun(Room) ->
                             io:format("Alarm set in ~s.~n",[Room]),
                             fun() -> io:format("Alarm sounded in ~s!~n",[Room]) end
                       end,
        Alarm = PrepareAlarm("bathroom"),
        Alarm(),

        Loop = fun Looper() -> io:format("loop yay"), timer:sleep(500), Looper() end, % named fun accessible inside its own body
        Loop().
