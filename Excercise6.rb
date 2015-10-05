# Excercise 6
#
# In this excercise we define access modifiers: public, protected, private.
# By default it's public.
#
# The possible syntax is the following:
#
# public
# def method1(...)
#     ....
# end
#
# def method2(...)
#     ....
# end
#
# protected
# def method3(...)
#     ....
# end
#
# def method4(...)
#     ....
# end
#
# private
# def method3(...)
#     ....
# end
#
#
# public
# def methodA(...)
#     ....
# end
#
# def methodB(...)
#     ....
# end
#
# protected
# def methodC(...)
#     ....
# end
#
# def methodD(...)
#     ....
# end
#
# private
# def methodE(...)
#     ....
# end

class BookInStock
    attr_reader :isbn, :price
    attr_writer :price

    public
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

