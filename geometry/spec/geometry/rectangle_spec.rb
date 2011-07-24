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

    context("should be invalid") do
      it "if length 0" do
        lambda {r = Rectangle.new(0,10)}.should raise_error(InvalidRectangleError)
      end

      it "if breadth 0" do
        lambda {r = Rectangle.new(10,0)}.should raise_error(InvalidRectangleError)
      end

      it "if length and breadth 0" do
        lambda {r = Rectangle.new(0,0)}.should raise_error(InvalidRectangleError)
      end

      it "if length -1" do
        lambda {r = Rectangle.new(-1,10)}.should raise_error(InvalidRectangleError)
      end

      it "if breadth -3" do
        lambda {r = Rectangle.new(10,-3)}.should raise_error(InvalidRectangleError)
      end

      it "if length -1 and breadth -4" do
        lambda {r = Rectangle.new(-1,-4)}.should raise_error(InvalidRectangleError)
      end
    end

    context "of 5x10 should" do
      it "be equal to a rectangle of 5x10" do
        r1 = Rectangle.new(5,10)
        r2 = Rectangle.new(5,10)
        r1.should eq r2
      end

      it "not be equal to a rectangle of 10x5" do
        r1 = Rectangle.new(5,10)
        r2 = Rectangle.new(10,5)
        r1.should_not eq r2
      end
    
      it "be equal to a rectangle of 5x10(eql)" do
        r1 = Rectangle.new(5,10)
        r2 = Rectangle.new(5,10)
        r1.should eq r2
      end

      it "not be equal to a rectangle of 10x5(eql)" do
        r1 = Rectangle.new(5,10)
        r2 = Rectangle.new(10,5)
        r1.should_not eq r2
      end
      
      it 'should not be equal to 2' do
        r = Rectangle.new(5,10)
        r.should_not eq 2
      end   
      
      it 'should not be equal to nil' do
        r = Rectangle.new(5,10)
        r.should_not eq nil
      end
      
      it "should have the same hash code for the same rectangle object" do
        r1 = Rectangle.new(5,10)
        r2 = Rectangle.new(5,10)
        r1.hash.should eq r2.hash
      end
    end

  end



















end
