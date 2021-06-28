PropEr testing of specs

Create new OTP lib
-----
    $ rebar3 new lib ex06_specs && cd ex06_specs

Add information to rebar.config

Get dependencies
-----
    $ rebar3 get-deps


Get PropEr help
-----
    $ rebar3 help proper


Create new propety via PropEr
-----
    $ rebar3 new proper myspecs
    

Format
-----
    $ rebar3 format


PropEr test
-----
    $ rebar3 as test shell
	1>proper:check_spec({myspecs,divide,2}).

