-module(grains).

-export([square/1, total/0]).

square(Square) when Square < 1 ->
  { error, "square must be between 1 and 64" };

square(Square) when Square > 64 ->
  { error, "square must be between 1 and 64" };

square(Square) ->
  trunc(math:pow(2, (Square - 1))).


grain_totals(Square, Sum) when Square =:= 0 ->
  Sum;

grain_totals(Square, Sum) ->
  grain_totals(Square - 1, Sum + square(Square)).


total() ->
  grain_totals(64, 0).
