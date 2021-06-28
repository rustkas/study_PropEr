-module(delete_01).

-export([delete/2]).
-export_type([tree/1]).

-type tree(T) :: leaf | {node, T, tree(T), tree(T)}.


%% A tree delete implementation
-spec delete(T, tree(T)) -> tree(T).
delete(_X, leaf) ->
    leaf;
delete(X, {node, X, L, R}) ->
    join(L, R);
delete(X, {node, Y, L, R}) ->
    {node, Y, delete(X, L), delete(X, R)}.

join(leaf, T) ->
    T;
join({node, X, L, R}, T) ->
    {node, X, join(L, R), T}.
