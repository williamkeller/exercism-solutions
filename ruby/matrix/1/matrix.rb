class Matrix
  attr_reader :matrix

  def initialize(matrix_string)
    @matrix = matrix_string.split(/\n/).map do |row|
      row.split(/\s+/).map(&:to_i)
    end
  end

  def row(index)
    matrix[index - 1] 
  end

  def column(index)
    matrix.map do |row|
      row[index - 1]
    end
  end
end
