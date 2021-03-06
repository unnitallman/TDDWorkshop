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
    
    def ==(r)
      r.is_a?(Rectangle) && @length == r.length && @breadth == r.breadth
    end
    
    def eql?(r)
      self == r
    end
    
    def hash
      length.hash * 13 + breadth.hash * 7
    end
    
  end
end