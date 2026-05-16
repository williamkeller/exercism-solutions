-module(collatz_conjecture).

-export([steps/1]).

steps(Value, _) when Value < 1 ->
  { error, "Only positive numbers are allowed" };

steps(Value, Acc) when Value =:= 1 ->
  Acc;

steps(Value, Acc) when (Value rem 2 =:= 0) ->
  steps(Value div 2, Acc + 1);

steps(Value, Acc) ->
  steps((Value * 3) + 1, Acc + 1).

steps(Value) ->
  steps(Value, 0).
