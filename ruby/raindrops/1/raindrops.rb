
class Raindrops
  def self.convert(number)
    output = ''

    if number % 3 == 0
      output += 'Pling'
    end

    if number % 5 == 0
      output += 'Plang'
    end

    if number % 7 == 0
      output += 'Plong'
    end

    output = number.to_s if output.empty?

    output
  end
end
