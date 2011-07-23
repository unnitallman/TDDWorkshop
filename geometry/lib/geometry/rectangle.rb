module Geometry
  class Rectangle
    def initialize(l,b)
       @length = l
       @breadth = b
    end
  
    def perimeter
      2*(@length + @breadth)
      end
  end
end