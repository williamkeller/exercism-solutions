-module(roman_numerals).

-export([numerals/1, test_version/0]).

digits(Digit, Low, Mid, High) ->
  case Digit of
    1 -> Low;
    2 -> Low ++ Low;
    3 -> Low ++ Low ++ Low;
    4 -> Low ++ Mid;
    5 -> Mid;
    6 -> Mid ++ Low;
    7 -> Mid ++ Low ++ Low;
    8 -> Mid ++ Low ++ Low ++ Low;
    9 -> Low ++ High;
    _ -> ""
  end.

numerals(Number) when Number >= 1000 ->
  Thousands = Number div 1000,
  Remainder = Number rem 1000,

  digits(Thousands, "M", "", "") ++ numerals(Remainder);

numerals(Number) when Number >= 100, Number < 1000 ->
  Hundreds = Number div 100,
  TensAndOnes = Number rem 100,

  digits(Hundreds, "C", "D", "M") ++ numerals(TensAndOnes);

numerals(Number) when Number >= 10, Number < 100 ->
  Tens = Number div 10,
  Ones = Number rem 10,

  digits(Tens, "X", "L", "C") ++ numerals(Ones);

numerals(Number) when Number < 10 ->
  lists:flatten(digits(Number, "I", "V", "X")).

test_version() -> 1.
