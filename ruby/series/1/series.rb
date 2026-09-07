class Series
  attr_reader :data

  def initialize(data)
    raise ArgumentError if data.length == 0

    @data = data
  end

  def slices(size)
    raise ArgumentError if size <= 0

    digits = data.chars
    slice_count = digits.count - size + 1 

    raise ArgumentError if slice_count <= 0

    slices = (0...slice_count).map do |i|
      digits.slice(i, size).join
    end

    slices.flatten
  end
end
