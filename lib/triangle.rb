require 'pry'
class Triangle
  attr_accessor :sides, :kind
  def initialize(side_1, side_2, side_3)
    @sides = [side_1, side_2, side_3]
  end
  def kind
    if sides.any? {|side| side <= 0 || (@sides).reduce(:+) - side <= side }
      raise TriangleError
    elsif @sides.uniq.size == 1
      @kind = :equilateral
    elsif @sides.uniq.size == 2
      @kind = :isosceles
    elsif @sides.uniq.size == 3
      @kind = :scalene
    end
  end
  class TriangleError < StandardError
    def message
      "Invalid triangle, each side must be larger than 0 and the length of any side must not exceed the sum of the lengths of the other two sides"
    end
  end
end
