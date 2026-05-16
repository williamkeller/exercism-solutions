-module(raindrops).

-export([convert/1]).

-define(PHRASES, [{3, "Pling"}, {5, "Plang"}, {7, "Plong"}]).

convert(Number) ->
  Drops = lists:flatten([ Phrase || { Factor, Phrase } <- ?PHRASES, Number rem Factor =:= 0]),

  case Drops of
    [] ->
      integer_to_list(Number);
    NotEmpty ->
      NotEmpty
  end.
