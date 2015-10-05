# Excercise 3
#
# In this excercise we define the isbn and price
# as attribute so that we can access to them using
# getter/setter.
# In this way we avoid to use:
#
#
#     def isbn
#          @isbn
#     end
#
#     def price
#         @price
#     end
#
# attr_writer define getter.
# attr_writer define setter.
# attr_accessor define getter/setter.
#
# To see the methods implicitly defined by Ruby from irb
# type: b1.methods

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

