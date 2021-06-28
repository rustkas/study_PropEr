PropEr shrinking
=====

Create new OTP lib
-----
    $ rebar3 new lib ex03_shrinking && cd x03_shrinking

Add information to rebar.config

Get dependencies
-----
    $ rebar3 get-deps


Get PropEr help
-----
    $ rebar3 help proper


Create new propety via PropEr
-----
    $ rebar3 new proper delete
	
PropEr test
-----
    $ rebar3 proper
	$ rebar3 proper -m prop_delete -p prop_delete
	$ rebar3 proper -m prop_delete -p prop_delete
	