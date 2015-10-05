# Excercise 1
#
# In this excercise we define a class BookInStock
# with isbn and price.
# Then we define two instances and print them on 
# console.
# The  problem here is that the pointer to the two 
# instances and not its content.

class BookInStock
    def initialize(isbn, price)
        @isbn = isbn
        @price = Float(price)
    end
end

b1 = BookInStock.new("isbn1", 3)
b2 = BookInStock.new("isbn1", 3)

puts b1
puts b2

