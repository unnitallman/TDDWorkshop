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
    
    it "customer should be able to borrow a book" do
      b1 = Book.new(:name => 'Book1', :author => 'author1', :price => '10', :isbn => 1)
      o = Outlet.new
      o.issue(b1.isbn).should 
    end
  end
end
