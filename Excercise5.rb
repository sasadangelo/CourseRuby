# Excercise 5
#
# In this excercise we see variable references.
# Variable with no type a pointer to string.
# It's a reference variable and works like in Java.

class BookInStock
    attr_reader :isbn, :price
    attr_writer :price

    def initialize(isbn, price)
        @isbn = isbn
        @price = Float(price)
    end

    def to_s
        "ISBN: #{@isbn}, price: #{@price}"
    end

    def price_in_cents
        Integer(price*100 + 0.5)
    end

    #def price_in_cents=(cents)
    #    ...
    #end
end

b1 = BookInStock.new("isbn1", 3)
b2 = BookInStock.new("isbn2", 3.5)

puts b1
puts b2
puts "ISBN di b1: #{b1.isbn}"
puts "PRICE di b1: #{b1.price}"
puts "ISBN di b2: #{b2.isbn}"
puts "PRICE di b2: #{b2.price}"
b1.price = 5
puts "ISBN di b1: #{b1.isbn}"
puts "PRICE di b1: #{b1.price}"

# Variable reference
person1 = "Tim"
person2 = person1
person1[0] = 'J'
puts person1

