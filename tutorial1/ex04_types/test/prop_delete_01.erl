-module(prop_delete_01).

-import(delete_01, [delete/2]).

-include_lib("proper/include/proper.hrl").

%%%%%%%%%%%%%%%%%%
%%% Properties %%%
%%%%%%%%%%%%%%%%%%
prop_delete() ->
    ?FORALL({X, L},
            {integer(), delete_01:tree(integer())},
            not lists:member(X, delete(X, L))).
