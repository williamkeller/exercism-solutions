-module(beer_song).

-export([verse/1, sing/1, sing/2, test_version/0]).

format(Template, Args) ->
  lists:flatten(io_lib:format(Template, Args)).


line1(N) when N =:= 0 ->
  format("No more bottles of beer on the wall, no more bottles of beer.\n", []);

line1(N) when N =:= 1 ->
  format("1 bottle of beer on the wall, 1 bottle of beer.\n", []);

line1(N) ->
  format("~p bottles of beer on the wall, ~p bottles of beer.\n", [N, N]).


line2(N) when N =:= -1 ->
  format("Go to the store and buy some more, 99 bottles of beer on the wall.\n", []);

line2(N) when N =:= 0 ->
  format("Take it down and pass it around, no more bottles of beer on the wall.\n", []);

line2(N) when N =:= 1 ->
  format("Take one down and pass it around, ~p bottle of beer on the wall.\n", [1]);

line2(N) ->
  format("Take one down and pass it around, ~p bottles of beer on the wall.\n", [N]).


verse(N) ->
  line1(N) ++ line2(N - 1).


sing(N) ->
  sing(N, 0, []).


sing(From, To) ->
  sing(From, To, []).


sing(From, To, Song) when From =:= To ->
  V = verse(From) ++ "\n",
  lists:reverse([V | Song]);

sing(From, To, Song) ->
  V = verse(From) ++ "\n",
  sing(From - 1, To, [V | Song]).


test_version() -> 1.
