require 'spec_helper'

module Geometry
  describe Rectangle do
    it "should have perimeter of 30 for 5x10" do
      r = Rectangle.new(5,10)
      r.perimeter.should eq(30)
    end
  end
end