# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# add campus table to db
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS campus(
    id INTEGER PRIMARY KEY,
    campus_name VARCHAR(255)
  )
SQL

#create new table in students database
db.execute(create_table_cmd)


# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources

get '/campus' do
  @students = db.execute("SELECT name, campus FROM students")
  erb :campus
end

# create new campus via
# a form
get '/campus/new' do
  erb :new_campus
end

post '/students' do
  db.execute("INSERT INTO campus (campus_name) VALUES (?)", [params['campus_name']])
  redirect '/'
end



