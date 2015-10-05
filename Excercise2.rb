# Excercise 2
#
# This class solve the problem in Excercise 1
# redefining the to_s methd. It's a method
# similar to toString in Java.
class BookInStock
    def initialize(isbn, price)
        @isbn = isbn
        @price = Float(price)
    end

    def to_s
        "ISBN: #{@isbn}, price: #{@price}"
    end
end

b1 = BookInStock.new("isbn1", 3)
b2 = BookInStock.new("isbn1", 3)

puts b1
puts b2

