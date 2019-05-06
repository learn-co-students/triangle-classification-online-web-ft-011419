require "pry"

class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def illegal_triangle
    if a == 0 || b == 0 || c == 0
      false
    elsif a < 0 || b < 0 || c < 0
      false
    elsif (a + b < c) || (a + c < b) || (b + c < a)
      false
    elsif (a + b == c) || (a + c == b) || (b + c == a)
      false
    else
      true
    end
  end

  def kind
    if self.illegal_triangle == false
      raise TriangleError
    else
      if a == b && b == c
        :equilateral
      elsif a == b || a == c || b == c
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError

  end

end
