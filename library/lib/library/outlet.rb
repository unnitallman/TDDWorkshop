module Library
  class Outlet
    def initialize
      b1 = Book.new(:name => 'Book1', :author => 'author1', :price => '10', :isbn => 1)
      b2 = Book.new(:name => 'Book2', :author => 'author2', :price => '10', :isbn => 2)
      b3 = Book.new(:name => 'Book3', :author => 'author3', :price => '10', :isbn => 3)
      
      @books = {b1.isbn => b1, b2.isbn => b2, b3.isbn => b3}
    end
    
    def book_count
      @books.keys.size
    end
    
    def lookup(isbn)
      @books[isbn]
    end
    
    def issue(book)
      b = lookup(book.isbn) 
      
      if b.borrowed
        return false
      else
        b.borrowed = true
        return true
      end
           
    end
  end
end