module Blackjack
  CARD_VALUES = {
    "ace" => 11,
    "two" => 2,
    "three" => 3,
    "four" => 4,
    "five" => 5,
    "six" => 6,
    "seven" => 7,
    "eight" => 8,
    "nine" => 9,
    "ten" => 10,
    "jack" => 10,
    "queen" => 10,
    "king" => 10
  }

  def self.parse_card(card)
    CARD_VALUES[card] || 0
  end

  def self.card_range(card1, card2)
    card_total = parse_card(card1) + parse_card(card2)

    case card_total
      when 4..11
        'low'
      when 12..16
        'mid'
      when 17..20
        'high'
      when 21
        'blackjack'
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    card1_value = parse_card(card1)
    card2_value = parse_card(card2)
    card_range = card_range(card1, card2) 
    dealer_value = parse_card(dealer_card)

    return 'P' if card1_value == 11 && card2_value == 11

    if card_range == 'blackjack' 
      return (dealer_value < 10) ? 'W' : 'S'
    end

    return 'S' if card_range == 'high'

    if card_range == 'mid'
      return dealer_value >= 7 ? 'H' : 'S'
    end

    return 'H' if card_range == 'low'
  end
end
