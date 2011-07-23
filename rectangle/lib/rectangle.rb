class Rectangle
  def initialize(l,b)
    @length = l
    @breadth = b
  end

  def perimiter
    2*(@length + @breadth)
  end
end

l = 10
b = 5

r = Rectangle.new(l,b)
p r.perimiter
