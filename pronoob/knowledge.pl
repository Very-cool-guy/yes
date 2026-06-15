woman(mia).
woman(jody).
woman(yolanda).
playsAirGuitar(jody).
party.
listensToMusic(jody) :- playsAirGuitar(jody).
lesbian(mia) :- woman(mia).
loves(mia,jody) :-
        lesbian(mia),
        listensToMusic(jody).
couple :- loves(mia,jody).
couple :- loves(jody,mia).
baby :-
        couple;
        party.
loves(yolanda, jody).
jealous(X,Y) :- loves(X,Z), loves(Y,Z).
