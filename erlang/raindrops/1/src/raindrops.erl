-module(raindrops).

-export([convert/1]).

convert(Number, Factor, Phrase, Acc) when (Number rem Factor =:= 0) ->
  [Phrase | Acc];

convert(Number, Factor, _, Acc) when (Number rem Factor =/= 0) ->
  Acc.

convert(Number) ->
  Drops = convert(Number, 3, "Pling",
          convert(Number, 5, "Plang",
          convert(Number, 7, "Plong", []))),

  if
    length(Drops) == 0 ->
      integer_to_list(Number);
    true ->
      lists:flatten(Drops)
  end.
