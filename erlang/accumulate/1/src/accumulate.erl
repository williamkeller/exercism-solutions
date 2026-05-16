-module(accumulate).

-export([accumulate/2, test_version/0]).

apply_fun(_Fn, SoFar, []) ->
  reverse(SoFar);
apply_fun(Fn, SoFar, [Head | Tail]) ->
  apply_fun(Fn, [Fn(Head) | SoFar], Tail).

reverse(Source) ->
  reverse([], Source).

reverse(Dest, []) ->
  Dest;
reverse(Dest, [Head | Tail]) ->
  reverse([Head | Dest], Tail).

accumulate(Fn, Ls) ->
  apply_fun(Fn, [], Ls).

test_version() -> 1.
