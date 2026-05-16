-module(nucleotide_count).

-export([count/2, nucleotide_counts/1]).

count([], A, C, G, T) ->
  { A, C, G, T };

count([ Elem | Remainder ], A, C, G, T) ->
  case Elem of
    $A -> count(Remainder, A + 1, C, G, T);
    $C -> count(Remainder, A, C + 1, G, T);
    $G -> count(Remainder, A, C, G + 1, T);
    $T -> count(Remainder, A, C, G, T + 1)
  end.


count(Strand, Nucleotide) ->
  { A, C, G, T } = count(Strand, 0, 0, 0, 0),
  case Nucleotide of
    "A" -> A;
    "C" -> C;
    "G" -> G;
    "T" -> T
  end.


nucleotide_counts(Strand) ->
  { A, C, G, T } = count(Strand, 0, 0, 0, 0),

  [ { "A", A }, { "C", C }, { "G", G }, { "T", T }].

