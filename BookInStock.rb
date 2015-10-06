require 'csv'

class BookInStock
    attr_reader :isbn
    attr_accessor :price

    public
    def initialize(isbn, price)
        @isbn = isbn
        @price = Float(price)
    end

    def to_s
        "ISBN: #{@isbn}, price: #{@price}"
    end
end

class CsvReader
    attr_reader :books_collection 

    def initialize()
        @books_collection=[]
    end

    public
    def read_in_csv_data(csv_file_name)
        CSV.foreach(csv_file_name, headers: true) do |row|
            book = BookInStock.new("#{row['ISBN']}","#{row['PRICE']}")
            @books_collection.push(book)
        end
    end

    def read_all_csv(dir_name)
        Dir.glob("*.csv") do |csvfile|
            file_name = File.basename(csvfile)
            read_in_csv_data(file_name)
        end
    end

    def total_value_in_stock()
        @books_collection.inject(0) {|sum, book| sum + book.price }
    end

    def number_of_each_isbn()
        map = Hash.new(0)
        @books_collection.each do |book|
            map[book.isbn]+=1
        end
        return map
    end
end

csvReader = CsvReader.new
#csvReader.read_in_csv_data("C:\\CourseRuby\\books.csv")
csvReader.read_all_csv("C:\\CourseRuby")
#csvReader.books_collection.each do |book|
#    puts book
#end
#puts csvReader.total_value_in_stock
map = csvReader.number_of_each_isbn
map.keys.each do |key|
    puts "isbn: #{key} => #{map[key]}"
end
#books_collection.each do |book|
#    puts book
#end


#b1 = BookInStock.new("isbn1", 3)
#b2 = BookInStock.new("isbn2", 3.5)

#puts b2
#puts "ISBN di b1: #{b1.isbn}"
#puts "PRICE di b1: #{b1.price}"
#puts "ISBN di b2: #{b2.isbn}"
#puts "PRICE di b2: #{b2.price}"
#b1.price = 5
#puts "ISBN di b1: #{b1.isbn}"
#puts "PRICE di b1: #{b1.price}"

