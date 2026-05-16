-module(series).

-export([from_string/2, test_version/0]).

from_string(Width, String, Acc) when length(String) < Width ->
  Dest;

from_string(Width, [StrHead | StrTail], Acc) ->
  Substr = lists:sublist([StrHead | StrTail], Width),
  from_string(Width, StrTail, [Substr | Acc]).


from_string(Width, String) ->
  lists:reverse(from_string(Width, String, [])).

test_version() -> 1.
