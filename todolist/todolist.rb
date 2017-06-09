require 'SQLite3'
require 'faker'

db = SQLite3::Database.new("todolist.db")

create_task_list= <<-SQL
  CREATE TABLE IF NOT EXISTS tasks(
    id INTEGER PRIMARY KEY,
    task VARCHAR(255),
    description VARCHAR(255),
    completed boolean
  );
SQL

db.execute(create_task_list)

def display_list(db)
	list = db.execute("SELECT * FROM tasks")
	list.each do |tasks|
		p "#{tasks['task']} and #{tasks['description']}"
	end
end

#Driver code
puts "Provide the task."
input_task = gets.chomp
puts "Provide a description for the task."
input_description = gets.chomp

db.execute("INSERT INTO tasks (task, description) VALUES ('#{input_task}', '#{input_description}')")

puts "Would you like to see the list?"
input = gets.chomp
if input == "yes"
	puts display_list(db)
elsif input == "no"
	puts "Thank you for using our program"
else
	puts "Please provide a valid input"
end	
		

