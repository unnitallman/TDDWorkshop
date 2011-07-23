require 'spec_helper'

module Geometry
  describe Rectangle do
    context("the perimeter") do
      it "is of 30 for 5x10" do
        r = Rectangle.new(5,10)
        r.perimeter.should eq(30)
      end

      it "is of 10 for 2x3" do
        r = Rectangle.new(2,3)
        r.perimeter.should eq(10)
      end
    end

    context("the area") do
      it "is 50 for 5x10" do
        r = Rectangle.new(5,10)
        r.area.should eq(50)
      end

      it "is 24 for 8x3" do
        r = Rectangle.new(8,3)
        r.area.should eq(24)
      end
    end
    
    it "of 0 length should be invalid" do
      lambda {r = Rectangle.new(0,10)}.should raise_error(InvalidRectangleError)
    end
    
    it "of 0 breadth should be invalid" do
      lambda {r = Rectangle.new(10,0)}.should raise_error(InvalidRectangleError)
    end
    
    it "of 0 length and 0 breadth should be invalid" do
      lambda {r = Rectangle.new(0,0)}.should raise_error(InvalidRectangleError)
    end
    
    it "of -1 length should be invalid" do
      lambda {r = Rectangle.new(-1,10)}.should raise_error(InvalidRectangleError)
    end
    
  end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end
