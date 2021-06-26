-module(sort_tests).
-import(my_sort, [sort/1]).
%%
%% Tests
%%
-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

sort_test_() ->
    [test_zero(), test_two(), test_four()].

test_zero() ->
    ?_assertEqual([], sort([])). % notice underscore
test_two() ->
    [?_assertEqual([17,42], sort([X,Y])) || {X,Y} <- [{17,42}, {42,17}]].
test_four() ->
    [?_assertEqual([1,2,3,4], sort([3,1,4,2]))].

-endif.
