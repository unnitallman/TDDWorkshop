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
      o.issue(b1).should be true
    end
    
    it "customer should not be able to borrow a already borrowed book" do
      b1 = Book.new(:name => 'Book1', :author => 'author1', :price => '10', :isbn => 1)
      o = Outlet.new
      o.issue(b1)
      
      o.issue(b1).should_not be true
    end
    
  end
end
