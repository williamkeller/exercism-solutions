
class Acronym
  def self.abbreviate(phrase)
    words = phrase.gsub(/[,'_.&"]/, '')
                  .split(/[ -]/)
                  .compact

    words.map { |word| word.slice(0) }.join.upcase
  end
end
