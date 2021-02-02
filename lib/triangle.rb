class Triangle
  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def legal?
    if length1 <= 0 || length2 <= 0 || length3 <= 0
      false
    elsif (length1 + length2) <= length3 || (length2 + length3) <= length1 || (length3 + length1) <= length2
      false
    else
      true
    end
  end
  
  def kind
    if self.legal? == false
      raise TriangleError
    elsif length1 == length2 && length2 == length3
      :equilateral
    elsif length1 == length2 || length2 == length3 || length1 == length3
      :isosceles
    else
      :scalene
    end
  
  end

  class TriangleError < StandardError
    def message
      puts "This is not a legal triangle."
    end   
  end
  
end
