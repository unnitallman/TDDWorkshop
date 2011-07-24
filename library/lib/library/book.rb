module Library
  class Book
    attr_reader :isbn
    def initialize(args={})
      @name = args[:name]
      @author = args[:author]
      @isbn =  args[:isbn]
      @price = args[:price]
    end

    def ==(b)
      self.isbn == b.isbn
    end

    def eql?(r)
      self == r
    end
  end
end
