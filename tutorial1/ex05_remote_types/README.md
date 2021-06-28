PropEr integration with remote types

Create new OTP lib
-----
    $ rebar3 new lib ex05_remote_types && cd ex05_remote_types

Add information to rebar.config

Get dependencies
-----
    $ rebar3 get-deps


Get PropEr help
-----
    $ rebar3 help proper


Create new propety via PropEr
-----
    $ rebar3 new proper t2b_b2t
	$ rebar3 new proper base64
	$ rebar3 new proper base64_01
	$ rebar3 new proper delete
	$ rebar3 new proper delete_01
    

Format
-----
    $ rebar3 format


PropEr test
-----
    $ rebar3 proper
	$ rebar3 proper -m prop_base64 -p prop_enc_dec
	$ rebar3 proper -m prop_base64_01 -p prop_enc_dec
	$ rebar3 proper -m prop_delete_01 -p prop_delete
	$ rebar3 proper -m prop_types -p prop_new_array_opts
