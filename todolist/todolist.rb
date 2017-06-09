require 'SQLite3'
require 'faker'

db = SQLite3::Database.new("todolist.db")
db.results_as_hash = true

create_task_list= <<-SQL
  CREATE TABLE IF NOT EXISTS tasks(
    id INTEGER PRIMARY KEY,
    task VARCHAR(255),
    description VARCHAR(255),
    completed VARCHAR (255)
  );
SQL

db.execute(create_task_list)

def display_list(db)
	list = db.execute("SELECT * FROM tasks")
	list.each do |row|
		puts "Task: #{row['task']} | Description: #{row['description']} | Completed: #{row['completed']}"
	end
end

def add_task(db)
	puts "Add the task."
	input_task = gets.chomp
	puts "Provide a description for the task."
	input_description = gets.chomp
	db.execute("INSERT INTO tasks(task, description, completed) VALUES ('#{input_task}', '#{input_description}', 'no')")
end 

#Driver code
puts "Would you like to see the list?"
input = gets.chomp
if input == "yes"
	display_list(db)
elsif input == "no"
	puts "Thank you for using our program"
else
	puts "Please provide a valid input"
end	

loop do		
puts "Would you like to add a task? Type list if you would like to see updated list. Type done when finished"
answer_task = gets.chomp
	if answer_task == "yes"
		updated_task = add_task(db)
		puts updated_task 
	elsif answer_task == "list"
		display_list(db)
		break
	elsif answer_task == "done"
		break
	else
		puts "Please provide valid input"
	end
end
