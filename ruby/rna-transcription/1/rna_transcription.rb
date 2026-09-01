

class Complement
  COMPLEMENTS = {
    'C' => 'G',
    'G' => 'C',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(strand)
    strand.chars.map do |value|
      COMPLEMENTS[value]
    end
    .join
  end
end
