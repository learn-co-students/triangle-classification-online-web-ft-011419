class Triangle
  
  attr_accessor :a, :b, :c  
  
  def initialize(a, b, c) 
    @a = a 
    @b = b
    @c = c 
  end
    
  def kind 
    valid_triangle 
    if a = b && b = c && a = c 
      :equilateral 
    elsif a = b || b = c || a = c 
      :isosceles
    else !a = b && !b = c && !a = c
      :scalene
    end  
  end   
  
end
