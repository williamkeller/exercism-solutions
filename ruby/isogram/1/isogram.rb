

class Isogram
  def self.isogram?(phrase)
    return true if phrase.length == 0
    tally = phrase.downcase
                  .gsub(/[\- ]/, '')
                  .chars
                  .tally

    counts = tally.values.sort.reverse
    counts[0] == 1
  end
end
