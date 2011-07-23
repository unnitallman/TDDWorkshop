module Geometry
  class Rectangle
    def initialize(l,b)
       @length = l
       @breadth = b
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
    
  end
end