require 'spec_helper'

module Geometry
  describe 'Square' do
    
    it "should have perimeter of 20 for length 5" do
      s = Rectangle.build_square(5)
      s.perimeter.should eq(20)
    end
      
    pending "the perimeter" do
      it "is of 20 for length 5" do
        r = Square.new(5)
        r.perimeter.should eq(20)
      end

      it "is of 12 for length 3" do
        r = Square.new(3)
        r.perimeter.should eq(12)
      end
    end

    pending "the area" do
      it "is 25 for length 5" do
        r = Square.new(5)
        r.area.should eq(25)
      end

      it "is 9 for length 3" do
        r = Square.new(3)
        r.area.should eq(9)
      end
    end
  end
end