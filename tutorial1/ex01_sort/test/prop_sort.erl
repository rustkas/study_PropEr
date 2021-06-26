-module(prop_sort).
-import(my_sort,[sort/1]).
-include_lib("proper/include/proper.hrl").
-compile([{nowarn_unused_function, [error_prop_same_length/0]}]).

%%%%%%%%%%%%%%%%%%
%%% Properties %%%
%%%%%%%%%%%%%%%%%%
prop_ordered() ->
    ?FORALL(L, list(integer()), ordered(sort(L))).
	
error_prop_same_length() ->
    ?FORALL(L, list(integer()), length(L) =:= length(sort(L))).
	
prop_same_length_conditional_check() ->
    ?FORALL(L, list(integer()),
            ?IMPLIES(no_duplicates(L), length(L) =:= length(sort(L)))).

prop_same_length_no_dupls() ->
    ?FORALL(L, list_no_dupls(integer()), length(L) =:= length(sort(L))).

%prop_equiv_usort() ->
%    ?FORALL(L, list(integer()), sort(L) =:= lists:usort(L)).
	
prop_equiv_usort() ->
    ?FORALL(L, list(), sort(L) =:= lists:usort(L)).

prop_same_length() ->
    ?FORALL(L, list(), length(L) =:= length(sort(L))).

	
%%%%%%%%%%%%%%%
%%% Helpers %%%
%%%%%%%%%%%%%%%
ordered([]) -> true;
ordered([_]) -> true;
ordered([A,B|T]) -> A =< B andalso ordered([B|T]).

%% существуют более лучшие реализации ...
no_duplicates([]) -> true;
no_duplicates([A|T]) ->
     not lists:member(A, T) andalso no_duplicates(T).

list_no_dupls(T) ->
    ?LET(L, list(T), remove_duplicates(L)).

%% существует более лучшие решения ...
remove_duplicates([]) -> [];
remove_duplicates([A|T]) ->
    case lists:member(A, T) of
        true -> remove_duplicates(T);
        false -> [A|remove_duplicates(T)]
    end.


%%%%%%%%%%%%%%%%%%
%%% Generators %%%
%%%%%%%%%%%%%%%%%%

