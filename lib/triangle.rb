class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a,b,c)
    @a = a
    @b = b 
    @c = c
  end

  def kind 
    if @a==0 || @a+@b<=@c|| @b+@c<=@a || @a+@c<=@b
      raise TriangleError
    elsif
    @a==@b && @b==@c
    :equilateral
    elsif
    @b==@a || @b==@c || @a==@c
    :isosceles
    else 
    :scalene
  end
end
    
    def violation?
      no_violation = [(a + b > c), (a + c > b),(b + c > a)]
      [a, b, c].each {|s| no_violation << false if s <= 0}
      raise TriangleError if no_violation.include?(false)
  end
    
    class TriangleError < StandardError
  end
end



