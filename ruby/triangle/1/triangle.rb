
class Triangle
  def initialize(sides)
    @a = sides[0]
    @b = sides[1]
    @c = sides[2]
  end

  def equilateral?
    return false unless triangle?

    @a == @b && @b == @c && @c == @a
  end

  def isosceles?
    return false unless triangle?

    return @a == @b || @b == @c || @c == @a 
  end

  def scalene?
    return false unless triangle?

    @a != @b && @b != @c && @c != @a
  end

  private

  def triangle?
    return false if @a == 0 || @b == 0 || @c == 0

    @a + @b >= @c && @b + @c >= @a && @c + @a >= @b
  end
end
