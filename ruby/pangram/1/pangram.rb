class Pangram
  def self.pangram?(sentence)
    letters = Set.new

    cleaned = sentence.downcase.gsub(/[ _\d\."]/, '')

    cleaned.chars.each do |c|
      letters << c
    end

    letters.size == 26
  end
end
