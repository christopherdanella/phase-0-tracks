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

  def initialize(year_published, genre)
    puts "Initializing Book instance..."
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

book = Book.new(688, "History")
book.turn_page(244)
book.read(25)
book.close



