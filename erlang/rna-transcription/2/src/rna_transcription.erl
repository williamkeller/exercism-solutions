-module(rna_transcription).

-export([to_rna/1]).

transcribe($C) -> $G;

transcribe($G) -> $C;

transcribe($T) -> $A;

transcribe($A) -> $U.

to_rna(Strand) ->
  [transcribe(X) || X <- Strand].
