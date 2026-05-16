-module(queen_attack).

-export([can_attack/2]).

%% Row test
can_attack({WQ_x, _}, {BQ_x, _}) when WQ_x =:= BQ_x -> true;

%% Column test
can_attack({_, WQ_y}, {_, BQ_y}) when WQ_y =:= BQ_y -> true;

%% Postive slope diagnal
can_attack({WQ_x, WQ_y}, {BQ_x, BQ_y}) when (WQ_x - BQ_x) =:= (WQ_y - BQ_y) -> true;

%% Negative slope diagnal
can_attack({WQ_x, WQ_y}, {BQ_x, BQ_y}) when (WQ_x - BQ_x) =:= -(WQ_y - BQ_y) -> true;

%% Everything else
can_attack(_, _) -> false.
