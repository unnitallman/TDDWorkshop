require 'spec_helper'

module Library
  describe Outlet do
    it "should have 3 books" do
      o = Outlet.new
      o.book_count.should eq(3)
    end

    it "should return book with ISBN 1 when lookedup with ISBN 1" do
      b1 = Book.new(:name => 'Book1', :author => 'author1', :price => '10', :isbn => 1)
      o = Outlet.new
      o.lookup(b1.isbn).should eq b1
    end
    
    it "customer should be able to borrow a book given a valid ISBN and it has not been borrowed already " do
      b1 = Book.new(:name => 'Book1', :author => 'author1', :price => '10', :isbn => 1)
      o = Outlet.new
      o.borrow(b1.isbn).should eq b1
    end
    
    it "customer should not be able to borrow a book given an invalid ISBN and it has not been borrowed already" do
      o = Outlet.new
      o.borrow(-1).should eq nil
    end
    
    
    
  end
end
