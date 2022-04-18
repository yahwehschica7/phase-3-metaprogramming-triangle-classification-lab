class Triangle
  attr_accessor :sides

  @sides = []

  def initialize(side_one, side_two, side_three)
    @sides = [side_one, side_two, side_three]
    @sides.sort!
  end

  def kind
    if @sides.any?{|s| s <= 0} || ((@sides[0] + @sides[1] <= @sides[2]))
      raise TriangleError
    elsif @sides.uniq.length == 1
      :equilateral
    elsif @sides.uniq.length == 2
      :isosceles
    else 
      :scalene
    end
  end
    class TriangleError < StandardError
    end 
  
end
