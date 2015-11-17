-module(counter_tests).
-include_lib("eunit/include/eunit.hrl").

add_test() ->
  {ok, P1} = counter:start_link(),
  ?assertEqual(0, counter:val(P1)),
  ?assertEqual(1, counter:inc(P1)).

