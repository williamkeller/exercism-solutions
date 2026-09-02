

class TwelveDays
  DAYS = %w[ first second third fourth fifth sixth seventh
    eighth ninth tenth eleventh twelfth]
  GIFTS = [
    'a Partridge in a Pear Tree',
    'two Turtle Doves',
    'three French Hens',
    'four Calling Birds',
    'five Gold Rings',
    'six Geese-a-Laying',
    'seven Swans-a-Swimming',
    'eight Maids-a-Milking',
    'nine Ladies Dancing',
    'ten Lords-a-Leaping',
    'eleven Pipers Piping',
    'twelve Drummers Drumming'
  ]

  def self.song
    days = []

    (1..12).each do |day|
      days << verse(day)  
    end

    days.join("\n\n") + "\n" 
  end

  def self.verse(day)
    gifts = []

    i = day
    while i > 0
      gifts << dayline(i) 
      i -= 1
    end

    unless day == 1
      gifts[-1] = "and #{gifts[-1]}"
    end

    "#{header(day)}#{gifts.join(', ')}."
  end

  def self.header(day)
    ordinal = DAYS[day - 1]
    "On the #{ordinal} day of Christmas my true love gave to me: "
  end

  def self.dayline(day)
    GIFTS[day - 1]
  end
end
