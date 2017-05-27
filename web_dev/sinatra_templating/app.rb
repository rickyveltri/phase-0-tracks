# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'


##### ## STUDENTS ## #####
db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end


##### ## FACULTY ## #####
db2 = SQLite3::Database.new("faculty.db")
db2.results_as_hash = true

# show faculty on the home page
get '/' do
  @faculty = db2.execute("SELECT * FROM faculty")
  erb :home
end

#Set up faculty erb
get '/faculty/new' do
  erb :new_faculty_member
end

#Create a new faculty member via form
post '/faculty' do
  db2.execute("INSERT INTO faculty (name, position, start_date) VALUES (?,?,?)", [params['name'], params['position'], params['start_date']])
  redirect '/'
end
