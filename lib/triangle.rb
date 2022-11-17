require 'pry'
class Triangle
  attr_reader :side1, :side2, :side3, :all_sides
  
  def initialize side1, side2, side3
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @all_sides = [side1, side2, side3].sort
  end

  def kind
    if @all_sides[0] <= 0 || @all_sides[2] >= @all_sides[1] + @all_sides[0]
      raise TriangleError
    elsif @all_sides.uniq.length == 1
      :equilateral
    elsif @all_sides.uniq.length == 2
      :isosceles
    elsif @all_sides.uniq.length == 3
      :scalene
    end
    
  end

  class TriangleError < StandardError
  end
end

# e = Triangle.new(5, 5, 5)
# i = Triangle.new(5, 5, 4)
# s = Triangle.new(5, 4, 3)

# binding.pry

# 0