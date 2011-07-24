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
    
    it "customer should not be able to borrow a book that doesn't exist in the library" do
      o = Outlet.new
      o.issue(Book.new).should_not be true
    end
    
    it "owner should be able to add a book" do
      o = Outlet.new
      b1 = Book.new(:name => 'New Book', :author => 'author5', :price => '10', :isbn => 4)
      o.add_book(b1)
      o.lookup(b1.isbn).should eq b1
    end
    
    it "should be able to fetch details of a book from openlibrary, given its ISBN" do
      book = Book.new(:name => 'Book1', :author => 'author1', :price => '10', :isbn => "0451526538")
      Book.should_receive(:get_data_from_openlib).with("0451526538").and_return("{\"ISBN:0451526538\":{\"bib_key\":\"ISBN:0451526538\"}}")
      Book.find_by_isbn("0451526538").should eq book
    end  
    
  end
end
