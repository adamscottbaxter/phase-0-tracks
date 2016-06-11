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

get '/contact' do
  "351 Hubbard St<br>
  Suite 701 (7th floor)<br>
  Chicago, IL"
end

get '/great_job' do
  if params[:name]
    "Good job, #{params[:name]}!"
  else
    "Good job!"
  end
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

get '/:first/:second' do
  num1 = params[:first]
  num2 = params[:second]
  result = num1.to_i + num2.to_i
  "<h2>The sum of your two numbers is:</h2><br><h2>#{result}</h2>"
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
# Bonus: woot woot
get '/students/filter/:campus' do 
  location_students = db.execute("SELECT * FROM students WHERE campus='#{params[:campus]}'")
  location_response = ""
  location_students.each do |student|
    location_response  << "ID: #{student['id']}<br>"
    location_response << "Name: #{student['name']}<br>"
    location_response << "Age: #{student['age']}<br>"
    location_response << "Campus: #{student['campus']}<br><br>"
  end
  location_response
end
# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end