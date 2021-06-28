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
			 
prop_delete_with_stats() ->
    ?FORALL({X,L}, {integer(),list(integer())},
	    collect(lists:member(X,L),
		    not lists:member(X, delete(X,L)))).
			
prop_delete_only_interesting1() ->
    ?FORALL({X,L}, {integer(),list(integer())},
	    ?IMPLIES(lists:member(X,L),
		     not lists:member(X, delete(X,L)))).

prop_delete_only_interesting2() ->
    ?FORALL({X,L}, list_and_elem1(),
	    not lists:member(X, delete(X,L))).

prop_delete_only_interesting3() ->
    ?FORALL({X,L}, list_and_elem2(),
	    not lists:member(X, delete(X,L))).
  
%%%%%%%%%%%%%%%%%%
%%% Generators %%%
%%%%%%%%%%%%%%%%%%		  
list_and_elem1() ->
    ?SUCHTHAT({X,L}, {integer(),non_empty(list(integer()))},
	      lists:member(X,L)).
		  
list_and_elem2() ->
    ?LET(L, non_empty(list(integer())), {oneof(L),L}).