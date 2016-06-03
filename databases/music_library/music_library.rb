# Music Library Creator

# require gems
require 'sqlite3'

# create SQLite3 Database
db = SQLite3::Database.new("library.db")

# fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS music(
    id INTEGER PRIMARY KEY,
    artist VARCHAR(255),
    song VARCHAR(255),
    rating INT,
    explicit_lyrics BOOLEAN
  )
SQL

# create music table, if it doesn't exist already
db.execute(create_table_cmd)

# add a test artist, song, etc
# db.execute("INSERT INTO music (artist, song, rating, explicit_lyrics) VALUES ('Ghostface Killah', 'The Champ', 4, 'true')")

# write a method to add a song
def add_song(db, artist, song, rating, explicit_lyrics)
  db.execute("INSERT INTO music (artist, song, rating, explicit_lyrics) VALUES (?, ?, ?, ?)", [artist, song, rating, explicit_lyrics])
end

# write a method to delete a song
def delete_song(db, song)
  db.execute("DELETE FROM music WHERE song=(?)", [song])
end

# write a method to update a rating
def update_rating(db, rating, song)
  db.execute("UPDATE music SET rating=(?) WHERE song=(?)", [rating, song])
end

# write a method to print the whole music library
def print_library(db)
  music_library = db.execute("SELECT * FROM music")
  music_library.each do |music|
    p "#{music[1]} - #{music[2]}, with a rating of #{music[3]}, explicit lyrics present: #{music[4]}"
  end
end

print_library(db)


