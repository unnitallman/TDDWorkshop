require 'spec_helper'

module Geometry
  describe Rectangle do
    it "should have perimeter of 30 for 5x10" do
      r = Rectangle.new(5,10)
      r.perimeter.should eq(30)
    end
    
    it "should have perimeter of 10 for 2x3" do
      r = Rectangle.new(2,3)
      r.perimeter.should eq(10)
    end
    
    it "should have area of 50 for 5x10" do
      r = Rectangle.new(5,10)
      r.area.should eq(50)
    end
    
     it "should have area of 24 for 8x3" do
        r = Rectangle.new(8,3)
        r.area.should eq(24)
      end
    
  end
end