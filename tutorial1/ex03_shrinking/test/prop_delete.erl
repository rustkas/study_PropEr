-module(prop_delete).

-import(delete, [delete/2]).

-include_lib("proper/include/proper.hrl").

%%%%%%%%%%%%%%%%%%
%%% Properties %%%
%%%%%%%%%%%%%%%%%%
prop_delete() ->
    ?FORALL({X, L},
            {integer(), list(integer())},
            not lists:member(X, delete(X, L))).

prop_delete_more() ->
    numtests(1000,
	     ?FORALL({X,L}, {integer(),list(integer())},
		     not lists:member(X, delete(X,L)))).