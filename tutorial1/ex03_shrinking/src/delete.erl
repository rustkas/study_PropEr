-module(delete).

-export([delete/2]).


delete(X, L) ->
    delete(X, L, []).

delete(_, [], Acc) ->
    lists:reverse(Acc);
delete(X, [X], Acc) ->
    lists:reverse(Acc);
delete(X, [X|Rest], Acc) ->
    %this line of code maked an error
    %lists:reverse(Acc) ++ Rest;
	delete(X, Rest, Acc);
delete(X, [Y|Rest], Acc) ->
    delete(X, Rest, [Y|Acc]).