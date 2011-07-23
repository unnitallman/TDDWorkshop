module Geometry
  class Rectangle
    attr_reader :length, :breadth
    def initialize(l,b)
       @length = l
       @breadth = b
       
       raise InvalidRectangleError if (@length <= 0 || @breadth <= 0)
    end
  
    def perimeter
      2*(@length + @breadth)
    end
    
    def area
      @length * @breadth
    end
    
    def self.build_square(length)
      new(length, length)
    end
    
    def equal?(r)
      @length == r.length && @breadth == r.breadth
    end
    
  end
end