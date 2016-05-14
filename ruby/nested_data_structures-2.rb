bookstore = {
  fiction: {
    book_info: {
      total_books: 750,
      average_price: 12
    },
    bestselling_authors: [
      "Ernest Hemingway",
      "Jack London",
      "Michael Chabon",
      "John Le Carre"
    ]
  },
  non_fiction: {
    book_info: {
      total_books: 1000,
      average_price: 15
    },
    bestselling_authors: [
      "Noam Chomsky",
      "Erik Larson",
      "Howard Zinn"
    ]
  },
  cookbooks: {
    book_info: {
      total_books: 375,
      average_price: 27
    },
    bestselling_authors: [
      "Ina Garten",
      "Padma Lakshmi",
      "John Besh",
      "Anthony Bourdain"
    ]
  },
  travel: {
    book_info: {
      total_books: 200,
      average_price: 17
    },
    bestselling_authors: []
  }
}

p bookstore[:travel][:book_info]
p bookstore[:non_fiction][:bestselling_authors].reverse
bookstore[:travel][:bestselling_authors].push("Bill Bryson")
p bookstore[:travel][:bestselling_authors]
bookstore[:fiction][:bestselling_authors][2] = "George R.R. Martin"
p bookstore[:fiction][:bestselling_authors]




