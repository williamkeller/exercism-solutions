-module(darts).

-export([score/2]).
-import(math, [sqrt/1]).

-define(INNER_RADIUS, 1).
-define(INNER_POINTS, 10).
-define(MIDDLE_RADIUS, 5).
-define(MIDDLE_POINTS, 5).
-define(OUTER_RADIUS, 10).
-define(OUTER_POINTS, 1).

score(Distance) when Distance =< ?INNER_RADIUS -> ?INNER_POINTS;

score(Distance) when Distance =< ?MIDDLE_RADIUS -> ?MIDDLE_POINTS;

score(Distance) when Distance =< ?OUTER_RADIUS -> ?OUTER_POINTS;

score(_Distance) -> 0.

score(X, Y) ->
  Distance = math:sqrt(X * X + Y * Y),
  score(Distance).
