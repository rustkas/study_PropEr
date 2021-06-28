-module(prop_types).

-include_lib("proper/include/proper.hrl").

%%%%%%%%%%%%%%%%%%
%%% Properties %%%
%%%%%%%%%%%%%%%%%%
prop_new_array_opts() ->
 ?FORALL(Opts, types:array_opts(),
         array:is_array(array:new(Opts))).
