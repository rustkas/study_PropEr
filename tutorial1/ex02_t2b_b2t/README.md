PropEr integration with simple types

Create new OTP lib
-----
    $ rebar3 new lib ex02_t2b_b2t && cd ex02_t2b_b2t

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
    

Format
-----
    $ rebar3 format

EUnit test
    $ rebar3 eunit -v
	
PropEr test
-----
    $ rebar3 proper
	$ rebar3 proper -m prop_base64 -p prop_enc_dec
	$ rebar3 proper -m prop_base64_01 -p prop_enc_dec
	$ rebar3 proper -m prop_delete_01 -p prop_delete
	
