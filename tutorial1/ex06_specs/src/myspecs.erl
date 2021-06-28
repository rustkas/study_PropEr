-module(myspecs).

-export([divide/2, filter/2, max/1]).

-spec divide(integer(), integer()) -> integer().
divide(A, B) ->
    A div B.

-spec filter(fun((T) -> term()), [T]) -> [T].
filter(Fun, List) ->
    lists:filter(Fun, List).

-spec max([T]) -> T.
max(List) ->
    lists:max(List).
