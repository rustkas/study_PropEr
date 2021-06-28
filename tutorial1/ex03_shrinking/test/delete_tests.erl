-module(delete_tests).

%%
%% Tests
%%
-ifdef(TEST).
-import(delete, [delete/2]).
-include_lib("eunit/include/eunit.hrl").

%% Unit tests for delete


delete_test_() ->
    [?_assert(delete(X,L1) =:= L2) || {X,L1,L2} <- testcases()].

testcases() ->
    [{1,[],[]},
     {1,[1],[]},
	 {2,[2,1],[1]},
	 {1,[1,2,3],[2,3]},
     {2,[1,2,3],[1,3]},
     {3,[1,2,3],[1,2]},
     {4,[1,2,3],[1,2,3]},
     {100,lists:seq(1,200),lists:seq(1,99) ++ lists:seq(101,200)}
	 ].

-endif.