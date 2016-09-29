-module(week2).
-export([second/0]).

second() ->
    A = [2,3,4,5],
    hd(tl(A)).

