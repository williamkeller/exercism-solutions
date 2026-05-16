-module(accumulate).

-export([accumulate/2, test_version/0]).

apply_fun(_, SoFar, []) ->
  lists:reverse(SoFar);
apply_fun(Fn, SoFar, [Head | Tail]) ->
  apply_fun(Fn, [Fn(Head) | SoFar], Tail).

accumulate(Fn, Ls) ->
  apply_fun(Fn, [], Ls).

test_version() -> 2.
