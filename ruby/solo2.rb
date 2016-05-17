# PSEUDOCODE

# CLASS -------------------
  # book

# ATTRIBUTES --------------

  # year_published
  # color
  # genre

# METHODS -----------------

  # turn_page -> takes page number as argument
  # read -> takes number of pages as an argument
  # close


class Book
  attr_reader :year_published
  attr_accessor :color, :genre

  def initialize(year_published)
    @year_published = year_published
    @color = color
    @genre = genre
  end

  def turn_page(page_number)
    puts "You have turned to page #{page_number}."
  end

  def read(number_of_pages)
    puts "You have successfully read #{number_of_pages} pages in this book."
  end

  def close
    puts "*closes book*"
  end
end

book = Book.new("History")
book.turn_page(244)
book.read(25)
book.close
book.color = "orange"
puts "This book is now #{book.color}"

# USER INTERFACE

book_collection = []

puts "Greetings, welcome to the book creator."
loop do 
puts "When you are finished creating your book(s), please type 'done'."
puts "What year was your book published?"
new_book_creator = gets.chomp
if new_book_creator == "done"
  break
end
puts "What color is your book?"
color_creator = gets.chomp

puts "What genre is the book?"
genre_creator = gets.chomp

new_book = Book.new(new_book_creator)
new_book.color = color_creator
new_book.genre = genre_creator

book_collection << new_book
end

book_collection.each do |books|
  puts "Here are the books you've created: "
  puts "Year published: #{books.year_published}, color: #{books.color}, genre: #{books.genre}"
end





