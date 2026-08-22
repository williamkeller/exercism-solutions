

class Luhn
  def self.valid?(number)
    return false if number.match(/[^\d ]/)

    digits = number.gsub(/ /, '')
                   .chars
                   .map { |i| i.to_i }
                   .reverse

    return false if digits.length == 1

    index = 1
    length = digits.length

    loop do
      break if index >= length

      number = digits[index] * 2
      number = number - 9 if number > 9
      digits[index] = number
      index += 2
    end

    total = digits.sum

    total % 10 == 0
  end
end
