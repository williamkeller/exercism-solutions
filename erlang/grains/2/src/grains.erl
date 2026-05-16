-module(grains).

-export([square/1, total/0]).

-define(MIN, 1).
-define(MAX, 64).

square(Square) when Square < ?MIN ->
  { error, "square must be between 1 and 64" };

square(Square) when Square > ?MAX ->
  { error, "square must be between 1 and 64" };

square(Square) ->
  trunc(math:pow(2, (Square - 1))).


grain_totals(Square, Sum) when Square < ?MIN ->
  Sum;

grain_totals(Square, Sum) ->
  grain_totals(Square - 1, Sum + square(Square)).


total() ->
  grain_totals(?MAX, 0).
