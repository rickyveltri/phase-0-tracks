# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end



### RELEASE 0 ###
# 1. write a '/contact' route that displays an address
get '/contact' do
  contact = params[:contact]
  "Contact Address: #{contact}"
end

# 2. write a '/great_job' route that takes a person's name as a QUERY parameter and say "Good job, [person's name]!" If the parameter is not present, just say, "Good job!"
get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end


# 3. A route that uses route parameters to add two numbers and respond with the result.  Note: think about data types
get 'add' do
  number_1 = params[:number_1]
  number_2 = params[:number_2]



# 4.  OPTIONAL: Make a route that allows the user to search the database in some way


