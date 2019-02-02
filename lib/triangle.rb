class Triangle
  attr_accessor :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end 
  
  def kind 
    if side_1 == 0 || side_2 == 0 || side_3 == 0 || side_1 + side_2 <= side_3 || side_2 + side_3 <= side_1 || side_1 + side_3 <= side_2
        raise TriangleError
    elsif side_1 == side_2 && side_2 == side_3  
      :equilateral
    elsif side_1 == side_2 || side_2 == side_3 || side_1 == side_3
      :isosceles
    else 
      :scalene
    end 
  end 
  
  class TriangleError < StandardError 
    "No side can be less than a length of 1 AND two sides added together must always be greater than the third side"
  end 
  
end
