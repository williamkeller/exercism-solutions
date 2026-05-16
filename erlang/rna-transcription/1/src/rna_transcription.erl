-module(rna_transcription).

-export([to_rna/1]).

transcribe(Rna) when Rna =:= $C ->
  $G;

transcribe(Rna) when Rna =:= $G ->
  $C;

transcribe(Rna) when Rna =:= $T ->
  $A;

transcribe(Rna) when Rna =:= $A ->
  $U.

to_rna(Strand) ->
  F = fun(Rna) -> transcribe(Rna) end,

  %% Very confused, test 6 is inserting quotes
  Comps = lists:map(F, Strand),
  lists:reverse(Comps).
