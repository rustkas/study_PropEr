-module(types).

-export_type([array_opt/0,array_opts/0]).

-type array_opt() :: 'fixed' | non_neg_integer()
                  | {'default', term()}
				  | {'fixed', boolean()}
				  | {'size', non_neg_integer()}.
-type array_opts() :: array_opt() | [array_opt()].