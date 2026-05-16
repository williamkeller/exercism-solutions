-module(raindrops).

-export([convert/1]).

-define(PHRASES, [{3, "Pling"}, {5, "Plang"}, {7, "Plong"}]).

convert(Number, Factor, Phrase) when (Number rem Factor =:= 0) ->
  Phrase;

convert(_, _Factor, _) -> 
  "".

convert(Number) ->
  Drops = lists:flatten([ convert(Number, Factor, Phrase) || { Factor, Phrase } <- ?PHRASES]),

  if
    Drops == [] ->
      integer_to_list(Number);
    true ->
      Drops
  end.
