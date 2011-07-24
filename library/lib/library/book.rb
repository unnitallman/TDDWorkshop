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
  end
end
