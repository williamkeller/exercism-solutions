

class Hamming
  def self.compute(strand1, strand2)
    raise ArgumentError unless strand1.length == strand2.length

    strand1 = strand1.chars
    strand2 = strand2.chars
    strand_length = strand1.length

    difference = 0

    (0..strand_length).each do |i|
      difference += 1 if strand1[i] != strand2[i]
    end

    difference
  end
end
