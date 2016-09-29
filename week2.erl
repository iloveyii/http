-module(week2).
-export([second1/0, second2/1, second3/1, head/1, tail/1, sum/1, sum2/1 ]).

% List example - list is a collection of similar elements %
second1() ->
    A = [2,3,4,5],
    hd(tl(A)).

head(B) ->
    [X|_Xs] = B,
    X.

tail(C) ->
    [_X|Xs] = C,
    Xs.

second2(D) ->
    [_X|Xs] = D,
    head(Xs).

second3(E) ->
    [_X,Y|_Zs] = E,
    Y.

% Find sum of a list - direct recursion %
sum([]) -> 0;
sum(F) ->
    [X|Xs] = F,
    X + sum(Xs).

% Sum of list - tail recursion %
sum2(X) -> sum2(X, 0).
sum2([],S) -> S;
sum2([X|Xs], S) -> sum2(Xs, X+S).
