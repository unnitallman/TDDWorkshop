module Library
  class Book
    attr_reader :isbn
    attr_accessor :borrowed
     
    def initialize(args={})
      @name = args[:name]
      @author = args[:author]
      @isbn =  args[:isbn]
      @price = args[:price]
      @borrowed = false
    end

    def ==(b)
      self.isbn == b.isbn
    end

    def eql?(b)
      self == b
    end
    
    def self.find_by_isbn(isbn)
      json = Book.get_data_from_openlib(isbn)
      book_details = JSON.parse(json)["ISBN:#{isbn}"]
      Book.new(:isbn => book_details["bib_key"].split(':').last)
    end
    
    def self.get_data_from_openlib(isbn)
      open("http://openlibrary.org/api/books?bibkeys=ISBN:#{isbn}&format=json").read
    end
  end
end
