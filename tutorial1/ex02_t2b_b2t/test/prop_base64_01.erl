-module(prop_base64_01).

-include_lib("proper/include/proper.hrl").

%% Using a user-defined simple type as a generator
-type bl() :: binary() | [1..255].

%%%%%%%%%%%%%%%%%%
%%% Properties %%%
%%%%%%%%%%%%%%%%%%
prop_enc_dec() ->
    ?FORALL(Msg,
            bl(),
            begin
                EncDecMsg =
                    base64:decode(
                        base64:encode(Msg)),
                case is_binary(Msg) of
                    true ->
                        EncDecMsg =:= Msg;
                    false ->
                        EncDecMsg =:= list_to_binary(Msg)
                end
            end).

%%%%%%%%%%%%%%%
%%% Helpers %%%
%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%
%%% Generators %%%
%%%%%%%%%%%%%%%%%%
