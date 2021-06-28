-module(prop_base64).

-include_lib("proper/include/proper.hrl").

%%%%%%%%%%%%%%%%%%
%%% Properties %%%
%%%%%%%%%%%%%%%%%%

%% Testing the base64 module:
%% encode should be symmetric to decode:
prop_enc_dec() ->
    ?FORALL(Msg,
            union([binary(), list(range(1, 255))]),
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
